texts = src/main.tex src/references.bib src/sections/*.tex
tables = src/tables/*.tex
figures = src/figures/*/fig.tex

main.pdf: $(texts) $(tables) $(figures)
	./build-pdf.sh

watch:
	find src -name '*.tex' -o -name '*.bib' | entr make main.pdf

clean:
	cd src && latexmk -r ../latexmkrc -C main.tex
	rm -f src/main.bbl
	rm -f main.pdf

.PHONY: help watch clean