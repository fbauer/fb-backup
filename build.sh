#!/bin/bash
#

mkdir -p doc/images
git checkout master documentation.org
emacs --batch --load=/home/flo/.emacs.d/init.el --eval "(progn (setq org-confirm-babel-evaluate nil)(setq org-export-allow-BIND t))" --visit=documentation.org -f org-export-as-html-batch 

git add documentation.org
git add doc
git commit -m "Documentation update"





