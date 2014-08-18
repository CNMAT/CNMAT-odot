#ifndef odot_opd_textbox_h
#define odot_opd_textbox_h

#include "m_imp.h"

#define OMAX_PD_MAXSTRINGSIZE (1<<16)

//#define OPD_TEXTBOX_DEBUG

typedef struct _jrgb {
    char r, g, b;
    char hex[7];
} t_opd_rgb;

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
    uint16_t    new_texteditor;

    uint16_t    c_bind;
    uint16_t    send_bind;

    
    uint16_t    editmode;
    uint16_t    selected;
    uint16_t    firsttime;
    uint16_t    firstdisplace;
    
    uint16_t    forceredraw;
    
    uint16_t    parse_error;
    uint16_t    cmdDown;
    
    uint16_t    mouseDown;
    int         yscroll;
    
    int softlock;
    int streamflag;
    int in_new_flag;

    int height;
    int width;
    int xref, yref, wref;
    
    int resizebox_height;
    int resizebox_width;
    int resizebox_x_offset;
    int resizebox_y_offset;
    
    int margin_t, margin_b, margin_l, margin_r;
    
    uint16_t    _hit;
    
    t_gotfn     draw_fn;
    t_gotfn     gettext_fn;
    
    t_gotfn     delete_fn;
    t_gotfn     click_fn;

    t_clock     *unbind_delay;
    
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
void opd_textbox_outsideclick_callback(t_opd_textbox *t);
int opd_textbox_resizeHitTest(t_opd_textbox *x, int mx, int my);
int opd_textbox_motion(t_opd_textbox *x);


void opd_textbox_unbindCanvasEvents(t_opd_textbox *x)
{
    if(x->c_bind)
    {
        t_canvas *canvas = glist_getcanvas(x->glist);
     //   sys_vgui("::opd_textbox::unbind .x%lx.c <Motion> {::opd_textbox::sendto %s mousemove %%x %%y} \n", canvas, x->receive_name);
        
#ifdef OPD_TEXTBOX_DEBUG
        post("%x %s ...", x, __func__);
#endif
        
        sys_vgui("::opd_textbox::unbind .x%lx <Button-1> {::opd_textbox::sendto %s mousedown %%x %%y} \n", canvas, x->receive_name);
        sys_vgui("::opd_textbox::unbind .x%lx <ButtonRelease-1> {::opd_textbox::sendto %s mouseup} \n", canvas, x->receive_name);
        
        //sys_vgui("focus .x%lx\n", canvas, (long)x);

      //  sys_vgui("::pdwindow::post \"check [bind .x%lx.c <Button-1>] \n\" \n", canvas);
        x->c_bind = 0;
    }
#ifdef OPD_TEXTBOX_DEBUG
    else { post("%x already unbound", x); }
    post("%x %s end c_bind %d",x, __func__, x->c_bind);
#endif

}

void opd_textbox_bindCanvasEvents(t_opd_textbox *x)
{
    if(!x->c_bind)
    {
#ifdef OPD_TEXTBOX_DEBUG
        post("%x %s ...", x, __func__);
#endif
        
        t_canvas *canvas = glist_getcanvas(x->glist);
        sys_vgui("bind .x%lx <Button-1> {+::opd_textbox::sendto %s mousedown %%x %%y} \n", canvas, x->receive_name);
        sys_vgui("bind .x%lx <ButtonRelease-1> {+::opd_textbox::sendto %s mouseup} \n", canvas, x->receive_name);
     //   sys_vgui("bind .x%lx.c <Motion> {+::opd_textbox::sendto %s mousemove %%x %%y} \n", canvas, x->receive_name);
      //  sys_vgui("::pdwindow::post \"check [bind .x%lx.c <Button-1>] \n\" \n", canvas);

        x->c_bind = 1;
    }
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s end c_bind %d",x, __func__, x->c_bind);
#endif
}

void opd_textbox_drawParent(t_opd_textbox *t, int firstime)
{
    if(t->draw_fn)
        t->draw_fn(t->parent, firstime);
    else
        error("don't forget to set the textbox draw_fn in the parent object!");
    
}

void opd_textbox_setHeight(t_opd_textbox *t, float y)
{
    int h = ((int)y - text_ypix(t->parent, t->glist)) + t->margin_t + t->margin_b;
    h = (h > 23) ? h : 23;
    
//    post("y %d ypix %d t->margin_b %d t->margin_t %d", (int)y, text_ypix(t->parent, t->glist), t->margin_b, t->margin_t);
//    post("%x %s h %d", t, __func__, h);
    t->softlock = 0;
    
    if((h != t->height) || t->forceredraw)
    {
        t->height = h;
        
#ifdef OPD_TEXTBOX_DEBUG
        post("%x %s height set to %d firsttime %d", t, __func__, t->height, t->firsttime);
#endif
        
        if(t->send_bind)
            opd_textbox_drawParent(t, t->firsttime);
        
        t->forceredraw = 0;
        
    } else {
        ;
        //post("%x %s height == h && !redraw ", x, __func__);
    }
}

void opd_textbox_getRectAndDraw(t_opd_textbox *t, int forceredraw)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s", t, __func__);
#endif
    
    t->forceredraw = forceredraw;
    t->softlock = 1;
    sys_vgui("pdsend \"%s setheight [lindex [.x%lx.c bbox text%lx] 3]\" \n", t->receive_name, glist_getcanvas(t->glist), (long)t);

}

void opd_textbox_mousedown(t_opd_textbox *t)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s", t, __func__);
#endif
    int mx,my, x1, y1, x2, y2;
    glist_getnextxy(glist_getcanvas(t->glist), &mx, &my); //<< mouse position
    gobj_getrect((t_gobj *)t->parent, t->glist, &x1, &y1, &x2, &y2);
    
    if(opd_textbox_motion(t)) //<< returns true for resize hit test
    {
        if(!t->selected)
            gobj_select(&t->parent->te_g, t->glist, 1);

        t->mouseDown = 1;
        t->xref = mx;
        t->wref = t->width;
        sys_vgui("bind .x%lx.c <Motion> {+::opd_textbox::sendto %s mousemove %%x %%y} \n", glist_getcanvas(t->glist), t->receive_name);
    }
    else if ((t->textediting || t->selected) && (mx < x1 || mx > x2 || my < y1 || my > y2))
    {
        opd_textbox_outsideclick_callback(t);
    }
}

void opd_textbox_mousemove(t_opd_textbox *t, float x, float y)
{
#ifdef OPD_TEXTBOX_DEBUG
   // post("%x %s", t, __func__);
#endif
    
    if(t->mouseDown && glist_getcanvas(t->glist)->gl_edit)
    {
        int width = t->wref + ((int)x - t->xref);
        width = (width < 50) ? 50 : width;
        t->width = width;
        
#ifdef OPD_TEXTBOX_DEBUG
        post("%x %s %d %d", t, __func__, (int)x, width);
#endif
        opd_textbox_getRectAndDraw(t, 1);
    }
    else
        ;//post("mdown %d edit %d", t->mouseDown, glist_getcanvas(t->glist)->gl_edit);
}

void opd_textbox_mouseup(t_opd_textbox *t)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s", t, __func__);
#endif
    if(t->mouseDown)
    {
        t->mouseDown = 0;
        gobj_select(&t->parent->te_g, t->glist, 0);
//        gobj_select((t_gobj *)t->parent, t->glist, 0); //<< same as ->te_g
        sys_vgui("::opd_textbox::unbind .x%lx.c <Motion> {::opd_textbox::sendto %s mousemove %%x %%y} \n", glist_getcanvas(t->glist), t->receive_name);

        opd_textbox_drawParent(t, 0);

    }
}


int opd_textbox_resizeHitTest(t_opd_textbox *x, int mx, int my)
{
    t_canvas *c = glist_getcanvas(x->glist);
    
    int test = 0;
    if(c->gl_edit && glist_isvisible(c) && glist_istoplevel(c))
    {
        int x1, y1, x2, y2;
        x1 = text_xpix(x->parent, x->glist);
        y1 = text_ypix(x->parent, x->glist);
        x2 = x1 + x->width;
        y2 = y1 + x->height;
        
        int rw = x->resizebox_width / 2;
        int rh = x->resizebox_height / 2;
        int rx1 = x2 - rw + x->resizebox_x_offset;
        int ry1 = y2 - rh + x->resizebox_y_offset;
        int rx2 = rx1 + rw;
        int ry2 = ry1 + rh;
        
        test = (mx > rx1 && mx < rx2 && my > ry1 && my < ry2);
    
        if(test != x->_hit)
        {
            if(c->gl_edit)
            {
                char *color = (test && (x->selected || x->textediting)) ? "#006699" : "\"\"";
                sys_vgui(".x%lx.c itemconfigure %lxRESIZE -outline %s \n", c, (long)x, color);
                
                
                char *cursormode = (test && (x->textediting || x->selected || x->mouseDown)) ? "$cursor_editmode_resize" : "$cursor_runmode_nothing";
                //canvas_setcursor((t_canvas *)x->glist, cursormode); //<< not sure why this doesn't work
                sys_vgui(".x%lx configure -cursor %s\n", c, cursormode);
                
            }
            
            x->_hit = test;
        }
    }
    return test;
}


int opd_textbox_motion(t_opd_textbox *x)
{
    t_canvas *c = glist_getcanvas(x->glist);
    
    int test = 0;
    if(c->gl_edit && glist_isvisible(c) && glist_istoplevel(c))
    {
        int mx,my;
        glist_getnextxy(c, &mx, &my); //<< mouse position
        test = opd_textbox_resizeHitTest(x, mx, my);
        opd_textbox_mousemove(x, (float)mx, (float)my);
    }
    else
        ;//post("gl_edit %d isvis %d istop %d", c->gl_edit, glist_isvisible(c), glist_istoplevel(c));
    
    return test;
}

void opd_textbox_bind_text_events(t_opd_textbox *t)
{
    t_canvas *canvas = glist_getcanvas(t->glist);
    sys_vgui("bind .x%lx.t%lxTEXT <Key> {+pdsend {%s key %%N }}\n", canvas, (long)t, t->receive_name);
    sys_vgui("bind .x%lx.t%lxTEXT <KeyRelease> {+pdsend {%s keyup %%N }}\n",  canvas, (long)t, t->receive_name);
    
    //focusout for clicking to other windows other than the main canvas
    sys_vgui("bind .x%lx.t%lxTEXT <FocusOut> {+pdsend {%s nofocus }}\n", canvas, (long)t, t->receive_name);
    sys_vgui("bind .x%lx.t%lxTEXT <1> {+pdsend {%s mousedown }}\n", canvas, (long)t, t->receive_name);
    
}


void opd_textbox_getTextAndCreateEditor(t_opd_textbox *t, int firsttime)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s", t, __func__);
#endif
    
    if(firsttime)
    {
        t->new_texteditor = 1;
        int pix_buffer = 2;
        int x1 = text_xpix(t->parent, t->glist) + t->margin_l - pix_buffer - 1;
        int y1 = text_ypix(t->parent, t->glist) + t->margin_t - pix_buffer - 1;
        int width = t->width - t->margin_l - t->margin_r - pix_buffer - 6;
        int height = t->height - t->margin_t - t->margin_b - pix_buffer - 6;
        
        // post("%x %s %d x1 %d y1 %d x2 %d y2 %d", t, __func__, firsttime, x1, y1, x1+t->width, y1+t->height);
        t_canvas *canvas = glist_getcanvas(t->glist);
        
//        gobj_select(&t->parent->te_g, t->glist, 0); // << deselect to disable PD key motions etc.
        glist_noselect(t->glist);
        sys_vgui(".x%lx.c itemconfigure text%lx -fill white \n", canvas, (long)t);
        
        sys_vgui("text .x%lx.t%lxTEXT -font {{%s} %d %s} -undo true -fg \"black\" -bg \"white\" -takefocus 1 -state normal -highlightthickness 0 -wrap word -spacing3 0 \n", canvas, (long)t, sys_font, glist_getfont(t->glist), sys_fontweight ); //-tabs {%d left} , glist_getfont(t->glist) * ?
        
        sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)t, x1, canvas, y1, canvas, width, height);
        
        if(t->text)
            sys_vgui(".x%lx.t%lxTEXT insert 1.0 [subst -nobackslash -nocommands -novariables {%s} ] \n", canvas, (long)t, t->text);
        
        
        sys_vgui("event generate .x%lx.t%lxTEXT <1> -x %d -y %d \n", canvas, (long)t, x1 + 5, y1 + 5);
        sys_vgui("event generate .x%lx.t%lxTEXT <ButtonRelease-1> -x %d -y %d \n", canvas, (long)t, x1 + 5, y1 + 5);
        sys_vgui(".x%lx.t%lxTEXT tag add sel 0.0 end\n", canvas, (long)t);
        
        opd_textbox_bind_text_events(t);
//        opd_textbox_bindCanvasEvents(t);

    }
    else
    { // pretty sure that this never gets called
        error("%s pretty sure that this never gets called? please tell rama if you see this!", __func__);
        //sys_vgui("place .x%lx.t%lxTEXT -x %d -y %d -width %d -height %d\n", canvas, (long)t, x1+4, y1+4, t->width-15, t->height-10);
    }
    
    t->textediting = 1;
    t->new_texteditor = 0;
    opd_textbox_getRectAndDraw(t, 1);

}


void opd_textbox_storeTextAndExitEditorTick(t_opd_textbox *t)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s", t, __func__);
#endif
    
    t_canvas *canvas = glist_getcanvas(t->glist);
    
    t->textediting = 0;
//    opd_textbox_nofocus_callback(t);
    
    sys_vgui(".x%lx.c itemconfigure text%lx -fill black -width %d -text [subst -nobackslash -nocommands -novariables [string trimright {%s} ]] \n", canvas, (long)t, t->width - t->margin_l - t->margin_r, t->text);
    
    sys_vgui("destroy .x%lx.t%lxTEXT\n", canvas, (long)t);
    gobj_select(&t->parent->te_g, t->glist, 0);

    opd_textbox_getRectAndDraw(t, 1);

}

void opd_textbox_storeTextAndExitEditor(t_opd_textbox *t)
{
    
    if(t->textediting){
        sys_vgui("::opd_textbox::sendchunks [.x%lx.t%lxTEXT get 0.0 end] %s \n", glist_getcanvas(t->glist), (long)t, t->receive_name); //sendchunks
        //receive happens on next tick
    }
    
}

void opd_textbox_insideclick_callback(t_opd_textbox *t)
{
    //I belive this function is obsolete
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s", t, __func__);
#endif
    
    t_canvas *canvas = glist_getcanvas(t->glist);
    if(canvas->gl_edit)
    {
        //this might be "activate" versus "select"
        //activate is text edit mode and select is move or delete mode (resize too)
        
        sys_vgui("focus .x%lx.t%lxTEXT\n", canvas, (long)t);
        glist_noselect(t->glist);
        gobj_select(&t->parent->te_g, t->glist, 1);

    } else {
        sys_vgui("focus .x%lx.c\n", canvas);
        opd_textbox_storeTextAndExitEditor(t);
        
        if(t->click_fn)
            t->click_fn(t->parent);
        
    }
    
}

//called when clicking from one object to another without clicking on the empty canvas first
void opd_textbox_nofocus_callback(t_opd_textbox *t)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s", t, __func__);
#endif
    opd_textbox_unbindCanvasEvents(t);
    gobj_select(&t->parent->te_g, t->glist, 0);
//    sys_vgui("focus .x%lx.c\n", glist_getcanvas(t->glist));

}


void opd_textbox_outsideclick_callback(t_opd_textbox *t)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s", t, __func__);
#endif
    /*
    t_canvas *canvas = glist_getcanvas(t->glist);

    opd_textbox_unbindCanvasEvents(t);

    sys_vgui("focus .x%lx.c\n", canvas);
    gobj_select(&t->parent->te_g, t->glist, 0); //<<    opd_textbox_storeTextAndExitEditor(x); called from select function
    */
    t->mouseDown = 0;
    opd_textbox_nofocus_callback(t);
    
    //same for <Key>
    t->selected = 0;
    t->cmdDown = 0; //in case of esc exit
    
    
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
    //printargs(argc, argv);
    
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
                sys_vgui(".x%lx.c itemconfigure text%lx -width %d -text [subst -nobackslash -nocommands -novariables [.x%lx.t%lxTEXT get 0.0 end-1c] ] \n", glist_getcanvas(t->glist), (long)t, t->width - t->margin_l - t->margin_r, glist_getcanvas(t->glist), (long)t);
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

unsigned long createRGB(int r, int g, int b)
{
    return ((r & 0xff) << 16) + ((g & 0xff) << 8) + (b & 0xff);
}

void opd_textbox_setRGB(t_opd_rgb *rgb, char r, char b, char g)
{
    rgb->r = r;
    rgb->g = g;
    rgb->b = b;
    sprintf(rgb->hex, "#%02X%02X%02X", r, g, b);
}

void opd_textbox_fsetRGB(t_opd_rgb *rgb, float r, float g, float b)
{
    unsigned long h = createRGB((int)(r * 256), (int)(g * 256), (int)(b * 256));
    rgb->r = (char)(r * 256); //<< pretty sure this is wrong, but not really using it right now
    rgb->g = (char)(g * 256);
    rgb->b = (char)(b * 256);
    
    sprintf(rgb->hex, "#%lx", h);
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
        sys_vgui(".x%lx.c itemconfigure text%lx -width %d -text [subst -nobackslash -nocommands -novariables [string trimright {%s} ]] \n", glist_getcanvas(t->glist), (long)t, t->width - t->margin_l - t->margin_r , t->text);
        
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
    
    int pix_buffer = 2;
    
    int tx1 = x1 + x->margin_l + pix_buffer;
    int ty1 = y1 + x->margin_t + pix_buffer;
    int tw = x->width - x->margin_l - x->margin_r - pix_buffer;
    int th = x->height - x->margin_b - x->margin_t - pix_buffer; //height maybe needs to be added to text height...
    
    int rw = x->resizebox_width / 2;
    int rh = x->resizebox_height / 2;
    int rx1 = x2 - rw + x->resizebox_x_offset;
    int ry1 = y2 - rh + x->resizebox_y_offset;
    int rx2 = rx1 + rw;
    int ry2 = ry1 + rh;
    
    if (firsttime)
    {
#ifdef OPD_TEXTBOX_DEBUG
        post("%x %s FIRST VIS height %d y1 %d y2 %d", x, __func__, x->height, y1, y2);
#endif
        
        sys_vgui(".x%lx.c create rectangle %d %d %d %d -outline \"\" -fill \"\" -tags %lxRESIZE \n", canvas, rx1, ry1, rx2, ry2, x);
        
        //opd_textbox_bindCanvasEvents(x);
        
        //sys_vgui("::pdwindow::post \"canvas motion after? [bind .x%lx.c <Motion>] // search for: $::%s::canvas%lxMOTION // result [regsub -all $::%s::canvas%lxMOTION \"[bind .x%lx.c <Motion>]\" \"FOO\" ] // \n\" \n", canvas, x->tcl_namespace, canvas, x->tcl_namespace, canvas, canvas);

        //create text display
        sys_vgui(".x%lx.c create text %d %d -anchor nw -width %d -font {{%s} %d %s} -tags text%lx -text [subst -nobackslash -nocommands -novariables [string trimright {%s} ]] -fill \"black\" \n", canvas, tx1, ty1, tw, sys_font, glist_getfont(glist), sys_fontweight, (long)x, x->text);
        
        // get height of text bbox, send to "setheight" to set height and redraw in the case of cmd-d duplicate, this gets called first, and then is displaced, so the bbox value is actually pre-displacement, see setheight function above
        opd_textbox_getRectAndDraw(x, 1);
        
        x->firsttime = 0;
        
    }
    else
    {
#ifdef OPD_TEXTBOX_DEBUG
        post("%x %s REDRAW height %d y1 %d y2 %d mousedown %d selected %d\n", x, __func__, x->height, y1, y2, x->mouseDown, x->selected);
#endif
        
        sys_vgui(".x%lx.c coords %lxRESIZE %d %d %d %d\n", canvas, x, rx1, ry1, rx2, ry2);

        if (x->textediting)
        {
            sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, tx1-1, canvas, ty1-1, canvas, tw, th);
            
            //sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x1+4, canvas, y1+4, canvas, x->width-16, x->height-6);
        }
        else if (x->text[0] != '\0')
        {
            sys_vgui(".x%lx.c itemconfigure text%lx -fill \"black\" -width %d -text [subst -nobackslash -nocommands -novariables [string trimright {%s} ]] \n", canvas, (long)x, tw, x->text);
            
            //[regsub -all -line {^[\t]+} {%s} \"    \" ] << replace \t with spaces
            
            //do syntax highlighting here?
        }
        
        char *color = (x->selected || x->textediting) ? "#006699" : "\"\"";
        sys_vgui(".x%lx.c itemconfigure %lxRESIZE -fill %s \n", canvas, (long)x, color);
    }
    
    return 1;
}

static void opd_textbox_delete(t_opd_textbox *x, t_glist *glist)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s", x, __func__);
#endif
    
    t_canvas *canvas = glist_getcanvas(glist);
    opd_textbox_unbindCanvasEvents(x);
    
    sys_vgui(".x%lx.c delete text%lx \n", canvas, (long)x);
    sys_vgui(".x%lx.c delete %lxRESIZE \n", canvas, (long)x);
    
    if(x->textediting)
        sys_vgui("destroy .x%lx.t%lxTEXT\n", canvas, (long)x);
    
}

void opd_textbox_unbind_tick(t_opd_textbox *x)
{
    pd_unbind(&x->ob.ob_pd, gensym(x->receive_name));
    x->send_bind = 0;
    opd_textbox_unbindCanvasEvents(x);
    
#ifdef OPD_TEXTBOX_DEBUG
    post("unbind c_bind? %d", x->c_bind);
#endif
    
}


static void opd_textbox_vis(t_opd_textbox *x, t_glist *glist, int vis)
{

    t_canvas *canvas = glist_getcanvas(glist);
    
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s vis %d firsttime %d visable %d", x, __func__, vis, x->firsttime, glist_isvisible(glist));
    post("%x canvas isabstraction %d isGOP %d", x, (canvas->gl_owner != NULL), glist_isgraph(glist));
#endif
    
    if(vis)
    {
        if(!x->send_bind)
        {
            pd_bind(&x->ob.ob_pd, gensym(x->receive_name));
            opd_textbox_bindCanvasEvents(x);
            x->send_bind = 1;
        }
        
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
            x->firsttime = 1; //<< must be deleted and drawn again
            
            opd_textbox_delete(x, glist);
            if(x->firsttime)
            { // is abstraction
                opd_textbox_getRectAndDraw(x, 1);
            }
        }
        
        if(x->textediting)
        {
            opd_textbox_getTextAndCreateEditor(x, 1);
        }
        
    }
    else
    {
        int delay = glist_isgraph(glist) ? 100 : 0;
        if(x->send_bind)
            clock_delay(x->unbind_delay, delay);
        
        //if(!x->firsttime)
        {
            if(x->delete_fn)
                x->delete_fn(x->parent, glist); //<< this delete necessary for GOP? keep an eye on this
        }
    }
}

static void opd_textbox_displace(t_opd_textbox *x, t_glist *glist, int dx, int dy)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s mousedown %d dx %d dy %d", x, __func__, x->mouseDown, dx, dy);
#endif
    

    int x1 = text_xpix(x->parent, glist);
    int y1 = text_ypix(x->parent, glist);
    int x2 = x1 + x->width;
    int y2 = y1 + x->height;

    
    t_canvas *canvas = glist_getcanvas(glist);

    if (!x->mouseDown)
    {
        sys_vgui(".x%lx.c move text%lx %d %d\n", canvas, (long)x, dx, dy);
        sys_vgui(".x%lx.c move %lxRESIZE %d %d\n", canvas, (long)x, dx, dy);
    }
    
    if(x->textediting)
    {
        int pix_buffer = 2;
        
        int tx1 = x1 + x->margin_l + pix_buffer;
        int ty1 = y1 + x->margin_t + pix_buffer;
        int tw = x->width - x->margin_l - x->margin_r - pix_buffer;
        int th = x->height - x->margin_b - x->margin_t - pix_buffer; //height maybe needs to be added to text height...
        
        sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, tx1-1, canvas, ty1-1, canvas, tw, th);
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
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s state %d selected %d textediting %d", x, __func__, state, x->selected, x->textediting);
#endif
    
    int prev_sel = x->selected;
    x->selected = state;

    if (state)
    {
        opd_textbox_bindCanvasEvents(x);
    }
    else
    {
        if(x->textediting)
        {
            opd_textbox_storeTextAndExitEditor(x);
        }
        else if(prev_sel && !x->new_texteditor)
            opd_textbox_unbindCanvasEvents(x);
        
    }
    
    if(opd_textbox_motion(x))
    {
        opd_textbox_mousedown(x);
    }
    
    opd_textbox_drawParent(x, 0);
    
}

static void opd_textbox_activate(t_opd_textbox *x, t_glist *glist, int state)
{
#ifdef OPD_TEXTBOX_DEBUG
    post("%x %s %d", x, __func__, state);
#endif
    
    x->mouseDown = 0;
    
    if(state && !x->textediting)
    {
        x->selected = 1;
        opd_textbox_getTextAndCreateEditor(x, 1);
    }
    else
        opd_textbox_storeTextAndExitEditor(x);
    
}

void opd_textbox_processArgs(t_opd_textbox *t, short argc, t_atom *argv)
{
    if(argc > 3)
    {
        t->width = atom_getfloat(argv);
        t->height = atom_getfloat(argv+1);
        if(((argv+2)->a_type == A_SYMBOL ) && (atom_getsymbol(argv+2) == gensym("binhex")))
        {
            
            opd_textbox_textbuf(t, NULL, argc-2, (argv+2));
            t_atom done[2];
            atom_setsym(done, gensym("binhex"));
            atom_setsym(done+1, gensym(t->receive_name));
            opd_textbox_textbuf(t, NULL, 2, done);
            
        }
    }
    else
        ;//error("%s: not enough args", __func__);
}

void opd_textbox_free(t_opd_textbox *t)
{
//    post("%s", __func__);
    
    free(t->text);
    free(t->hex);
    free(t->tcl_namespace);
    free(t->iolets_tag);
    
    free(t->receive_name);
    
    clock_free(t->unbind_delay);
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
        t->send_bind = 0;
        
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
        
        t->_hit = 0;
        t->resizebox_x_offset = 0;
        t->resizebox_y_offset = 0;
        t->resizebox_height = 10;
        t->resizebox_width = 10;
        
        t->margin_t = 0;
        t->margin_l = 0;
        t->margin_b = 0;
        t->margin_r = 0;
        
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

#ifdef OPD_TEXTBOX_DEBUG
        post("%x bind %s", t, t->receive_name);
#endif
        
        pd_bind(&t->ob.ob_pd, gensym(t->receive_name));
        t->send_bind = 1;
    
        //post("%s %s", __func__, t->receive_name);
        
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

        
    // kludge due to in ability to know if a vis 1 is immediately followed by a vis 0 which wipes out the receiver
        t->unbind_delay = clock_new(t, (t_method)opd_textbox_unbind_tick);
        
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
    class_addmethod(c, (t_method)opd_textbox_mousedown, gensym("mousedown"), 0);
    class_addmethod(c, (t_method)opd_textbox_mousemove, gensym("mousemove"), A_DEFFLOAT, A_DEFFLOAT, 0);
    class_addmethod(c, (t_method)opd_textbox_mouseup, gensym("mouseup"), 0);
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
    
    sys_vgui("namespace eval ::opd_textbox:: {}\n");
    
    sys_vgui("proc ::opd_textbox::unbind {tag event script} {\n");
    sys_vgui("         set bind {}\n");
    sys_vgui("         foreach x [split [bind $tag $event] \"\n\"] {\n");
    sys_vgui("              if {$x != $script} {\n");
    sys_vgui("                  lappend bind $x\n");
    sys_vgui("              }\n");
    sys_vgui("         }\n");
    sys_vgui("         bind $tag $event {}\n");
    sys_vgui("         foreach x $bind {bind $tag $event $x}\n");
    sys_vgui("}\n");
    
    sys_vgui("proc ::opd_textbox::sendto {sendto args} {\n");
    sys_vgui("      pdsend \"$sendto $args\"\n");
    sys_vgui("}\n");

    
    sys_vgui("proc ::opd_textbox::sendchunks {str sendto} {\n");
    sys_vgui("      binary scan $str H* hex\n");
    sys_vgui("      set k 0 ; set chunksize 512 ; set len [string length $hex] ; set nchunks [expr $len / $chunksize] ; set chad [expr $len %% $chunksize] \n");
    sys_vgui("         if { $nchunks > 0 } { \n");
    sys_vgui("            for {set k 0} {$k < $nchunks} {incr k} {\n");
    sys_vgui("                set hexchunk \"\" \n");
    sys_vgui("               for {set i 0} {$i < $chunksize} {incr i} {\n");
    sys_vgui("                   append hexchunk [string index $hex [expr $i + [expr $k * $chunksize]]]\n");
    sys_vgui("               }\n");
    sys_vgui("               pdsend \"$sendto textbuf hex $hexchunk \"\n");
    sys_vgui("           }\n");
    sys_vgui("       }\n");
    sys_vgui("       set hexchunk \"\" \n");
    sys_vgui("       for {set i 0} {$i < $chad} {incr i} {\n");
    sys_vgui("            append hexchunk [string index $hex [expr $i + [expr $k * $chunksize]]]\n");
    sys_vgui("       }\n");
    sys_vgui("       pdsend \"$sendto textbuf hex $hexchunk \"\n");
    sys_vgui("       pdsend \"$sendto textbuf hex $sendto \"\n");
    sys_vgui("}\n");//, x->receive_name, x->receive_name, x->receive_name, x->receive_name);

//from http://wiki.tcl.tk/1416
    sys_vgui("proc ::opd_textbox::createRoundRect {w L T Rad width height colour tag} {\n");
    sys_vgui("        $w create oval $L $T [expr $L + $Rad] [expr $T + $Rad] -fill $colour -outline $colour -tag [append $tag TL]\n");
    sys_vgui("        $w create oval [expr $width-$Rad] $T $width [expr $T + $Rad] -fill $colour -outline $colour -tag [append $tag TR]\n");
    sys_vgui("        $w create oval $L [expr $height-$Rad] [expr $L+$Rad] $height -fill $colour -outline $colour -tag [append $tag BL]\n");
    sys_vgui("        $w create oval [expr $width-$Rad] [expr $height-$Rad] [expr $width] $height -fill $colour -outline $colour -tag [append $tag BR]\n");
    sys_vgui("        $w create rectangle [expr $L + ($Rad/2.0)] $T [expr $width-($Rad/2.0)] $height -fill $colour -outline $colour -tag [append $tag r1]\n");
    sys_vgui("        $w create rectangle $L [expr $T + ($Rad/2.0)] $width [expr $height-($Rad/2.0)] -fill $colour -outline $colour -tag [append $tag r2]\n");
    sys_vgui("}\n");
    
    sys_vgui("proc ::opd_textbox::redrawRoundRect {w L T Rad width height colour tag} {\n");
    sys_vgui("        $w create oval $L $T [expr $L + $Rad] [expr $T + $Rad] -fill $colour -outline $colour -tag $tag\n");
    sys_vgui("        $w create oval [expr $width-$Rad] $T $width [expr $T + $Rad] -fill $colour -outline $colour -tag $tag\n");
    sys_vgui("        $w create oval $L [expr $height-$Rad] [expr $L+$Rad] $height -fill $colour -outline $colour -tag $tag\n");
    sys_vgui("        $w create oval [expr $width-$Rad] [expr $height-$Rad] [expr $width] $height -fill $colour -outline $colour -tag $tag\n");
    sys_vgui("        $w create rectangle [expr $L + ($Rad/2.0)] $T [expr $width-($Rad/2.0)] $height -fill $colour -outline $colour -tag $tag\n");
    sys_vgui("        $w create rectangle $L [expr $T + ($Rad/2.0)] $width [expr $height-($Rad/2.0)] -fill $colour -outline $colour -tag $tag\n");
    sys_vgui("}\n");
    //sys_vgui("eval [read [open {%s/%s.tcl}]]\n", c->c_externdir->s_name,c->c_name->s_name);
    
    return c;
}



#endif
