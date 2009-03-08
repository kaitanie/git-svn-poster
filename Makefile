all: poster
	latex fp2009
	latex fp2009
	dvips -E -o fp2009.eps fp2009.dvi
	ps2pdf fp2009.eps

poster:
	pdflatex poster.tex
	pdflatex poster.tex

clean_all:
	rm -f  *.out *.pdf *.ps *.out
ca:
	rm -f  *.out *.pdf *.ps *.out

gitClone:
	git clone git@github.com:aatos/git-svn-poster.git

gitClonePk:
	git clone git://github.com/kaitanie/git-svn-poster.git

gitAddPk:
	git remote add pkGit git://github.com/kaitanie/git-svn-poster.git

gitFetchPk:
	git fetch pkGit
	git merge pkGit/master
m:
	make; gv fp2009.pdf
