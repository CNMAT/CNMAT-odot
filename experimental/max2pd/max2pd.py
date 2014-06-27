import json
import sys
import base64

pdp = {
    'newobj'  : 'obj',
    'message' : 'msg',
    'comment' : 'text'
} ## this dictionary is declared outside a function so that we don't keep rebuilding it

def get_json_data(filename):
    with open(filename) as data_file:
        data = json.load(data_file)
        return data['patcher']

def get_patcher_rect(patcher):
    rect = patcher['rect']
    result = "#N canvas {0} {1} {2} {3} 10;".format(int(rect[0]), int(rect[1]), int(rect[2]), int(rect[3]))
    return result

def get_pd_object(box):
    b = box['box']
    mc = b['maxclass']
    dim = b['patching_rect']
    if mc == 'newobj' or mc == 'message' or mc == 'comment':
        result = '#X {0} {1} {2} {3}, f {4};'.format(pdp[mc], int(dim[0]), int(dim[1]), b['text'], dim[2] / 5.5)
        return result
    if mc == 'flonum' or mc == 'number':
        minimum = maximum = 0
        try:
            minimum = b['minumum']
        except:
            mininum = 0
        try:
            maximum = b['maximum']
        except:
            maximum = 0
        result = '#X floatatom {0} {1} {2} {3} {4} 0 - - -, f {2};'.format(int(dim[0]), int(dim[1]), dim[2] / 5.5, minimum, maximum)
        return result
    if mc == 'o.message':
        text = ""
        try:
            text = bytes(b['text'], 'utf-8')
        except:
            text = ""
        result = "#X obj {0} {1} {2} {3} 10 binhex b#{4}20;".format(int(dim[0]), int(dim[1]), mc, dim[2], base64.b16encode(text))
        return result
    if mc == 'toggle':
        result = "#X obj {0} {1} tgl {2} 0 empty empty empty 17 7 0 10 -262144 -1 -1 0 1;".format(int(dim[0]), int(dim[1]), int(dim[2]) )
        return result
    if mc == 'button':
        result = "#X obj {0} {1} bng {2} 250 50 0 empty empty empty 17 7 0 10 -262144 -1 -1;".format(int(dim[0]), int(dim[1]), int(dim[2]))
        return result
    return "#X obj {0} {1} {2};".format(int(dim[0]), int(dim[1]), mc) ## the default that works for inlets & outlets

def boxes(patcher, object_ids):
    result = []
    for box in patcher['boxes']:
        sub = check_for_subpatcher(box['box'])
        if sub != 0:
            r = write_subpatcher(sub, box)
        else:
            r = get_pd_object(box)
        if (r):
            object_ids.append(box['box']['id'])
            result.append(r)
    return result

def patch_cords(patcher, object_ids):
    cords = patcher['lines']
    result = []
    for cord in cords:
        source_name = cord['patchline']['source'][0]
        source_outlet = cord['patchline']['source'][1]
        destination_name = cord['patchline']['destination'][0]
        destination_inlet = cord['patchline']['destination'][1]
        to_add = "#X connect {0} {1} {2} {3};".format(object_ids.index(source_name), source_outlet, object_ids.index(destination_name), destination_inlet)
        result.append(to_add)
    return result

def check_for_subpatcher(box):
    if box['maxclass'] != 'newobj':
        return 0
    try:
        subpatcher = box['patcher']
    except:
        return 0;
    return subpatcher

def write_subpatcher(subpatcher, subbox):
    sub_object_ids = []
    rect = subpatcher['rect']
    text = subbox['box']['text']
    pos = subbox['box']['patching_rect']
    name = text[2:]
    result = "#N canvas {0} {1} {2} {3} {4} 0;\n".format(int(rect[0]), int(rect[0]), int(rect[0]), int(rect[3]), name)
    sub_objects = boxes(subpatcher, sub_object_ids);
    for o in sub_objects:
        result += o + "\n"
    for p in patch_cords(subpatcher, sub_object_ids):
        result += p + "\n"
    result += "#X restore {0} {1} pd {2};".format(int(pos[0]), int(pos[1]), name)
    return result


#------------------------------------------------------------------------------------------------------------

filename = str(sys.argv[1])
object_ids = []
out = open(sys.argv[2], 'w')
patcher = get_json_data(filename)
out.write(get_patcher_rect(patcher) + "\n")
objects = boxes(patcher, object_ids)
for o in objects:
    out.write(o + "\n")
for p in patch_cords(patcher, object_ids):
    out.write(p + "\n")
out.close()

#------------------------------------------------------------------------------------------------------------