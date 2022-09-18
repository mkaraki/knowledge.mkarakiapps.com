OUT = out

SRC = $(wildcard docs/*.tex)
HTML = $(SRC:%.tex=%.html)

.SUFFIXES: .tex .html

all: $(HTML)

.tex.html:
	make4ht -u -d out -f html5 $<
