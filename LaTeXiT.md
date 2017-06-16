# Font installation (macOS)

Here's a rough outline of how to use garamondx with LaTeXiT and Adobe Illustrator in macOS. Since I do not own an Illustrator license anymore, I cannot check whether the steps work. If you want to pull LaTeXiT equations straight into Adobe Illustrator without having to outline fonts, those fonts need to be installed first. For this purpose, get the type1/*.pfb fonts from [garamondx](https://www.ctan.org/tex-archive/fonts/garamondx/type1) and copy them into the directory ~/Library/Application\ Support/Adobe/Fonts/. For some reason, font sizes differ between LaTeXiT and Illustrator:

| LaTeXiT  | Illustrator |
| -------- | ----------- |
| 8.37 pt  | 10pt        |
| 9.2 pt   | 11pt        |
| 10 pt    | 12pt        |

I used the following preamble to enable garamondx in LaTeXiT (I can't recall why I activated e.g. Biolinum...):

	\documentclass[ngerman, british,a4paper,twoside,12pt,DIV=10, BCOR=10mm,headinclude=true, footinclude=false, headsepline=false, footsepline=false,numbers=noenddot,bibliography=totoc,final]{scrbook}

	\usepackage{amsmath}
	\usepackage{amssymb}
	\usepackage{mathtools}

	\usepackage[T1]{fontenc}
	\usepackage[utf8]{inputenc}
	\usepackage[ngerman,main=british]{babel}
	\usepackage{csquotes}
	\usepackage{textcomp}
	\usepackage{microtype}

	\usepackage{garamondx}
	\usepackage[garamondx,bigdelims]{newtxmath}
	\usepackage{biolinum}
	\usepackage[varqu,varl]{zi4}

	% Some not so important definitions
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	% Text in Equations
	\newcommand*{\mathtext}[1]{\textnormal{#1}}
	\newcommand*{\mathtextit}[1]{\textit{#1}}

	% Mathematical functions
	\newcommand*{\arcosh}[1]{\mathtext{arcosh}\,#1}
 
	% Differentials and integral signs
	\newcommand*{\diff}[1]{\mathop{}\!\mathrm{d}#1}
	\usepackage{esint}%  Some more integral signs
	\newcommand*{\pathintegral}[2]{\fint_{#1}^{#2}\!}

	% Sets
	\newcommand*{\naturals}{\mathbb{N}}
	\newcommand*{\integers}{\mathbb{Z}}
	\newcommand*{\rationals}{\mathbb{Q}}
	\newcommand*{\reals}{\mathbb{R}}
	\newcommand*{\complex}{\mathbb{C}}
	\newcommand*{\quaternions}{\mathbb{H}}
	\newcommand*{\octonions}{\mathbb{O}}
	\newcommand*{\lattice}{\mathbb{L}}

	% Bold italic vector
	\newcommand\hmmax{0}%  Patch for bm. With garamondx, the bold italic vector looks better,
	\newcommand\bmmax{0}%  it's not great...but ok. Don't know why.
	\usepackage{bm}%
	\newcommand*{\vect}[1]{\bm{#1}}  

	% Unit matrix
	\usepackage{dsfont}

	% Miscellaneous
	\newcommand*{\bigO}{\mathord{\mathrm{O}}}
	\newcommand*{\transpose}{\intercal}
	\newcommand*{\laplaceOp}{\Delta}
	\newcommand*{\discreteLaplaceOp}{\underline{\Delta}}
	\newcommand*{\unitMatrix}{\mathds{1}}
	\newcommand*{\hermite}{\mathit{He}}	
	\newcommand*{\legendreTransform}{\mathcal{L}}	
	\newcommand*{\fourierTransform}{\mathcal{F}}
	\newcommand*{\complexPath}{\mathcal{C}}	
	\newcommand*{\hldots}{\dots}	
	\newcommand*{\binomCoeff}[2]{\binom{#1}{#2}}

	% Exponential and imaginary unit
	\newcommand*{\ee}{\mathrm{e}}	% or \rme from 
	\newcommand*{\ii}{\mathrm{i}} % or \rmi
