LTXOBJ=resume.tex
BIBOBJ=resume

LTX=pdflatex
LTXARGS=-synctex=1 -interaction=nonstopmode
BIB=biber
BIBARGS=

all: ltx1 ltx2 ltx3

ltx1 ltx2 ltx3:
	$(LTX) $(LTXARGS) $(LTXOBJ)

bib:
	$(BIB) $(BIBARGS) $(BIBOBJ)

clean:
	\rm -rf *.aux *.bbl *.blg *.log *.out *.pdf *.synctex.gz
