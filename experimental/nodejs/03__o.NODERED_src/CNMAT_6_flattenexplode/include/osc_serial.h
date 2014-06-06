/*
The state is represented as an unsigned 64-bit int with each byte interpreted as follows:

most significant byte---------------------------------------------------------------------->least significant byte
7	   |	6	   |	5	   |	4		3		2		1		 0
MACRO	   |	STATE	   |	MICRO	   |	ERROR		^--------------------COUNTER---------------------^
___________|_______________|_______________|_______________________________________________________________________
header	   |	id	   |	<none>	   |
header	   |    timetag    |	<none>     |
	   |		   |		   |
message	   |	size	   |	<none>	   |
	   |		   |		   |
message	   |	address	   |	<none>	   |
message	   |	address	   |	curly br.  |
message	   |	address	   |	square br. |
message	   |	address	   |	comma c.br.|
message	   |	address	   |	dash sq.br.|
message    |	address	   |	null pad   |
	   |		   |		   |
message	   |	typetags   |	<none>	   |
message	   |	typetags   |	null pad   |
	   |   		   |		   |
message	   |	data       |	<none>	   |

The macro states represent the different structural parts of a bundle, namely the HEADER, or the MESSAGE section.

The HEADER macro state has two states representing the different parts of header:  id and timetag
The MESSAGE macro state has four states representing the different parts of a message: size, address, typetags, and data

The message address state has a number of micro states for recording whether or not we're inside brackets, or null padding.
The message typetag state has one micro state to signify that we're in the null padding section.

The counter allows us to keep track of 4-byte alignment and to make sure that the message is the same length as the length field.
When going through the header, the counter is simply incremented since we know how long the two header fields are.
For the size of a message, we use the lowest byte as a counter to record where we are in the size field, while we pack the
size bytes into the upper 3 bytes of the counter.  When we reach the last byte of the size, we put it in the lowest
byte of the counter and then count down as we pass through the rest of the message.  When we get to 0, we've either 
gone off the end of the buffer or started a new message.
 */

#define OSC_SERIAL_INIT 0ull

// macro states
#define OSC_SERIAL_BUNDLE_HEADER 0x0100000000000000ull
#define OSC_SERIAL_BUNDLE_MESSAGE 0x0200000000000000ull // this is a message in a bundle
#define OSC_SERIAL_MESSAGE 0x0400000000000000ull // this a naked message

// header states
#define OSC_SERIAL_BUNDLE_HEADER_ID 0x0001000000000000ull
#define OSC_SERIAL_BUNDLE_HEADER_TIMETAG 0x0002000000000000ull

// message states
#define OSC_SERIAL_MESSAGE_SIZE 0x0001000000000000ull
#define OSC_SERIAL_MESSAGE_ADDRESS 0x0002000000000000ull
#define OSC_SERIAL_MESSAGE_TYPETAGS 0x0004000000000000ull
#define OSC_SERIAL_MESSAGE_DATA 0x0008000000000000ull

// address micro states
#define OSC_SERIAL_MESSAGE_ADDRESS_INSIDECURLYBRACKETS 0x0000010000000000ull
#define OSC_SERIAL_MESSAGE_ADDRESS_INSIDECURLYBRACKETS_COMMA 0x0000020000000000ull
#define OSC_SERIAL_MESSAGE_ADDRESS_INSIDESQUAREBRACKETS 0x0000040000000000ull
#define OSC_SERIAL_MESSAGE_ADDRESS_INSIDESQUAREBRACKETS_DASH 0x0000080000000000ull
#define OSC_SERIAL_MESSAGE_ADDRESS_NULLPADDING 0x0000100000000000ull

// typetags micro states
#define OSC_SERIAL_MESSAGE_TYPETAGS_NULLPADDING 0x0000010000000000ull

// error states
#define OSC_SERIAL_ERROR_BADHEADER 0x0000000100000000ull
#define OSC_SERIAL_ERROR_NEGATIVESIZE 0x0000000200000000ull
#define OSC_SERIAL_ERROR_NOLEADINGSLASH 0x0000000300000000ull
#define OSC_SERIAL_ERROR_NESTEDBRACKETS 0x0000000400000000ull
#define OSC_SERIAL_ERROR_WILDCARDINSIDEBRACKETS 0x0000000500000000ull
#define OSC_SERIAL_ERROR_BADALIGNMENT 0x0000000600000000ull
#define OSC_SERIAL_ERROR_UNSUPPORTEDTYPETAG 0x0000000700000000ull
#define OSC_SERIAL_ERROR_NOTYPETAGS 0x0000000800000000ull
#define OSC_SERIAL_ERROR_BUFFEROVERRUN 0x0000000900000000ull
#define OSC_SERIAL_ERROR_DOUBLEDASH 0x0000000a00000000ull
#define OSC_SERIAL_ERROR_DOUBLECOMMA 0x0000000b00000000ull
#define OSC_SERIAL_ERROR_UNMATCHEDRIGHTCURLYBRACE 0x0000000c00000000ull
#define OSC_SERIAL_ERROR_UNMATCHEDLEFTCURLYBRACE 0x0000000d00000000ull
#define OSC_SERIAL_ERROR_UNMATCHEDRIGHTSQUAREBRACKET 0x0000000e00000000ull
#define OSC_SERIAL_ERROR_UNMATCHEDLEFTSQUAREBRACKET 0x0000000f00000000ull

#define OSC_SERIAL_ERROR_MASK 0x000000ff00000000ull

char *osc_serial_errstr(uint64_t err);
int osc_serial_errorp(uint64_t state);
uint64_t osc_serial_processByte(char b, uint64_t s);
