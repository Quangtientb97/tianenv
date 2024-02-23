typedef volatile unsigned char *vuptr;		/* for accessing byte wide I/O memory */
typedef volatile unsigned short *vsptr;		/* for accessing halfword wide I/O memory */
typedef volatile unsigned int *vwptr;		/* for accessing word wide I/O memory */
typedef volatile unsigned long long *vdwptr;	/* for accessing double word wide I/O memory */

#define inb(port)	(*((vuptr) (port)))
#define outb(port, x)	(*((vuptr) (port)) = (unsigned char) (x))
#define ins(port)	(*((vsptr) (port)))
#define outs(port, x)	(*((vsptr) (port)) = (unsigned short) (x))
#define inw(port)	(*((vwptr) (port)))
#define outw(port, x)	(*((vwptr) (port)) = (unsigned int) (x))
#define indw(port)	(*((vdwptr) (port)))
#define outdw(port, x)	(*((vdwptr) (port)) = (unsigned long long) (x))
