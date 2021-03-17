

# calc:
# 	bison -d fullcalc.y
# 	flex fullcalc.l

calc:
	bison -d fullcalc.y
	flex fullcalc.l
	cc -o $@ fullcalc.tab.c lex.yy.c -lfl

