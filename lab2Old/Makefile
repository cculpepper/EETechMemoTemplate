all: template.tex 
	#latex template.tex
	#dvipdf template.dvi
	latexmk -pdflatex='pdflatex -file-line-error -synctex=1' -pdf -r /home/chris/.latexmkrc
	
view: all
	latexmk -pvc -pdflatex='pdflatex -file-line-error -synctex=1' -pdf -r /home/chris/.latexmkrc

clean: 
	rm template.aux
	rm template.dvi
	rm template.log
	rm template.pdf
