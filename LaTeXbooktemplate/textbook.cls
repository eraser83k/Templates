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
\RequirePackage{kotex}         % for Korean language support
\RequirePackage{amssymb}       % for math symbols
\RequirePackage{tikz}          % for TikZ graphics
\RequirePackage{tkz-euclide}   % for Euclidean geometry in TikZ
\usetikzlibrary{calc, intersections, through, backgrounds, angles, quotes, decorations.markings}
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
\newcommand{\QED}{\hfill{\blacksquare}}      % End of proof symbol
\newcommand{\useindent}{\quad}      % Indent command

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
% 8. Custom Formats
% =========================
