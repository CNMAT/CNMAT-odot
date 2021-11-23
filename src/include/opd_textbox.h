#ifndef odot_opd_textbox_h
#define odot_opd_textbox_h

#include "m_pd.h"
#include "m_imp.h"
#include "string.h"
//#include "o.h"

#define OMAX_PD_MAXSTRINGSIZE (1<<16)

//#define OPD_TEXTBOX_DEBUG

extern uint16_t opd_textbox_defined;

typedef struct _jrgb {
    char r, g, b;
    char hex[7];
} t_opd_rgb;

typedef void (*t_opd_draw_fn)(void*, int);
typedef void (*t_opd_gettext_fn)(void*);
typedef void (*t_opd_click_fn)(void*, void*, int, int, int, int, int, int);
typedef void (*t_opd_delete_fn)(void*, t_glist*);

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
    
    /* t_gotfn     draw_fn; */
    /* t_gotfn     gettext_fn; */
    /* t_gotfn     delete_fn; */
    /* t_gotfn     click_fn; */
    t_opd_draw_fn     draw_fn;
    t_opd_gettext_fn     gettext_fn;
    t_opd_delete_fn     delete_fn;
    t_opd_click_fn     click_fn;
    

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
void opd_textbox_unbindCanvasEvents(t_opd_textbox *x);
void opd_textbox_bindCanvasEvents(t_opd_textbox *x);
void opd_textbox_drawParent(t_opd_textbox *t, int firstime);
void opd_textbox_setHeight(t_opd_textbox *t, float y);
void opd_textbox_getRectAndDraw(t_opd_textbox *t, int forceredraw);
void opd_textbox_setSize(t_opd_textbox *t, float x, float y);
void opd_textbox_mousedown(t_opd_textbox *t);
void opd_textbox_mousemove(t_opd_textbox *t, float x, float y);
int opd_textbox_resizeHitTest(t_opd_textbox *x, int mx, int my);
int opd_textbox_motion(t_opd_textbox *x);
void opd_textbox_bind_text_events(t_opd_textbox *t);
void opd_textbox_getTextAndCreateEditor(t_opd_textbox *t, int firsttime);
void opd_textbox_storeTextAndExitEditorTick(t_opd_textbox *t);
void opd_textbox_storeTextAndExitEditor(t_opd_textbox *t);
void opd_textbox_insideclick_callback(t_opd_textbox *t);
void opd_textbox_nofocus_callback(t_opd_textbox *t);
void opd_textbox_outsideclick_callback(t_opd_textbox *t);
void opd_textbox_mousewheel_callback(t_opd_textbox *t);
void opd_textbox_keyup_callback(t_opd_textbox *t, t_symbol *s, int argc, t_atom *argv);
void opd_textbox_key_callback(t_opd_textbox *t, t_symbol *s, int argc, t_atom *argv);
int opd_textbox_hex_to_int(char c);
int opd_textbox_hex_to_ascii(char c, char d);
void opd_textbox_setTextFromHex(t_opd_textbox *t, char *hex);
void opd_textbox_setTextFromString(t_opd_textbox *t, char *str);
unsigned long createRGB(int r, int g, int b);
void opd_textbox_setRGB(t_opd_rgb *rgb, char r, char b, char g);
void opd_textbox_fsetRGB(t_opd_rgb *rgb, float r, float g, float b);
void opd_textbox_setHexFromText(t_opd_textbox *t, char *str);
void opd_textbox_textbuf(t_opd_textbox *t, t_symbol *msg, int argc, t_atom *argv);
void opd_textbox_resetText(t_opd_textbox *t, char *s);
int opd_textbox_shouldDraw(t_opd_textbox *x);
int opd_textbox_drawElements(t_opd_textbox *x, int x1, int y1, int x2, int y2, int firsttime);
void opd_textbox_delete(t_opd_textbox *x, t_glist *glist);
void opd_textbox_unbind_tick(t_opd_textbox *x);
void opd_textbox_vis(t_opd_textbox *x, t_glist *glist, int vis);
void opd_textbox_displace(t_opd_textbox *x, t_glist *glist, int dx, int dy);
void opd_textbox_select(t_opd_textbox *x, t_glist *glist, int state);
void opd_textbox_activate(t_opd_textbox *x, t_glist *glist, int state);
void opd_textbox_processArgs(t_opd_textbox *t, short argc, t_atom *argv);
void opd_textbox_free(t_opd_textbox *t);
t_opd_textbox *opd_textbox_new(t_class *c);
t_class *opd_textbox_classnew(void);

#endif
