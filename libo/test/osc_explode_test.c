#include <stdio.h>
#include <string.h>
#include "osc.h"
#include "osc_bundle_u.h"
#include "osc_message_u.h"
#include "osc_bundle_s.h"
#include "osc_message_s.h"

int main(int argc, char **argv)
{
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	t_osc_msg_u *m = osc_message_u_alloc();
	osc_message_u_setAddress(m, "/foo/bar");
	osc_message_u_appendInt32(m, 1);
	osc_message_u_appendInt32(m, 2);
	osc_message_u_appendInt32(m, 3);
	osc_bundle_u_addMsg(b, m);
	t_osc_msg_u *mm = osc_message_u_alloc();
	osc_message_u_setAddress(mm, "/foo/bloo");
	osc_message_u_appendString(mm, "a");
	osc_message_u_appendString(mm, "r");
	osc_message_u_appendString(mm, "s");
	osc_bundle_u_addMsg(b, mm);
	long len = 0;
	char *buf = NULL;
	//osc_bundle_u_format(b, &len, &buf);
	//printf("%s\n\n\n", buf);
	osc_bundle_u_serialize(b, &len, &buf);
	t_osc_bndl_s *bs = osc_bundle_s_alloc(len, buf);
	//t_osc_bndl_u *e = NULL;
	t_osc_bndl_s *e = NULL;
	osc_bundle_s_explode(&e, bs, 0, " ");

	long ll = 0;
	char *bb = NULL;
	osc_bundle_s_format(osc_bundle_s_getLen(e), osc_bundle_s_getPtr(e), &ll, &bb);
	printf("\n\n%s\n", bb);

	osc_bundle_s_deepFree(e);

	return 0;
}
