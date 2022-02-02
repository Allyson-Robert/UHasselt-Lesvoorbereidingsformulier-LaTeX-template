% Standard preamble for homework and tests
% Written by Allyson Robert

% Declares itself
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhlvb-slides}[2020/10/18 A class built to produce lesson preparation forms in the master of education at Hasselt University]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Packages         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[aspectratio=169,t]{beamer}

%% Language package
\RequirePackage[dutch]{babel}

% Layout definition
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage[T1]{fontenc}
\RequirePackage[backend=biber,style=apa]{biblatex}
\RequirePackage[final]{pdfpages}
\RequirePackage{soul}
% \RequirePackage[dvipsnames,table]{xcolor}

% Open Sans font is easier to read
\RequirePackage[default,oldstyle,scale=0.95]{opensans}

% References and links
% \RequirePackage[colorlinks=true, linktoc=all]{hyperref}
% \RequirePackage[noabbrev,dutch]{cleveref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Option Handling      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@showhelp
\@showhelpfalse

\DeclareOption{showhelp}{\@showhelptrue}

\newif\if@showextra
\@showextrafalse

\DeclareOption{showextra}{\@showextratrue}

\newif\if@darkmode
\@darkmodefalse

\DeclareOption{darkmode}{\@darkmodetrue}

\DeclareOption*{\OptionNotUsed}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Definition of things   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Shorthand for new paragraph
\newcommand{\npar}{\par\medskip} 

% No indentation
\setlength\parindent{0pt}

% Switch to uppercase
\newcommand{\upperC}[1]{\expandafter\MakeUppercase\expandafter{#1}}
\newcommand{\allCapsPar}[1]{\MakeUppercase{\textbf{#1}}}

% Custom lengths
\newlength{\msize}
\setlength{\msize}{245.5mm}

\newlength{\thirds}
\setlength{\thirds}{50mm}
\newlength{\tabtitle}
\setlength{\tabtitle}{16mm}
\newlength{\tabcontent}
\setlength{\tabcontent}{28mm}
\newlength{\pagelen}
\setlength{\pagelen}{3\thirds}
\newlength{\titlelen}
\setlength{\titlelen}{135mm}

\newlength{\lesdoelwidth}
\setlength{\lesdoelwidth}{30mm}
\newlength{\lesactiviteitwidth}
\setlength{\lesactiviteitwidth}{115mm}
\newlength{\lesspacingwidth}
\setlength{\lesspacingwidth}{6mm}

% Colour
\colorlet{mygray}{black!20}

% Helping/Informational text visible only when the option is added
\if@showhelp
    \newcommand{\helpingtext}[1]{
        \begingroup
            \scriptsize
            \color{black!50!}
            #1
        \endgroup
    }
\else
    \newcommand{\helpingtext}[1]{}
\fi

\if@showextra
    \newcommand{\extratext}[1]{
        \begingroup
            \scriptsize
            \color{black!50!}
            \textbf{#1}
        \endgroup
    }
\else
    \newcommand{\extratext}[1]{}
\fi

% Make the PDF darkmode for editing LATE AT NIGHT when the option is added
\if@darkmode
    \pagecolor[rgb]{0.05,0.05,0.05}
    \color[rgb]{0.5,0.5,0.5}
\fi

% Allow lesdoelen to be referenced explicitly
\makeatletter
\def\namedlabel#1#2{\begingroup
    #2%
    \def\@currentlabel{#2}%
    \phantomsection\label{#1}\endgroup
}
\makeatother

% Set slide left and right margins 
\setbeamersize{text margin left=3mm}
\setbeamersize{text margin right=3mm}

\renewcommand*{\bibfont}{\scriptsize}

% Todo command (Change highlight colour)
\makeatletter
\let\HL\hl
\renewcommand\hl{%
  \let\set@color\beamerorig@set@color
  \let\reset@color\beamerorig@reset@color
  \HL}
\makeatother
\sethlcolor{cyan}
\newcommand{\todo}[1]{\hl{FILL: #1}}

%%%%%%%%%%%%%%%
%   CONTEXT   %
%%%%%%%%%%%%%%%
% \newcommand*{\theauthor}{Insert \textbackslash author\{\}}
% Student Info
\newcommand*{\lesonderwerp}[1]{\gdef\thelesonderwerp{#1}}
\newcommand*{\thelesonderwerp}{Insert \textbackslash lesonderwerp\{\}}

\newcommand*{\opleiding}[1]{\gdef\theopleiding{#1}}
\newcommand*{\theopleiding}{Insert \textbackslash opleiding\{\}}

\newcommand*{\vakdidactiek}[1]{\gdef\thevakdidactiek{#1}}
\newcommand*{\thevakdidactiek}{Insert \textbackslash vakdidactiek\{\}}

\newcommand*{\stageonderdeel}[1]{\gdef\thestageonderdeel{#1}}
\newcommand*{\thestageonderdeel}{Insert \textbackslash stageonderdeel\{\}}

% Mentor Info
\newcommand*{\mentornaam}[1]{\gdef\thementornaam{#1}}
\newcommand*{\thementornaam}{Insert \textbackslash mentornaam\{\}}

\newcommand*{\mentormail}[1]{\gdef\thementormail{#1}}
\newcommand*{\thementormail}{Insert \textbackslash mentormail\{\}}

% Begeleider info
\newcommand*{\begeleidernaam}[1]{\gdef\thebegeleidernaam{#1}}
\newcommand*{\thebegeleidernaam}{Insert \textbackslash begeleidernaam\{\}}

\newcommand*{\begeleidermail}[1]{\gdef\thebegeleidermail{#1}}
\newcommand*{\thebegeleidermail}{Insert \textbackslash begeleidermail\{\}}

% Klas
\newcommand*{\klasnaam}[1]{\gdef\theklasnaam{#1}}
\newcommand*{\theklasnaam}{Insert \textbackslash klasnaam\{\}}

\newcommand*{\onderwijsvorm}[1]{\gdef\theonderwijsvorm{#1}}
\newcommand*{\theonderwijsvorm}{Insert \textbackslash onderwijsvorm\{\}}

\newcommand*{\finaliteit}[1]{\gdef\thefinaliteit{#1}}
\newcommand*{\thefinaliteit}{Insert \textbackslash finaliteit\{\}}

\newcommand*{\studierichting}[1]{\gdef\thestudierichting{#1}}
\newcommand*{\thestudierichting}{Insert \textbackslash studierichting\{\}}

\newcommand*{\klasaantal}[1]{\gdef\theklasaantal{#1}}
\newcommand*{\theklasaantal}{Insert \textbackslash klasaantal\{\}}

% Stageles
\newcommand*{\lesdatum}[1]{\gdef\thelesdatum{#1}}
\newcommand*{\thelesdatum}{Insert \textbackslash lesdatum\{\}}

\newcommand*{\lesuur}[1]{\gdef\thelesuur{#1}}
\newcommand*{\thelesuur}{Insert \textbackslash lesuur\{\}}

\newcommand*{\leslokaal}[1]{\gdef\theleslokaal{#1}}
\newcommand*{\theleslokaal}{Insert \textbackslash leslokaal\{\}}

\newcommand*{\onderwijsvak}[1]{\gdef\theonderwijsvak{#1}}
\newcommand*{\theonderwijsvak}{Insert \textbackslash onderwijsvak\{\}}

% Stageschool
\newcommand*{\schoolnaam}[1]{\gdef\theschoolnaam{#1}}
\newcommand*{\theschoolnaam}{Insert \textbackslash schoolnaam\{\}}

\newcommand*{\schooladres}[1]{\gdef\theschooladres{#1}}
\newcommand*{\theschooladres}{Insert \textbackslash schooladres\{\}}

\newcommand*{\schoolnet}[1]{\gdef\theschoolnet{#1}}
\newcommand*{\theschoolnet}{Insert \textbackslash schoolnet\{\}}

\newcommand*{\leerplanurl}[1]{\gdef\theleerplanurl{\url{#1}}}
\newcommand*{\theleerplanurl}{Insert \textbackslash leerplanurl\{\}}

\newcommand*{\leerplannummer}[1]{\gdef\theleerplannummer{\##1}}
\newcommand*{\theleerplannummer}{Insert \textbackslash leerplannummer\{\}}

\newcommand*{\koepel}[1]{\gdef\thekoepel{#1}}
\newcommand*{\thekoepel}{Insert \textbackslash koepel\{\}}

%%%%%%%%%%%%%%%%%%%%%%%
% Custom environments %
%%%%%%%%%%%%%%%%%%%%%%%
% Lesfase definition
\newenvironment<>{lesfase}[1]{%\
    \begin{beamercolorbox}[wd=\textwidth,rounded=true,shadow=true]{lesfase}
        \textbf{#1}
    \end{beamercolorbox}
}

% Lesdeel definition
\newenvironment{lesdeel}[1]{
    \blfootnote{#1}
}{
} 

\makeatletter
\def\blfootnote{\xdef\@thefnmark{}\@footnotetext}
\makeatother


% Commands for an OLG (ignore answers in slide mode)
\newcommand{\startolg}{\begin{enumerate}}
\newcommand{\stopolg}{\end{enumerate}}

\newcommand{\vraag}[1]{\item{#1}}
\newcommand{\antwoord}[1]{}

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom layout elements %
%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbeamercolor{lesfase}{fg=black,bg=mygray}

\setbeamertemplate{headline}{
    \vspace{1mm}
    \hspace{3mm}
    \begin{minipage}[b]{\titlelen}
    \small{\textbf{\color{red} LESVOORBEREIDINGSFORMULIER \\ EDUCATIEVE MASTEROPLEIDINGEN}}
    \end{minipage}%
    \begin{minipage}[t]{15mm}
        \includegraphics[width=15mm]{UHasselt_Logo.jpg}
    \end{minipage}
    \hspace{3mm}
    \vspace{1mm}
}

\newcommand{\slidesbijlage}{
    \setbeamertemplate{headline}{}
    \setbeamercolor{background canvas}{bg=} % removee
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Transform article commands so they behave %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginSection{}
\newcommand{\lvbtitel}{}
\newcommand{\identspacer}{}
\newcommand{\Identificatie}{\tiny}
\newcommand{\Lesdoelen}{\scriptsize\let\small\scriptsize}
\newcommand{\Bronnen}{\scriptsize}
\newcommand{\lesschematitel}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Shorthand for helping texts %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\input{uhlvb_helptext}