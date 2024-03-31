test_lab0: test.l
	flex test.l
	gcc -o phone lex.yy.c -lfl

test:
	./phone < data

clean:
	-rm -rf lex.yy.c phone
