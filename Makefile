all:
	max_print_line=1000 pdflatex -output-directory ./build CS453_Team6_PaperPresentation.tex | grep -v \/usr\/local
	bibtex ./build/CS453_Team6_PaperPresentation
	max_print_line=1000 pdflatex -output-directory ./build CS453_Team6_PaperPresentation.tex | grep -v \/usr\/local
	max_print_line=1000 pdflatex -output-directory ./build CS453_Team6_PaperPresentation.tex | grep -v \/usr\/local

clean:
	cd build
	-rm *.bbl *.aux *.blg *.log *.toc *.glo *.gls *.glg *.ist

once:
	max_print_line=1000 pdflatex -output-directory ./build CS453_Team6_PaperPresentation.tex | grep -v \/usr\/local

