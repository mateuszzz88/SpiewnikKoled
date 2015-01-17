all: spiewnikA5 spiewnikA4h

spiewnikA5: koledy.tex spiewnikA5.tex
	pdflatex spiewnikA5.tex
	songidx idxA5.sxd idxA5.sbx
	pdflatex spiewnikA5.tex
	
spiewnikA4h: koledy.tex spiewnikA4h.tex
	pdflatex spiewnikA4h.tex
	songidx idxA4h.sxd idxA4h.sbx
	pdflatex spiewnikA4h.tex


clean:
	rm -f *aux *sxc *sxd *sbx *out *log *pdf



#instalacja latex songs:
# sudo apt-get install texlive-lang-polish
# #./configure --with-texmf-path=/usr/local/share/texmf/ (dawniej)
#./configure texmfdir=/usr/local/share/texmf/
# make
# sudo make install