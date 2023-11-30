.PHONY: all

all: zimolzak-data-health-policy-2023-12-05.pdf zimolzak-data-health-policy-2023-12-05.pptx

%.pdf: %.txt
	pandoc -t beamer -H fix.tex $< -o $@

%.pptx: %.txt
	pandoc $< -o $@
