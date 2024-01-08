quick:
	# assume (or ignore) references
	xelatex --shell-escape main.tex

all:
	# first pass
	xelatex --shell-escape main.tex
	# references
	biber main
	# second pass
	xelatex --shell-escape main.tex
