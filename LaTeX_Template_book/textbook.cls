\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{textbook}[2025/07/06 academic textbook]

% =======================
% 1. Initial Class Loading
% =======================
\LoadClass[10pt, twoside, openany]{book}

% =======================
% 2. Required Packages
% =======================
\RequirePackage{graphicx}      % for images
\RequirePackage{amsmath}       % for math
\RequirePackage{amsthm}
\RequirePackage{kotex}         % for Korean language support
\RequirePackage{amssymb}       % for math symbols
\RequirePackage{tikz}          % for TikZ graphics
\RequirePackage{tikz-3dplot}
\RequirePackage{tkz-euclide}   % for Euclidean geometry in TikZ
\usetikzlibrary{calc, intersections, through, backgrounds, angles, quotes, decorations.markings,3d,cd,arrows,positioning,spy,}
\RequirePackage{titlesec}      % for chapter/section title styles
\RequirePackage{fancyhdr}      % for custom page styles
\RequirePackage[top=2.5cm, bottom=2.5cm, left=3.5cm, right=3.5cm, headheight=14.5pt]{geometry} % for page dimensions
\RequirePackage{parskip}       % for space between paragraphs
\RequirePackage{pdfpages}      % for adding PDFs (e.g., cover pages)
\RequirePackage{subfiles}      % for multi-file documents
\RequirePackage{xcolor}        % for color support
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage[most]{tcolorbox}
\RequirePackage{xparse}
\RequirePackage{polynom,
polynomial}
\RequirePackage{verbatim}
\RequirePackage[
    colorlinks=true,
    linkcolor=blue,
    urlcolor=blue,
    citecolor=red
]{hyperref}
\RequirePackage{bm}


% =========================
% 3. Page Style Settings
% =========================
\pagestyle{fancy}
\fancyhf{} % remove all header/footer content
\fancyfoot[C]{\thepage} % page number at the center of footer
\renewcommand{\headrulewidth}{0pt} % remove the horizontal line in the header
\renewcommand{\footrulewidth}{0pt} % remove the horizontal line in the footer

% =========================
% 4. Chapter/Section Styles
% =========================
\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptername\ \thechapter}{20pt}{\Huge}
  
\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}

\titleformat{\subsection}
  {\normalfont\large\bfseries}{\thesubsection}{1em}{}

% =========================
% 5. Bibliography Settings
% =========================
\RequirePackage[
  backend=biber,  % use biber for bibliography processing
  sorting=ynt,    % sorting by year, name, title
  citestyle=authortitle  % citation style: author-title
]{biblatex}
\addbibresource{biblist.bib} % bibliography file

% =========================
% 6. Custom Macros
% =========================
\newcommand{\sol}{\textit{\textbf{sol.}}}   % Solution macro
\newcommand{\Indent}{\quad}      % Indent command

% =========================
% 7. Custom Colors
% =========================
% Define custom colors
\definecolor{defscol}{HTML}{ecd8d7} %For definitions
\definecolor{asumscol}{HTML}{ecd8d7} %For Assumptions

\definecolor{rmkscol}{HTML}{313160} %For remarks
\definecolor{exmscol}{HTML}{e04b52} %For examples

\definecolor{lemscol}{HTML}{2c3943} %For Lemmes
\definecolor{thmscol}{HTML}{595765} %For Theorems
\definecolor{prpscol}{HTML}{9c98b1} %For proposition
\definecolor{corscol}{HTML}{dfd9fd} %For corrolaries

\definecolor{clmscol}{HTML}{165c58} %For claims
\definecolor{facscol}{HTML}{28a8a1} %For facts

% =========================
% 8. Custom Letters
% =========================
\newcommand{\A}{\mathbb{A}}
\renewcommand{\AA}{\mathcal{A}}
\newcommand{\AAA}{\mathscr{A}}

\newcommand{\B}{\mathbb{B}}
\newcommand{\BB}{\mathcal{B}}	
\newcommand{\BBB}{\mathscr{B}}

\newcommand{\C}{\mathbb{C}}
\newcommand{\CC}{\mathcal{C}}	
\newcommand{\CCC}{\mathscr{C}}

\newcommand{\D}{\mathbb{D}}
\newcommand{\DD}{\mathcal{D}}
\newcommand{\DDD}{\mathscr{D}}

\newcommand{\E}{\mathbb{E}}
\newcommand{\EE}{\mathcal{E}}
\newcommand{\EEE}{\mathscr{E}}

\newcommand{\F}{\mathbb{F}}
\newcommand{\FF}{\mathcal{F}}
\newcommand{\FFF}{\mathscr{F}}

\newcommand{\G}{\mathbb{G}}
\newcommand{\GG}{\mathcal{G}}
\newcommand{\GGG}{\mathscr{G}}

\renewcommand{\H}{\mathbb{H}}	
\newcommand{\HH}{\mathcal{H}}	
\newcommand{\HHH}{\mathscr{H}}

\newcommand{\I}{\mathbb{I}}
\newcommand{\II}{\mathcal{I}}	
\newcommand{\III}{\mathscr{I}}

\newcommand{\J}{\mathbb{J}}
\newcommand{\JJ}{\mathcal{J}}	
\newcommand{\JJJ}{\mathscr{J}}

\newcommand{\K}{\mathbb{K}}
\newcommand{\KK}{\mathcal{K}}	
\newcommand{\KKK}{\mathscr{K}}

\renewcommand{\L}{\mathbb{L}}	
\newcommand{\LL}{\mathcal{L}}	
\newcommand{\LLL}{\mathscr{L}}

\newcommand{\M}{\mathbb{M}}
\newcommand{\MM}{\mathcal{M}}	
\newcommand{\MMM}{\mathscr{M}}

\newcommand{\N}{\mathbb{N}}
\newcommand{\NN}{\mathcal{N}}
\newcommand{\NNN}{\mathscr{N}}

\renewcommand{\O}{\mathbb{O}}	
\newcommand{\OO}{\mathcal{O}}	
\newcommand{\OOO}{\mathscr{O}}

\renewcommand{\P}{\mathbb{P}}	
\newcommand{\PP}{\mathcal{P}}	
\newcommand{\PPP}{\mathscr{P}}

\newcommand{\Q}{\mathbb{Q}}
\newcommand{\QQ}{\mathcal{Q}}	
\newcommand{\QQQ}{\mathscr{Q}}

\newcommand{\R}{\mathbb{R}}
\newcommand{\RR}{\mathcal{R}}	
\newcommand{\RRR}{\mathscr{R}}

\renewcommand{\S}{\mathbb{S}}	
\renewcommand{\SS}{\mathcal{S}}
\newcommand{\SSS}{\mathscr{S}}

\newcommand{\T}{\mathbb{T}}
\newcommand{\TT}{\mathcal{T}}	
\newcommand{\TTT}{\mathscr{T}}

\newcommand{\U}{\mathbb{U}}
\newcommand{\UU}{\mathcal{U}}	
\newcommand{\UUU}{\mathscr{U}}

\newcommand{\V}{\mathbb{V}}
\newcommand{\VV}{\mathcal{V}}
\newcommand{\VVV}{\mathscr{V}}

\newcommand{\W}{\mathbb{W}}
\newcommand{\WW}{\mathcal{W}}	
\newcommand{\WWW}{\mathscr{W}}

\newcommand{\X}{\mathbb{X}}
\newcommand{\XX}{\mathcal{X}}
\newcommand{\XXX}{\mathscr{X}}

\newcommand{\Y}{\mathbb{Y}}
\newcommand{\YY}{\mathcal{Y}}	
\newcommand{\YYY}{\mathscr{Y}}

\newcommand{\Z}{\mathbb{Z}}
\newcommand{\ZZ}{\mathcal{Z}}
\newcommand{\ZZZ}{\mathscr{Z}}

% =========================
% 8. Custom Symbols
% =========================
\newcommand{\ihat}{\hat{i}}
\newcommand{\jhat}{\hat{j}}
\newcommand{\khat}{\hat{k}}
\renewcommand{\l}[0]{\ell}
\newcommand{\one}[0]{\boldsymbol{1}}
\newcommand{\identity}{\boldsymbol{1}}
\newcommand{\zero}[0]{{\boldsymbol{0}}}
\renewcommand{\qedsymbol}{$\blacksquare$}

% =========================
% 9. Custom Operators
% =========================
\renewcommand{\binom}[2]{\left(\genfrac{}{}{0pt}{0}{#1}{#2}\right)}%binomial coefficient
\newcommand{\Norma}[1]{\left\|#1\right\|}%Norm 
\newcommand{\Tr}[1]{\text{Tr}\hspace{-.05cm}\left(#1\right)}%trace of A
\newcommand{\Res}[2]{\left.#1\right|_{#2}}%with respect to A
\newcommand{\Limit}[3]{\lim_{#1\to #2}{#3}}