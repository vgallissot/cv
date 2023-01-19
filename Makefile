NAME=cv
TEXFILE=$(NAME).tex
PDFFILE=$(NAME).pdf
DEBUG=

.PHONY: clean purge requirements cv
default: cv

cv:
	xelatex $(TEXFILE)
ifndef DEBUG
	$(MAKE) clean
endif

clean:
	rm -f *.aux *.log *.out *.bcf *.xml

purge: clean
	rm -f $(PDFFILE)

requirements:
	dnf install -y texlive-moderncv texlive-multibib texlive-fontawesome5 texlive-academicons texlive-multirow texlive-arydshln
