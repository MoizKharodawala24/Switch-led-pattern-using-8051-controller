start: mov r3, #08h
mov a, p2
cjne a,#0feh,lp
mov a,#55h
sjmp l
lp: mov a, #01h
l: mov p1,a
rl a
acall delay
djnz r3, l
sjmp start

delay: mov r0,#05h
l3: mov r1,#0ffh
l2: mov r2,#0ffh
l1: djnz r2 ,l1
djnz r1,l2
djnz r0,l3
ret
end