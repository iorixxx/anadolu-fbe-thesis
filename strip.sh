#!/usr/bin/env bash

#   Copyright 2016 Ahmet Arslan
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

# strips latex code required to compile individual chapters from Chapter*.tex
# and generates StrippedChapter*.tex to compile whole main file

for f in Chapter*.tex; do
  sed -n '/\chapter{/,/\bibliographystyle{/p' ${f} > Temp${f}
  sed '$d' Temp${f} > Stripped${f}
  rm -f Temp${f}
done

# strips url, doi and editor attributes from BibTeX entries
# if you want to keep them comment out the following line
sed '/url.*=/d;/doi.*=/d;/editor.*=/d' References.bib > StrippedReferences.bib

rm -rf *.aux
rm -rf *.toc
rm -rf *.lot
rm -rf *.log
rm -rf *.lof
rm -rf *.blg
rm -rf *.synctex.gz
rm -rf Chapter*.pdf
