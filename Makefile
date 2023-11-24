quick:
	# assume (or ignore) references
	latex --shell-escape main.tex
	dvips main.dvi
	ps2pdf main.ps

all:
	# first pass
	latex --shell-escape main.tex
	dvips main.dvi
	ps2pdf main.ps
	# references
	biber main
	# second pass
	latex --shell-escape main.tex
	dvips main.dvi
	ps2pdf main.ps
