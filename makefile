.PHONY: all

all: habits.pdf habits.pptx

%.pdf: %.txt
	pandoc -t beamer $< -o $@

%.pptx: %.txt
	pandoc $< -o $@
