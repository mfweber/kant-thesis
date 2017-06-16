#!/bin/bash
pdflatex main
makeglossaries main
biber main
pdflatex main
pdflatex main
