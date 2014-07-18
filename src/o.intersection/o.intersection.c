/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2011, The Regents of
  the University of California (Regents). 
  Permission to use, copy, modify, distribute, and distribute modified versions
  of this software and its documentation without fee and without a signed
  licensing agreement, is hereby granted, provided that the above copyright
  notice, this paragraph and the following two paragraphs appear in all copies,
  modifications, and distributions.

  IN NO EVENT SHALL REGENTS BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,
  SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS, ARISING
  OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF REGENTS HAS
  BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

  REGENTS SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
  PURPOSE. THE SOFTWARE AND ACCOMPANYING DOCUMENTATION, IF ANY, PROVIDED
  HEREUNDER IS PROVIDED "AS IS". REGENTS HAS NO OBLIGATION TO PROVIDE
  MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.


  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  NAME: o.intersection
  DESCRIPTION: Get the intersection (addresses in common) between two OSC bundles
  AUTHORS: John MacCallum
  COPYRIGHT_YEARS: 2011
  SVN_REVISION: $LastChangedRevision: 587 $
  VERSION 0.0: First try
  VERSION 1.0: using libo
  VERSION 2.0: refactored out of o.var
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#define ODOT_INTERSECTION
#if defined ODOT_INTERSECTION
#define OMAX_DOC_NAME "o.intersection"
#define OMAX_DOC_SHORT_DESC "Output a bundle containing the intersection of messages between two bundles"
#define OMAX_DOC_LONG_DESC "o.intersection takes two bundles and forms a new bundle that contains the OSC messages from the bundle received in the left inlet whose addresses are also present in the bundle received in the right inlet."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet", "OSC packet"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC Packet containing the intersection of the two packets"}
#define OMAX_DOC_SEEALSO (char *[]){"o.difference", "o.union"}
#endif

#include "../o.var/o.var.c"
