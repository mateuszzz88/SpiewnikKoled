#instalacja latex songs:
# ./configure --with-texmf-path=/usr/local/share/texmf/
# make
# sudo make install

pdflatex koledy.tex &&
songidx titleidx.sxd titleidx.sbx &&
pdflatex koledy.tex
