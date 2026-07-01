TEXFILE=thesis_final
SECTIONS=$(wildcard sections/*.tex sections/appendix/*.tex)

$(TEXFILE).pdf: $(TEXFILE).tex $(SECTIONS) references/refs-thesis_final.bib
	pdflatex $(TEXFILE)
	biber $(TEXFILE)
	pdflatex $(TEXFILE)
	pdflatex $(TEXFILE)

.PHONY: clean
clean:
	rm -f $(TEXFILE).aux $(TEXFILE).bbl $(TEXFILE).bcf $(TEXFILE).blg \
	      $(TEXFILE).fdb_latexmk $(TEXFILE).fls $(TEXFILE).log \
	      $(TEXFILE).out $(TEXFILE).run.xml $(TEXFILE).toc \
	      $(TEXFILE).lof $(TEXFILE).lot
