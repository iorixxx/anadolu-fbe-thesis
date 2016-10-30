#!/usr/bin/env bash

# strip latex code required to compile individual chapters

for f in Chapter*.tex; do
	sed '1,3d;/bibliographystyle/,$d' ${f} > "Stripped${f}"
done

sed '/url.*=/d;/doi.*=/d;/editor.*=/d' References.bib > StrippedReferences.bib

rm -rf *.aux
rm -rf *.toc
rm -rf *.lot
rm -rf *.log
rm -rf *.lof
rm -rf *.blg
rm -rf *.synctex.gz
rm -rf Chapter*.pdf
