#instalacja latex songs:
# sudo apt-get install texlive-lang-polish
# #./configure --with-texmf-path=/usr/local/share/texmf/ (dawniej)
#./configure texmfdir=/usr/local/share/texmf/
# make
# sudo make install

pdflatex koledy.tex &&
songidx titleidx.sxd titleidx.sbx &&
pdflatex koledy.tex
