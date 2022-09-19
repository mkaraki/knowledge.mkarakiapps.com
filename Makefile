OUT = out

SRC = $(wildcard docs/*.tex)
HTML = $(SRC:%.tex=%.html)

.SUFFIXES: .tex .html

all: $(HTML)

.tex.html:
	make4ht -u -l -d out -f html5 $<

makeenv:
	mkdir `kpsewhich -var-value TEXMFHOME`
	cd `kpsewhich -var-value TEXMFHOME`
	mkdir -p tex/latex
	cd tex/latex
	git clone https://github.com/michal-h21/helpers4ht.git --depth 1
