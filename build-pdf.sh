#!/bin/bash

cd src
latexmk -r ../latexmkrc main.tex
mv main.pdf ../main.pdf
chown --reference=../Makefile ../main.pdf main.*