all: spiewnikA5 spiewnikA4 spiewnikA4h spiewnikTV spiewnikMobi

spiewnikA5: koledy.tex spiewnikA5.tex
	pdflatex spiewnikA5.tex
	songidx idxA5.sxd idxA5.sbx
	pdflatex spiewnikA5.tex

spiewnikMobi: koledy.tex spiewnikMobi.tex
	pdflatex spiewnikMobi.tex
	songidx idxMobi.sxd idxMobi.sbx
	pdflatex spiewnikMobi.tex
	ebook-convert spiewnikMobi.pdf spiewnikKoled.mobi
	rm spiewnikMobi.pdf

spiewnikA4: koledy.tex spiewnikA4.tex
	pdflatex spiewnikA4.tex
	songidx idxA4.sxd idxA4.sbx
	pdflatex spiewnikA4.tex

spiewnikTV: koledy.tex spiewnikTV.tex
	pdflatex spiewnikTV.tex
	songidx idxTV.sxd idxTV.sbx
	pdflatex spiewnikTV.tex
	
spiewnikA4h: koledy.tex spiewnikA4h.tex
	pdflatex spiewnikA4h.tex
	songidx idxA4h.sxd idxA4h.sbx
	pdflatex spiewnikA4h.tex


clean:
	rm -f *aux *sxc *sxd *sbx *out *log *pdf *.nav *.snm *.toc



#instalacja latex songs:
# sudo apt-get install texlive-lang-polish
# #./configure --with-texmf-path=/usr/local/share/texmf/ (dawniej)
#./configure texmfdir=/usr/local/share/texmf/
# make
# sudo make install

