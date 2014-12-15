import json
import sys
import osut
import time
import getopt
import os
import re

num_occurrences = 0

def update_lambda(txt):
    matched = re.match(r'(.*)lambda(\(.*?\)*{).*([;|,].*}).*', txt, re.I|re.X)
    if matched:
        s = matched.group()
        largs = matched.group(2)
        lend = matched.group(3)
        fixed_args = ''
        
        amatch = re.match(r'(.*)(\).*\{)', largs, re.X)
        if amatch:
            larfix = amatch.group(1)
            larfixend = amatch.group(2)
            if larfix.find(',') > -1:
                ar = larfix.replace('(', '([')
                ar += ']'
                fixed_args = largs.replace(larfix, ar)
            else:
                fixed_args = largs

            fixed_args = fixed_args.replace(larfixend, ',')
            s = s.replace(largs, fixed_args)
            s = s.replace(lend, ')')
            return s  
        else:
            return txt #lambda has no args, so is probably broken anyway
    else:
        return txt #no lambda


def rewrite_odot_text(box):
    global num_occurrences
    b = box['box']
    mc = b['maxclass']
    
    if mc == 'o.compose' or mc == 'o.message' or mc == 'o.display' :
        try :
            text = b['text']
        except :
            return 0

        with open("odot_update_syntax.log.txt", 'a') as log:
            log.write(mc + " text:\n" + text + "\n")
            log.close
        print(mc + " text:\n" + text)
        
        s = osut.odot_syntax(str(text) + '\n') #<< main call
        
        with open("odot_update_syntax.log.txt", 'a') as log:
            log.write("REPLACEMENT:\n" + str(s) + '\n******************\n')
            log.close
        print("REPLACEMENT:\n" + str(s) + '\n******************\n')

        if s != '0_0_0' and s != '0_0_' : ## DO NOT UPDATE IF ERROR
            b['text'] = s
            num_occurrences += 1
    elif mc == 'o.expr.codebox' or check_o_expr(mc, b) :
        try :
            text = b['text']
        except :
            return 0

        with open("odot_update_syntax.log.txt", 'a') as log:
            log.write(mc + " text:\n" + text + "\n")
            log.close
        print(mc + " text:\n" + text)
        
        s = update_lambda(text)

        s = s.replace(';', ',')
        if s[-1:] == ',' :
            s = s[:-1]
        
        with open("odot_update_syntax.log.txt", 'a') as log:
            log.write("REPLACEMENT:\n" + str(s) + '\n******************\n')
            log.close
        print("REPLACEMENT:\n" + str(s) + '\n******************\n')

        if s != text :
            b['text'] = s 
            num_occurrences += 1


def rewrite_odot_syntax(box):
    b = box['box']
    mc = b['maxclass']
    

def check_o_expr(mc, b) :
    if mc == 'newobj' :
        try :
            text = b['text']
        except :
            return False
        if text[:6] == 'o.expr' or text[:6] == 'o.cond' or text[:4] == 'o.if':
            return True
    return False

def boxes(patcher) :
    for box in patcher['boxes']:
        sub = check_for_subpatcher(box['box'])
        if sub != 0:
            boxes(sub)
        else:
            rewrite_odot_text(box)

def check_for_subpatcher(box):
    if box['maxclass'] != 'newobj':
        return 0
    try:
        subpatcher = box['patcher']
    except:
        return 0;
    return subpatcher

#------------------------------------------------------------------------------------------------------------

def update_maxboxes(fn):
    filename = str(fn)
    data = ''

    with open("odot_update_syntax.log.txt", 'a') as log:
        log.write("+----------------------------------------------------+\n")
        log.write("FILE: " + filename + " " + time.strftime("%Y-%m-%d %H:%M") + "\n")
        log.write("+----------------------------------------------------+\n")
        log.close
    print("+----------------------------------------------------+")
    print("FILE: " + filename + " " + time.strftime("%Y-%m-%d %H:%M"))
    print("+----------------------------------------------------+\n")

    raw = ''

    #with open(filename) as input_file :
    #    raw = input_file.read()
    #    print("debug : " + str(raw))
    #    input_file.close

    with open(filename) as input_file :
        try:
            data = json.load(input_file)
            input_file.close
        except:     
            input_file.close
            print 'FAILED TO PARSE: ',filename
            return
    
    patcher = data['patcher']

    boxes(patcher) #<< 

    if num_occurrences != 0 :
        print("FILE CHANGED\n")
        with open(filename, 'w') as output_file :
            #output_file.writelines(raw)
            json.dump(data, output_file, sort_keys = False, indent = 4, ensure_ascii = False)
            output_file.close
        with open(filename, 'r') as input_file :
            tab_fix = input_file.read()
            input_file.close
        tab_fix = tab_fix.replace("    ", "\t")
        with open(filename, 'w') as final :
            final.write(tab_fix)
            final.close
    else :
        print("NO CHANGES\n")
        with open("odot_update_syntax.log.txt", 'a') as log:
            log.write("NO CHANGES\n")
            log.close

    with open("odot_update_syntax.log.txt", 'a') as log:
        log.write("+----------------------------------------------------+\n\n")
           
#------------------------------------------------------------------------------------------------------------
def main():
    opts, args = getopt.getopt(sys.argv[1:], "f:")
    for o, a in opts:
        if o == '-f':
            if(a == 'this'):
                path = os.path.dirname(os.path.realpath(__file__))
            elif(a):
                path = a
            else:
                print '-f must have argument, either "this" or a valid folder path'
                return
                
            files = os.listdir(path)
            for f in files:
                check = f.find('maxpat', len(f)-6)
                check2 = f.find('maxhelp', len(f)-7)
                if check > -1 or check2 > -1:
                    if path[-1:] != '/':
                        path+='/'
                    update_maxboxes(path+f)
            return
                
    if len(args) > 0:            
        for f in args:
            check = f.find('maxpat', len(f)-6)
            check2 = f.find('maxhelp', len(f)-7)
            if check > -1 or check2 > -1:
                update_maxboxes(f)
    else:
        print 'no input file arguments'

if __name__ == '__main__':
    main()