SOURCES  = $(wildcard *.tex)
FEYNMAN_TEX  := $(wildcard ./feynman/*.tex)
FEYNMAN_PDF  := $(FEYNMAN_TEX:%.tex=%.pdf)

default: $(SOURCES) $(FEYNMAN_PDF)
		@latexmk -pdf main.tex

$(FEYNMAN_PDF): %.pdf: %.tex
		@cd feynman; make $(notdir $@)
