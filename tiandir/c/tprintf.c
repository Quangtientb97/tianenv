#include <stdarg.h>
#include "sys.h"
#include "tube.h"
#include "tprintf.h"

/*
 * Print a character on console or users terminal.  If destination is
 * the console then the last MSGBUFS characters are saved in msgbuf for
 * inspection later.
 */
void tputchar(int c)
{
    if ( c != '\0') {
        outw(TUBE, c);
    }
}

/*
 * Put a number (base <= 16) in a buffer in reverse order; return an
 * optional length and a pointer to the NULL terminated (preceded?)
 * buffer.
 */
char *ksprintn(unsigned long ul, int base, int *lenp, int *size)
{					/* A long in base 8, plus NULL. */
    char buf[sizeof(long) * 8];
    char *p;

    *size = 0;

    p = buf;
    do {
        *++p = "0123456789abcdef"[ul % base];
        *size = *size +1;
    } while (ul /= base);
    if (lenp)
        *lenp = p - buf;

    return (p);
}

/*
 * Scaled down version of printf(3).
 *
 * Two additional formats:
 *
 * The format %b is supported to decode error registers.
 * Its usage is:
 *
 *	tprintf("reg=%b\n", regval, "<base><arg>*");
 *
 * where <base> is the output base expressed as a control character, e.g.
 * \10 gives octal; \20 gives hex.  Each arg is a sequence of characters,
 * the first of which gives the bit number to be inspected (origin 1), and
 * the next characters (up to a control character, i.e. a character <= 32),
 * give the name of the register.  Thus:
 *
 *	kprintf("reg=%b\n", 3, "\10\2BITTWO\1BITONE\n");
 *
 * would produce output:
 *
 *	reg=3<BITTWO,BITONE>
 *
 * The format %r passes an additional format string and argument list
 * recursively.  Its usage is:
 *
 * fn(char *fmt, ...)
 * {
 *	va_list ap;
 *	va_start(ap, fmt);
 *	printt("prefix: %r: suffix\n", fmt, ap);
 *	va_end(ap);
 * }
 *
 * Space or zero padding and a field width are supported for the numeric
 * formats only.
 */
void kprintf(const char *fmt, va_list ap)
{
    char *p, *q;
    int ch, n;
    unsigned long ul;
    int base, lflag, tmp, width, size;
    char padc;

    if (fmt == 0)
        fmt = "(fmt null)\n";
    for (;;) {
        padc = ' ';
        width = 0;
        while ((ch = *(unsigned char *)fmt++) != '%') {
            if (ch == '\0')
                return;
            tputchar(ch);
        }

        lflag = 0;
reswitch:	switch (ch = *(unsigned char *)fmt++) {
                case '0':
                    padc = '0';
                    goto reswitch;
                case '1': case '2': case '3': case '4':
                case '5': case '6': case '7': case '8': case '9':
                    for (width = 0;; ++fmt) {
                        width = width * 10 + ch - '0';
                        ch = *fmt;
                        if (ch < '0' || ch > '9')
                            break;
                    }
                    goto reswitch;
                case 'l':
                    lflag = 1;
                    goto reswitch;
                case 'b':
                    ul = va_arg(ap, int);
                    p = va_arg(ap, char *);
                    for (q = ksprintn(ul, *p++, 0, &size); *q;)
                        tputchar(*q--);

                    if (!ul)
                        break;

                    for (tmp = 0; *p;) {
                        n = *p++;
                        if (ul & (unsigned long) (1 << (n - 1))) {
                            tputchar(tmp ? ',' : '<');
                            for (; (n = *p) > ' '; ++p)
                                tputchar(n);
                            tmp = 1;
                        } else
                            for (; *p > ' '; ++p)
                                continue;
                    }
                    if (tmp)
                        tputchar('>');
                    break;
                case 'c':
                    tputchar(va_arg(ap, int));
                    break;
                case 'r':
                    p = va_arg(ap, char *);
                    kprintf(p, va_arg(ap, va_list));
                    break;
                case 's':
                    p = va_arg(ap, char *);
                    if (p == 0)
                        p = "(null)";
                    while (*p)
                        tputchar(*p++);
                    break;
                case 'd':
                    ul = lflag ? va_arg(ap, long) : va_arg(ap, int);
                    if ((long)ul < 0) {
                        tputchar('-');
                        ul = -(long)ul;
                    }
                    base = 10;
                    goto number;
                case 'o':
                    ul = lflag ? va_arg(ap, unsigned long) : va_arg(ap, unsigned int);
                    base = 8;
                    goto number;
                case 'p':
                    ul = (unsigned long)va_arg(ap, void *);
                    base = 16;
                    tputchar('0');
                    tputchar('x');
                    goto number;
                case 'u':
                    ul = lflag ? va_arg(ap, unsigned long) : va_arg(ap, unsigned int);
                    base = 10;
                    goto number;
                case 'x':
                    ul = lflag ? va_arg(ap, unsigned long) : va_arg(ap, unsigned int);
                    base = 16;
number:			    p = ksprintn(ul, base, &tmp, &size);
                    if (width && (width -= tmp) > 0)
                        while (width--)
                            tputchar(padc);

                    while (size--) {
                        tputchar(*p--);
                    }
//                     while (*p) {
//                         tputchar(*p--);
//                     }
                    break;
                default:
                    tputchar('%');
                    if (lflag)
                        tputchar('l');
                /* FALLTHROUGH */
                case '%':
                    tputchar(ch);
            }
    }
}

void tmessage(char *str)
{
    while (*str)
        tputchar(*str++);
}

void tprintf(char *fmt, ...)
{
    va_list ap;

    va_start(ap, fmt);
    kprintf(fmt, ap);
    va_end(ap);
}


