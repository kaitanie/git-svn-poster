all:
	latex fp2009
	latex fp2009
	dvips -o fp2009.ps fp2009.dvi
	ps2pdf fp2009.ps

clean_all:
	rm -f  *.out *.pdf *.ps

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