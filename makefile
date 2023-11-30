.PHONY: all

all: habits.pdf habits.pptx

%.pdf: %.txt
	pandoc -t beamer -H fix.tex $< -o $@

%.pptx: %.txt
	pandoc $< -o $@
