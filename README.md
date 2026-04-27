# LATEX 
This folder includes: 
## Packages 
### Mycustom 
Includes my personal math commmands.  
Common diferential operators written in bold words:     
- \rot for the rotational operator. 
- \diver for the divergence operator.
- \grad for the gradient operator.

Common transformation symbols: 
- \FT{·} for the Fourier Transform Operator. 
- \LT{·} for the Laplace Transform Operator. 

Common matrix operations:
- \Tr{·} for the trace. 
- \diag{·} for denoting a diagonal matrix. 

Common logical commands: 
- \tf for therefore symbol (spacing adjusted). 
- \bc for because symbol (spacing adjusted). 
- \eqdef for writing an equal symbol adorned with a def. over it. 
- \qeq for writing an equal symbol adorned with a '?' over it. 

Other common symbols in calculus: 
- \sign to denote the sign operation. 
- \mean{·} for surrounding an expresion with the angle mean symbol. 
- \ct{·} for displaying a constant text symbol that change according to the language (only spanish and english supported so far). 

Symbols for quantum mechanics/reasoning: 
- \up for an up arrow. 
- \down for a down arrow. 

### Mygeneral
Includes a list of frequently used packages. 

CODIFICATION
- inputenc \[utf8\]
- fontenc \[T1\]

MATHS and PHYSICS
- amsfonts
- amssymb
- mathtools
- physics
- mathrsfs
- amsthm
- empheq
- siunitx
- tensor
- cancel
- bm
- extarrows
- mhchem \[version=4\] (for compatibility)
- esvect \[b\] (selects a default type of arrow)

FIGURES AND TABLES
- graphicx
- float
- wrapfig
- caption
- subcaption
- array
- tabularx
- multirow
- longtable
- xcolor
- geometry \[a4paper, margin=2cm\]

DOCUMENT AND LAYOUT
- setspace
- ragged2e
- fancyhdr
- parskip
- multicol
- sidecap
- ifthen
- xparse
- hyperref
- appendix
- anyfontsize
- enumitem \[shortlabels, inline\] (allows using keys as a), i) as optional arguments for enumerate. Also allows inline lists using the starred version of enumerate )

### Mytheorem_env


Summary — what the package provides
- Custom theorem/remark/definition/problem environments using thmtools + tcolorbox.
- Predefined colored boxed environments: theorem, proposition, corollary, lemma, claim, definition, example, remark, note, problem, solution, raw.
- Numbered and unnumbered (starred) variants for most environments.
- A reusable colored box environment cbox.
- A \Solution command that inserts a horizontal rule and prints the solution label.
- Spanish / English captions are added via \addto\captions... (depends on babel/polyglossia).

Dependencies (must be loaded / available)
- thmtools
- tcolorbox (the package uses \usepackage[most]{tcolorbox})
- xcolor with dvipsnames (for named colors)
- babel or polyglossia if you want language-specific captions (spanish/english)

How to install / load
- Place LaTeX/packages/mytheorems_env.sty in your project or in a directory on TEXINPUTS.
- Load it from your document preamble. Examples:
  - If you keep the file as-is (it declares \ProvidesPackage{packages/mytheorems_env}):
    \usepackage{packages/mytheorems_env}
  - Or rename the package to mytheorems_env.sty and (optionally) fix \ProvidesPackage to mytheorems_env, then:
    \usepackage{mytheorems_env}

Minimal usage example: 
```latex
\documentclass{article}
\usepackage[spanish]{babel} % or [english]
\usepackage{packages/mytheorems_env} % path/name as explained above
\begin{document}

\begin{theorem}[Pythagoras]\label{thm:py}
Let a,b,c satisfy ...
\end{theorem}

\begin{theorem*}
Unnumbered theorem text.
\end{theorem*}

\begin{definition}
A definition example.
\end{definition}

% The manual solution command
\Solution
Here is a resolution written using the package macro.

% Using the generic colored box
\begin{cbox}[title=Tip]
A short tip inside a colored box.
\end{cbox}

\end{document}

```
## Templates 

## LaTeX conversors

# MATLAB  
# C++
# Git 
Just a .gitignore file
