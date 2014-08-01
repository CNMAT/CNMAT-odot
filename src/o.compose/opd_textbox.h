#ifndef odot_opd_textbox_h
#define odot_opd_textbox_h

typedef struct _opd_textbox
{
    t_object ob;
    t_object *parent;
    
    t_glist *glist;
    
    char *text;
    char *hex;
    char *tcl_namespace;
    char *receive_name;
    char *iolets_tag;
    
    uint16_t    textediting;
    uint16_t    c_bind;
    
    uint16_t    editmode;
    uint16_t    selected;
    uint16_t    displacing;
    uint16_t    firsttime;
    uint16_t    firstdisplace;
    
    uint16_t    forceredraw;
    
    uint16_t    parse_error;
    uint16_t    cmdDown;
    
    uint16_t    mouseDown;
    int         xref;
    
    int         yscroll;
    
    int softlock;
    int streamflag;
    int in_new_flag;
    int height;
    int width;

    t_gotfn     draw_fn;
    t_gotfn     gettext_fn;
    
    t_gotfn     delete_fn;
    t_gotfn     click_fn;
 /*
    t_gotfn     p_getrect;
    t_gotfn     p_displace;
    t_gotfn     p_select;

    t_gotfn     p_activate;
    t_gotfn     p_vis;
    t_gotfn     p_save;
   */
} t_opd_textbox;


void opd_textbox_nofocus_callback(t_opd_textbox *t);


void opd_textbox_drawParent(t_opd_textbox *t, int firstime)
{
    if(t->draw_fn)
        t->draw_fn(t->parent, firstime);
    else
        error("don't forget to set the textbox draw_fn in the parent object!");
    
}

void opd_textbox_setHeight(t_opd_textbox *t, float y)
{
    int h = ((int)y - text_ypix(t->parent, t->glist) + 5);
    h = (h > 23) ? h : 23;
    
    //post("%x %s y %f te_ypix %d h %d", t, __func__, y, text_ypix(t->parent, t->glist), h);
    t->softlock = 0;
    
    if((h != t->height) || t->forceredraw)
    {
        t->height = h;
        post("%x %s height set to %d firsttime %d", t, __func__, t->height, t->firsttime);
        opd_textbox_drawParent(t, t->firsttime);
        
        t->forceredraw = 0;
        
    } else {
        ;
        //post("%x %s height == h && !redraw ", x, __func__);
    }
}

void opd_textbox_getRectAndDraw(t_opd_textbox *t, int forceredraw)
{
//    post("%x %s", t, __func__);
    t->forceredraw = forceredraw;
    t->softlock = 1;
    sys_vgui("pdsend \"%s setheight [lindex [.x%lx.c bbox text%lx] 3]\" \n", t->receive_name, glist_getcanvas(t->glist), (long)t);

}

void opd_textbox_resize_mousedown(t_opd_textbox *t)
{
    //  post("%s", __func__);
    t->mouseDown = 1;
    t->xref = t->width;
}

void opd_textbox_resize_mousemove(t_opd_textbox *t, float dx, float dy)
{
    if(t->mouseDown && t->editmode)
    {
        int width = (dx + t->xref);
        width = (width < 50) ? 50 : width;
        t->width = width;
        
        opd_textbox_getRectAndDraw(t, 1);
        
    }
}

void opd_textbox_resize_mouseup(t_opd_textbox *t)
{
    t->mouseDown = 0;
    opd_textbox_drawParent(t, 0);
}


void opd_textbox_bind_text_events(t_opd_textbox *t)
{
    t_canvas *canvas = glist_getcanvas(t->glist);
    sys_vgui("bind .x%lx.t%lxTEXT <Key> {+pdsend {%s key %%N }}\n", canvas, (long)t, t->receive_name);
    sys_vgui("bind .x%lx.t%lxTEXT <KeyRelease> {+pdsend {%s keyup %%N }}\n",  canvas, (long)t, t->receive_name);
    
    //focusout for clicking to other windows other than the main canvas
    sys_vgui("bind .x%lx.t%lxTEXT <FocusOut> {+pdsend {%s nofocus }}\n", canvas, (long)t, t->receive_name);
    
    if(!t->c_bind)
    {
        //        post("%p %s no bind", x, __func__);
        sys_vgui("bind .x%lx.c <Button-1> {+pdsend {%s outsideclick }}\n", canvas, t->receive_name);
        sys_vgui("bind .x%lx.c <MouseWheel> {+pdsend {%s mousewheel %%D }}\n", canvas, t->receive_name);
        
        t->c_bind = 1;
    }
 
    sys_vgui("::pdwindow::post \"[bind .x%lx.c <Key>] \n\"\n", canvas);
}


void opd_textbox_getTextAndCreateEditor(t_opd_textbox *t, int firsttime)
{
    
    int x1 = text_xpix(t->parent, t->glist);
    int y1 = text_ypix(t->parent, t->glist);
    
    post("%x %s %d x1 %d y1 %d x2 %d y2 %d", t, __func__, firsttime, x1, y1, x1+t->width, y1+t->height);
    t_canvas *canvas = glist_getcanvas(t->glist);
    
    if(firsttime)
    {
        //        post("%lx %lx %lx\n", canvas, (long)t, (long)&(x->ob) );
        glist_noselect(t->glist);
        sys_vgui(".x%lx.c itemconfigure text%lx -fill white \n", canvas, (long)t);
        sys_vgui("text .x%lx.t%lxTEXT -font {{%s} %d %s} -undo true -fg \"black\" -bg \"white\" -takefocus 1 -state normal -highlightthickness 0 -wrap word -spacing3 0 \n", canvas, (long)t, sys_font, glist_getfont(t->glist), sys_fontweight ); //-tabs {%d left} , glist_getfont(t->glist) * ?
        
        sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)t, x1+4, canvas, y1+4, canvas, t->width-15, t->height-6);
        
        if(t->text)
            sys_vgui(".x%lx.t%lxTEXT insert 1.0 [subst -nobackslash -nocommands -novariables {%s} ] \n", canvas, (long)t, t->text);
        
        sys_vgui("event generate .x%lx.t%lxTEXT <1> -x %d -y %d \n", canvas, (long)t, x1 + 10, y1 + 5);
        sys_vgui("event generate .x%lx.t%lxTEXT <ButtonRelease-1> -x %d -y %d \n", canvas, (long)t, x1 + 10, y1 + 5);
        sys_vgui(".x%lx.t%lxTEXT tag add sel 0.0 end\n", canvas, (long)t);
        
        opd_textbox_bind_text_events(t);
        
    }
    else
    { // pretty sure that this never gets called
        error("%s pretty sure that this never gets called? please tell rama if you see this!", __func__);
        sys_vgui("place .x%lx.t%lxTEXT -x %d -y %d -width %d -height %d\n", canvas, (long)t, x1+4, y1+4, t->width-15, t->height-10);
    }
    
    t->textediting = 1;
    opd_textbox_getRectAndDraw(t, 1);
}


void opd_textbox_storeTextAndExitEditorTick(t_opd_textbox *t)
{
    
    t_canvas *canvas = glist_getcanvas(t->glist);
    opd_textbox_nofocus_callback(t);
    sys_vgui(".x%lx.c itemconfigure text%lx -fill black -width %d -text [subst -nobackslash -nocommands -novariables [string trimright {%s} ]] \n", canvas, (long)t->parent, t->width-15, t->text);
    sys_vgui("destroy .x%lx.t%lxTEXT\n", canvas, (long)t);
    
    t->textediting = 0;
    
    opd_textbox_getRectAndDraw(t, 1);
    
}

void opd_textbox_storeTextAndExitEditor(t_opd_textbox *t)
{
    
    if(t->textediting){
        sys_vgui("sendchunks [.x%lx.t%lxTEXT get 0.0 end] %s \n", glist_getcanvas(t->glist), (long)t, t->receive_name); //sendchunks
        //receive happens on next tick
    }
    
}

void opd_textbox_insideclick_callback(t_opd_textbox *t)
{
    t_canvas *canvas = glist_getcanvas(t->glist);
    if(canvas->gl_edit)
    {
        //this might be "activate" versus "select"
        //activate is text edit mode and select is move or delete mode (resize too)
        
        sys_vgui("focus .x%lx.t%lxTEXT\n", canvas, (long)t);
        glist_noselect(t->glist);
        gobj_select((t_gobj *)t, t->glist, 1);
        if(!t->c_bind)
        {
            sys_vgui("bind .x%lx.c <Button-1> {+pdsend {%s outsideclick }}\n", canvas, t->receive_name);
            t->c_bind = 1;
        }
    } else {
        sys_vgui("focus .x%lx.c\n", canvas);
        opd_textbox_storeTextAndExitEditor(t);
        
        if(t->click_fn)
            t->click_fn(t->parent);
        
    }
    
}

void opd_textbox_outsideclick_callback(t_opd_textbox *t)
{
  //  post("%p %s", t, __func__);
    
    t->c_bind = 0;
    t_canvas *canvas = glist_getcanvas(t->glist);

    sys_vgui("bind .x%lx.c <Button-1> $::%s::canvas%lxBUTTONBINDING\n", canvas, t->tcl_namespace, canvas);
    sys_vgui("bind .x%lx.c <MouseWheel> $::%s::canvas%lxSCROLLBINDING \n", canvas, t->tcl_namespace, canvas );
    
    sys_vgui("focus .x%lx.c\n", canvas);
    gobj_select(&t->parent->te_g, t->glist, 0); //<<    opd_textbox_storeTextAndExitEditor(x); called from select function
    
    
    //same for <Key>
    t->selected = 0;
    t->cmdDown = 0; //in case of esc exit
    
    
}
//called when clicking from one object to another without clicking on the empty canvas first
void opd_textbox_nofocus_callback(t_opd_textbox *t)
{
    t->c_bind = 0;
    t_canvas *canvas = glist_getcanvas(t->glist);
    sys_vgui("bind .x%lx.c <Button-1> $::%s::canvas%lxBUTTONBINDING\n", canvas, t->tcl_namespace, canvas);
    sys_vgui("bind .x%lx.c <MouseWheel> $::%s::canvas%lxSCROLLBINDING \n", canvas, t->tcl_namespace, canvas );
    
    sys_vgui("::pd_bindings::global_bindings \n");
    
//    sys_vgui("bind .x%lx.c <Key> $::%s::canvas%lxKEYBINDING \n", canvas, t->tcl_namespace, canvas);

    gobj_select(&t->parent->te_g, t->glist, 0);
}


void opd_textbox_mousewheel_callback(t_opd_textbox *t)
{
    opd_textbox_nofocus_callback(t);
}

void opd_textbox_keyup_callback(t_opd_textbox *t, t_symbol *s, int argc, t_atom *argv)
{
    
    if(argc == 1)
    {
        if(argv->a_type == A_FLOAT)
        {
            int k = (int)atom_getfloat(argv);
            
            if(k == 65511)
            {
                t->cmdDown = 0;
            }
        }
    }
}

void opd_textbox_key_callback(t_opd_textbox *t, t_symbol *s, int argc, t_atom *argv)
{
    // in order to expand textbox when typing carrige return, need to *not trim trailing newline*
    //
    printargs(argc, argv);
    
    if(argc == 1)
    {
        if(argv->a_type == A_FLOAT)
        {
            //post("%x %s %d", x,  __func__, (int)atom_getfloat(argv));
            int k = (int)atom_getfloat(argv);
            switch (k) {
                case 65307: //esc
                    opd_textbox_outsideclick_callback(t);
                    return;
                    break;
                case 65511: // cmd
                    t->cmdDown = 1;
                    break;
                    //                case 65293: // return
                    //                    break;
                default:
                    break;
            }
            
            if(t->cmdDown){
                if(k >= 49 && k <= 53)
                {
                    opd_textbox_outsideclick_callback(t);
                    return;
                }
                else
                {
                    switch (k) {
                        case 66:
                        case 84:
                        case 78:
                        case 86:
                        case 72:
                        case 68:
                        case 73:
                        case 85:
                        case 67:
                            opd_textbox_outsideclick_callback(t);
                            break;
                        default:
                            break;
                    }
                }
            } else {
                sys_vgui(".x%lx.c itemconfigure text%lx -width %d -text [subst -nobackslash -nocommands -novariables [.x%lx.t%lxTEXT get 0.0 end-1c] ] \n", glist_getcanvas(t->glist), (long)t, t->width-15, glist_getcanvas(t->glist), (long)t);
                opd_textbox_getRectAndDraw(t, 0);
            }
            
            
        }
        
    }
    
}


int opd_textbox_hex_to_int(char c){
    if(c >=97)
        c=c-32;
    int first = c / 16 - 3;
    int second = c % 16;
    int result = first*10 + second;
    if(result > 9) result--;
    return result;
}

int opd_textbox_hex_to_ascii(char c, char d){
    int high = opd_textbox_hex_to_int(c) * 16;
    int low = opd_textbox_hex_to_int(d);
    return high+low;
}

void opd_textbox_setTextFromHex(t_opd_textbox *t, char *hex)
{
    // called when text comes in from TCL/TK or from the saved PD file
    int hexlen = strlen(hex);
    int length = hexlen / 2;
    
    if(length >= OMAX_PD_MAXSTRINGSIZE){
        post("max o_message string size = %d", OMAX_PD_MAXSTRINGSIZE);
        return;
    }
    
    int j, k;
    int c;
    
    char buf[length*2];
    memset(buf, '\0', length*2);
    
    for(j = 0, k = 0; j < length; j++, k=j*2){
        c = opd_textbox_hex_to_ascii(hex[k], hex[k+1]);
        buf[j] = (char)c;
        
    }
    buf[length] = '\0'; //<< not sure if this is necessary
    
    memset(t->text, '\0', OMAX_PD_MAXSTRINGSIZE);
    strcpy(t->text, buf);
    
   // post("%s %s", __func__, t->text);
}

void opd_textbox_setTextFromString(t_opd_textbox *t, char *str)
{
    if(strlen(str) >= OMAX_PD_MAXSTRINGSIZE){
        post("max o_message string size = %d", OMAX_PD_MAXSTRINGSIZE);
        return;
    }
    
    memset(t->text, '\0', OMAX_PD_MAXSTRINGSIZE);
    strcpy(t->text, str);
    
    //post("%x %s %s", t, __func__, t->text);

    //n.b. convertion to hex done on save
}

void opd_textbox_setHexFromText(t_opd_textbox *t, char *str)
{
    
    memset(t->hex, '\0', OMAX_PD_MAXSTRINGSIZE*2);
    
    int length = strlen(str);
    if(length == 0)
        return;
    
    char *pin = str;
    const char * hex = "0123456789ABCDEF";
    char *pout = t->hex;
    int i = 0;
    for(; i < strlen(str)-1; ++i)
    {
        *pout++ = hex[(*pin>>4)&0xF];
        *pout++ = hex[(*pin++)&0xF];
    }
    *pout++ = hex[(*pin>>4)&0xF];
    *pout++ = hex[(*pin)&0xF];
    *pout = 0;
}


void opd_textbox_textbuf(t_opd_textbox *t, t_symbol *msg, int argc, t_atom *argv)
{
    //    post("%p %s \n", t, __func__);
    //    printargs(argc, argv);
    
    if(argc >= 2)
    {
        if(argv->a_type == A_SYMBOL)
        {
            t_symbol *s = atom_getsymbol(argv);
            
            if(s == gensym("hex") || s == gensym("binhex"))
            {
                
                int i, charcount = 0;
                if(!t->streamflag)
                {
                    t->streamflag = 1;
                    memset(t->hex, '\0', OMAX_PD_MAXSTRINGSIZE * 2);
                }
                char *buf = NULL;
                
                for( i = 1; i < argc; i++ )
                {
                    if(atom_getsymbol(argv+i) != gensym(t->receive_name))
                    {
                        
                        buf = atom_getsymbol(argv+i)->s_name;
                        
                        if(s == gensym("binhex") && buf[0] == 'b' && buf[1] == '#')
                        {
                            buf += 2;
                        }
                        
                        charcount = strlen(buf) + strlen(t->hex);
                        
                        if(charcount < (OMAX_PD_MAXSTRINGSIZE * 2))
                        {
                            strcat(t->hex, buf);
                        }
                        else
                        {
                            error("maximum hex buffers size is set to %d", OMAX_PD_MAXSTRINGSIZE*2);
                            return;
                        }
                        
                    } else {
                        if(t->textediting)
                            opd_textbox_storeTextAndExitEditorTick(t);
                        
                        opd_textbox_setTextFromHex(t, t->hex);
                        
                        if(t->gettext_fn)
                            t->gettext_fn(t->parent); //converts to text to bundle, reformats after parsing

                        t->streamflag = 0;
                        break;
                        
                    }
                }
                
                //                post("%s %s %d", __func__, x->hex, __LINE__);
                
                
            }
            else
            {}//error
        }
    }
    
}

void opd_textbox_resetText(t_opd_textbox *t, char *s)
{
    t->parse_error = 0;
    
    if(!t->firsttime)
        canvas_dirty(t->glist, 1);
    
    opd_textbox_setTextFromString(t, s);
    
    if(t->textediting)
    {
        //do what if reset comes while editing?
        //probably throw out your text, as punishment for editing while sending stuff to your object
        opd_textbox_storeTextAndExitEditorTick(t);
    }
    else if(glist_isvisible(t->glist))
    {
        //post("%s %d", __func__, glist_isvisible(t->glist));
        sys_vgui(".x%lx.c itemconfigure text%lx -width %d -text [subst -nobackslash -nocommands -novariables [string trimright {%s} ]] \n", glist_getcanvas(t->glist), (long)t, t->width-15, t->text);
        
        opd_textbox_getRectAndDraw(t, 1);
    }
}

int opd_textbox_shouldDraw(t_opd_textbox *x)
{
    return (!x->in_new_flag && !x->softlock);
}

int opd_textbox_drawElements(t_opd_textbox *x, int x1, int y1, int x2, int y2, int firsttime)
{
   // post("%x %s %d %d %d %d", x, __func__, x1, y1, x2, y2);
    
    t_glist *glist = x->glist;
    t_canvas *canvas = glist_getcanvas(glist);
    
   // post("%x %s isvisible %d isgraph %d gl_editor %d", x, __func__, glist_isvisible(glist), glist_isgraph(glist), canvas->gl_editor);
    
    
    if (firsttime)
    {
      //  post("%x %s FIRST VIS height %d y1 %d y2 %d \n", x, __func__, x->height, y1, y2);
        
        //fist time: create canvas elements, then add text, then get text height, and re-draw
        //post("%s drawing firsttime", __func__);
        sys_vgui("namespace eval ::%s [list set canvas%lxBUTTONBINDING [bind .x%lx.c <Button-1>]] \n", x->tcl_namespace, canvas, canvas);
        sys_vgui("namespace eval ::%s [list set canvas%lxKEYBINDING [bind .x%lx.c <Key>]] \n", x->tcl_namespace, canvas, canvas);
        sys_vgui("namespace eval ::%s [list set canvas%lxSCROLLBINDING [bind .x%lx.c <MouseWheel>]] \n", x->tcl_namespace, canvas, canvas);
        
          sys_vgui("::pdwindow::post \" FOOOOOOOOOOOO [bind .x%lx.c <Button-1>] \n\"\n", canvas);
        
        //create resize handle canvas, and bind to mouse
        sys_vgui("canvas .x%lx.h%lxHANDLE -width 10 -height 10 \n", canvas, (long)x);
        sys_vgui(".x%lx.h%lxHANDLE create rectangle %d %d %d %d -outline \"white\" -fill \"white\" -tags %lxHANDLE \n",canvas, (long)x, 0, 0, 10, 10, (long)x);
        sys_vgui("place .x%lx.h%lxHANDLE -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x2-4, canvas, y2-4, canvas, 10, 10);
        sys_vgui("bind .x%lx.h%lxHANDLE <Button-1> {+pdsend {%s resize_mousedown}} \n", canvas, (long)x, x->receive_name);
        sys_vgui("bind .x%lx.h%lxHANDLE <Motion> {+pdsend {%s resize_mousemove %%x %%y }} \n", canvas, (long)x, x->receive_name);
        sys_vgui("bind .x%lx.h%lxHANDLE <ButtonRelease-1> {+pdsend {%s resize_mouseup }} \n", canvas, (long)x, x->receive_name);
        
        
        //create text display
        sys_vgui(".x%lx.c create text %d %d -anchor nw -width %d -font {{%s} %d %s} -tags text%lx -text [subst -nobackslash -nocommands -novariables [string trimright {%s} ]] -fill \"black\" \n", canvas, x1+5, y1+5, x->width-15, sys_font, glist_getfont(glist), sys_fontweight, (long)x, x->text);
        
        // get height of text bbox, send to "setheight" to set height and redraw in the case of cmd-d duplicate, this gets called first, and then is displaced, so the bbox value is actually pre-displacement, see setheight function above
        opd_textbox_getRectAndDraw(x, 1);
        
        x->firsttime = 0;
        
    }
    else
    {
        post("%x %s REDRAW height %d y1 %d y2 %d mousedown %d selected %d\n", x, __func__, x->height, y1, y2, x->mouseDown, x->selected);

        if(x->mouseDown)
        {
            ;//make canvas sprite here to display when resizing, since handle canvas needs to freeze for best mouse action
        }
        else
        {
            sys_vgui("place .x%lx.h%lxHANDLE -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x2-4, canvas, y2-4, canvas, 10, 10);
        }
        
        if (x->textediting)
        {
            sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x1+4, canvas, y1+4, canvas, x->width-16, x->height-6);
        }
        else if (x->text[0] != '\0')
        {
            sys_vgui(".x%lx.c itemconfigure text%lx -fill \"black\" -width %d -text [subst -nobackslash -nocommands -novariables [string trimright {%s} ]] \n", canvas, (long)x, x->width-16, x->text);
            
            //[regsub -all -line {^[\t]+} {%s} \"    \" ] << replace \t with spaces
            
            //do syntax highlighting here?
        }
        
    }
    
    if(x->editmode)
    {
        sys_vgui(".x%lx.h%lxHANDLE itemconfigure %lxHANDLE -outline \"white\" -fill %s \n", canvas, (long)x, (long)x, ((x->selected && !x->mouseDown) ? "#006699" : "white"));
        
        if(x->selected || x->textediting || x->mouseDown)
            sys_vgui(".x%lx.h%lxHANDLE configure -cursor fleur \n", canvas, (long)x);
        else
            sys_vgui(".x%lx.h%lxHANDLE configure -cursor hand2 \n", canvas, (long)x);
    
    }
    else
        sys_vgui(".x%lx.h%lxHANDLE configure -cursor left_ptr \n", canvas, (long)x);


    return 1;
}

static void opd_textbox_delete(t_opd_textbox *x, t_glist *glist)
{
    t_canvas *canvas = glist_getcanvas(glist);
    
    sys_vgui(".x%lx.c delete text%lx \n", canvas, (long)x);
    sys_vgui("destroy .x%lx.h%lxHANDLE\n", canvas, (long)x);
    
    if(x->textediting)
        sys_vgui("destroy .x%lx.t%lxTEXT\n", canvas, (long)x);
    
}


static void opd_textbox_vis(t_opd_textbox *x, t_glist *glist, int vis)
{
    
    post("%p %s vis %d firsttime %d visable %d", x, __func__, vis, x->firsttime, glist_isvisible(glist));
//    post("%s %p xglist %x glist %x\n", __func__, x, x->glist, glist);

    if(vis)
    {
        
        if(!x->firsttime && glist_isgraph(glist))
        {
//            post("GOP vis");
            opd_textbox_delete(x, glist); // << delete text and custom canvases

            // it seems for some reason, we only have to delete the custom cavases, so commenting this out for now:
//            if(x->delete_fn)
//                x->delete_fn(x->parent, glist); //<< but is this delete necessary for GOP? keep an eye on this
            
            x->firsttime = 1;
        }
        
        if(glist_isvisible(glist))
        {
            opd_textbox_drawParent(x, 1);
        }
        else  //not visible when loading from disk and from abstraction
        {
            x->firsttime = 1;
            opd_textbox_delete(x, glist); // make sure custom canvases are refreshed
            opd_textbox_getRectAndDraw(x, 1);
        }
        
        if(x->textediting)
        {
            opd_textbox_getTextAndCreateEditor(x, 1);
        }
        
    }
    else
    {
        //if(!x->firsttime)
        {
            if(x->delete_fn)
                x->delete_fn(x->parent, glist); //<< this delete necessary for GOP? keep an eye on this
        }
    }
}

static void opd_textbox_displace(t_opd_textbox *x, t_glist *glist, int dx, int dy)
{
    post("%x %s mousedown %d dx %d dy %d", x, __func__, x->mouseDown, dx, dy);
    
    int x2 = x->parent->te_xpix + x->width;
    int y2 = x->parent->te_ypix + x->height;
    
    t_canvas *canvas = glist_getcanvas(glist);

    sys_vgui(".x%lx.c move text%lx %d %d\n", canvas, (long)x, dx, dy);
    
    if (!x->mouseDown)
        sys_vgui("place .x%lx.h%lxHANDLE -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x2-4, canvas, y2-4, canvas, 5, 5);
    
    if(x->textediting)
    {
        sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x->ob.te_xpix+4, canvas, x->ob.te_ypix+4, canvas, x->width-10, x->height-10);
        
    }
    
    t_object *ob = pd_checkobject(&x->parent->te_pd);
    if (ob){
        glist_drawiofor(glist, ob, 0, x->iolets_tag, ob->te_xpix, ob->te_ypix, x2, y2);
        canvas_fixlinesfor(glist, ob);
    }
    
    if(x->firstdisplace)
    {
        opd_textbox_getRectAndDraw(x, 1);
        x->firstdisplace = 0;
    }
    
    
}

void opd_textbox_select(t_opd_textbox *x, t_glist *glist, int state)
{

 //   post("%p %s state %d selected %d textediting %d <<pre", x, __func__, state, x->selected, x->textediting);
    
    x->selected = state;

    if(!state && x->textediting)
        opd_textbox_storeTextAndExitEditor(x);

    opd_textbox_drawParent(x, 0);
    
}

static void opd_textbox_activate(t_opd_textbox *x, t_glist *glist, int state)
{
    post("%s %d", __func__, state);
    x->mouseDown = 0;
    
    if(state)
        opd_textbox_getTextAndCreateEditor(x, 1);
    else
        opd_textbox_storeTextAndExitEditor(x);
    
}


void opd_textbox_free(t_opd_textbox *t)
{
    post("%s", __func__);
    
    free(t->text);
    free(t->hex);
    free(t->tcl_namespace);
    free(t->iolets_tag);
    
    pd_unbind(&t->ob.ob_pd, gensym(t->receive_name));
    free(t->receive_name);
    
}

t_opd_textbox *opd_textbox_new(t_class *c)
{
    t_opd_textbox *t = NULL;
    t = (t_opd_textbox *)pd_new(c);
    if(t)
    {
     //   post("%x %s", t, __func__);
        t->glist = NULL;
        t->c_bind = 0;
        t->softlock = 0;
        
        t->draw_fn = NULL;
        t->gettext_fn = NULL;
/*
        t->p_vis = NULL;
        t->p_activate = NULL;
        t->click_fn = NULL;
        t->delete_fn = NULL;
        t->p_displace = NULL;
        t->p_getrect = NULL;
        t->p_select = NULL;
*/
        
        t->width = 100;
        t->height = -1;
        t->firsttime = 1;
        t->firstdisplace = 1;
        t->forceredraw = 0;
        t->parse_error = 0;
        t->streamflag = 0;
        t->yscroll = 0;
        
        char buf[MAXPDSTRING];
        
        sprintf(buf, "%lxIOLETS", (long unsigned int)t);
        t->iolets_tag = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        if(t->iolets_tag == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(t->iolets_tag, buf);
        
        sprintf(buf,"opd_textbox%lx",(long unsigned int)t);
        t->tcl_namespace = NULL;
        t->tcl_namespace = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        if(t->tcl_namespace == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(t->tcl_namespace, buf);
        sprintf(buf,"#%s", t->tcl_namespace);
        
        t->receive_name = NULL;
        t->receive_name = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        if(t->receive_name == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(t->receive_name, buf);
        
        //post("%s %s", __func__, t->receive_name);
        
        pd_bind(&t->ob.ob_pd, gensym(t->receive_name));
        
        t->text = NULL;
        t->text = (char *)malloc(OMAX_PD_MAXSTRINGSIZE * sizeof(char));
        if(t->text == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        t->text[0] = '\0';
        
        t->hex = NULL;
        t->hex = (char *)malloc(OMAX_PD_MAXSTRINGSIZE * 2 * sizeof(char));
        if(t->hex == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }

    }
    
    
    return t;

}

t_class *opd_textbox_classnew(void)
{
    t_class *c = class_new(gensym("opd_textbox"), NULL, NULL, sizeof(t_opd_textbox), CLASS_NOINLET, 0);
    
    class_addmethod(c, (t_method)opd_textbox_textbuf, gensym("textbuf"), A_GIMME, 0);
    class_addmethod(c, (t_method)opd_textbox_insideclick_callback, gensym("insideclick"), 0);
    class_addmethod(c, (t_method)opd_textbox_outsideclick_callback, gensym("outsideclick"), 0);
    class_addmethod(c, (t_method)opd_textbox_nofocus_callback, gensym("nofocus"), 0);
    class_addmethod(c, (t_method)opd_textbox_key_callback, gensym("key"), A_GIMME, 0);
    class_addmethod(c, (t_method)opd_textbox_keyup_callback, gensym("keyup"), A_GIMME, 0);
    class_addmethod(c, (t_method)opd_textbox_resize_mousedown, gensym("resize_mousedown"), 0);
    class_addmethod(c, (t_method)opd_textbox_resize_mousemove, gensym("resize_mousemove"), A_DEFFLOAT, A_DEFFLOAT, 0);
    class_addmethod(c, (t_method)opd_textbox_resize_mouseup, gensym("resize_mouseup"), 0);
    class_addmethod(c, (t_method)opd_textbox_mousewheel_callback, gensym("mousewheel"), 0);
    class_addmethod(c, (t_method)opd_textbox_setHeight, gensym("setheight"), A_DEFFLOAT, 0);

    /*
    c->opd_textbox_widget.w_getrectfn = opd_textbox_getrect;
    c->opd_textbox_widget.w_displacefn = opd_textbox_displace;
    c->opd_textbox_widget.w_selectfn = opd_textbox_select;
    c->opd_textbox_widget.w_deletefn = opd_textbox_delete;
    c->opd_textbox_widget.w_clickfn = opd_textbox_click;
    c->opd_textbox_widget.w_activatefn = opd_textbox_activate;
    c->opd_textbox_widget.w_visfn = opd_textbox_vis;
    class_setsavefn(c, opd_textbox_save);
//    class_setwidget(c, &c->opd_textbox_widget);
     */
    
    
    sys_vgui("proc sendchunks {str sendto} {\n\
             binary scan $str H* hex\n\
             set k 0 ; set chunksize 512 ; set len [string length $hex] ; set nchunks [expr $len / $chunksize] ; set chad [expr $len %% $chunksize] \n\
             if { $nchunks > 0 } { \n\
                for {set k 0} {$k < $nchunks} {incr k} {\n\
                    set hexchunk \"\" \n\
                    for {set i 0} {$i < $chunksize} {incr i} {\n\
                        append hexchunk [string index $hex [expr $i + [expr $k * $chunksize]]]\n\
                    }\n\
                    pdsend \"$sendto textbuf hex $hexchunk \"\n\
                }\n\
             }\n\
             set hexchunk \"\" \n\
             for {set i 0} {$i < $chad} {incr i} {\n\
                append hexchunk [string index $hex [expr $i + [expr $k * $chunksize]]]\n\
             }\n\
             pdsend \"$sendto textbuf hex $hexchunk \"\n\
             pdsend \"$sendto textbuf hex $sendto \"\n\
             }\n");//, x->receive_name, x->receive_name, x->receive_name, x->receive_name);
    return c;
}



#endif
