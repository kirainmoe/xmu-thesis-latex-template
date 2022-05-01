TEX     = xelatex
TEXFILE = thesis.tex
FLAGS   = -xelatex -shell-escape
LATEXMK = latexmk

all:
	$(LATEXMK) $(FLAGS) $(TEXFILE)

clean:
	rm -rf \
		**/*.log \
		**/*.aux \
		*.pdf \
		*.aux \
		*.bcf \
		*.log \
		*.run.xml \
		*.toc \
		*.blg \
		*.fdb_latexmk \
		*.fls \
		*.xdv \
		*.bbl \
		*.out \
		*.toe \
		_minted-*