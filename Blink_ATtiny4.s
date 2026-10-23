; ATtiny4 blink example

.equ DDRB, 0x01
.equ PORTB, 0x02

.org 0x0000
ldi r16, 0x01
out DDRB, r16

loop1:
    ldi r25, 0xc8
    ldi r24, 0xff

    ldi r16, 0x01
    in r17, 0x02
    eor r17, r16
    out 0x02, r17

loopDelay:
    subi r24, 1
    sbci r25, 0
    brne loopDelay
    rjmp loop1