


#include "m_pd.h"

static t_class *odot_class;

static void *odot_new(void)
{
  t_object *x = (t_object *)pd_new(odot_class);
  
  return (x);
}

int setup_o0x2eappend(void);
int setup_o0x2eatomize(void);
int setup_o0x2echange(void);
int setup_o0x2ecollect(void);
int setup_o0x2econd(void);
int setup_o0x2econtext(void);
int setup_o0x2edifference(void);
int setup_o0x2edowncast(void);
int setup_o0x2eexplode(void);
int setup_o0x2eexpr(void);
int setup_o0x2eexpr0x2ecodebox(void);
int setup_o0x2eflatten(void);
int setup_o0x2eif(void);
int setup_o0x2eintersection(void);
int setup_o0x2emessageiterate(void);
int setup_o0x2elistenumerate(void);
int setup_o0x2emappatch(void);
int setup_o0x2emessage(void);
int setup_o0x2epack(void);
int setup_o0x2epak(void);
int setup_o0x2eprepend(void);
int setup_o0x2eprint(void);
int setup_o0x2eprintbytes(void);
int setup_o0x2eroute(void);
int setup_o0x2eschedule(void);
int setup_o0x2eselect(void);
//int setup_o0x2eslip.decode(void);
//int setup_o0x2eslip.encode(void);
int setup_o0x2eslip0x2edecode(void);
int setup_o0x2eslip0x2eencode(void);
int setup_o0x2etable(void);
int setup_o0x2etimetag(void);
int setup_o0x2eunion(void);
int setup_o0x2eunless(void);
int setup_o0x2evalidate(void);
int setup_o0x2evar(void);
int setup_o0x2ewhen(void);

/* ------------------------ setup routine ------------------------- */

void odot_setup(void)
{
  odot_class = class_new(gensym("odot"), odot_new, 0,
    sizeof(t_object), CLASS_NOINLET, 0);

 setup_o0x2eappend();
 setup_o0x2eatomize();
 setup_o0x2echange();
 setup_o0x2ecollect();
 setup_o0x2econd();
 setup_o0x2econtext();
 setup_o0x2edifference();
 setup_o0x2edowncast();
 setup_o0x2eexplode();
 setup_o0x2eexpr();
 setup_o0x2eexpr0x2ecodebox();
 setup_o0x2eflatten();
 setup_o0x2eif();
 setup_o0x2eintersection();
 setup_o0x2emessageiterate();
 setup_o0x2elistenumerate();
 setup_o0x2emappatch();
 setup_o0x2emessage();
 setup_o0x2epack();
 setup_o0x2epak();
 setup_o0x2eprepend();
 setup_o0x2eprint();
 setup_o0x2eprintbytes();
 setup_o0x2eroute();
 setup_o0x2eschedule();
 setup_o0x2eselect();
 setup_o0x2eslip0x2edecode();
 setup_o0x2eslip0x2eencode();
 setup_o0x2etable();
 setup_o0x2etimetag();
 setup_o0x2eunion();
 setup_o0x2eunless();
 setup_o0x2evalidate();
 setup_o0x2evar();
 setup_o0x2ewhen();
  
	post("odot library loaded!   (c)2014 cnmat, uc berkeley");
}
