# drawings := $(wildcard drawings/*/main.pdf)
# drawings_src := $(wildcard drawings/*/main.tex)
# $(info $(drawings))

# $(drawings): $(drawings_src)
# 	xelatex --shell-escape $(drawings_src)

main.pdf: main.tex $(drawings)
	# assume (or ignore) references
	xelatex --shell-escape main.tex

full:
	# first pass
	xelatex --shell-escape main.tex
	# references
	biber main
	# second pass
	xelatex --shell-escape main.tex

clean:
	rm -rf *.aux *.auxlock *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc _minted-* svg-inkscape
