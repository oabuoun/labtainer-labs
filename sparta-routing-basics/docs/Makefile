lab-guide.pdf: lab-guide.tex header.tex
	pdflatex -jobname=lab-guide lab-guide
	pdflatex -jobname=lab-guide lab-guide
	rm -fr auto
	rm -f lab-guide.aux lab-guide.log lab-guide.dvi lab-guide.out

clean:
	rm -fr auto
	rm -f lab-guide.aux lab-guide.log lab-guide.pdf lab-guide.dvi lab-guide.out
