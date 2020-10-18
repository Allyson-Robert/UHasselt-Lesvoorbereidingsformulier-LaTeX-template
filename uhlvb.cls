% Standard preamble for homework and tests
% Written by Allyson Robert

% Declares itself
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhlvb}[2019/02/06 A course class suitable for Hasselt University coursework]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Packages         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[11pt, a4paper]{article}

%% Language package
\RequirePackage[dutch]{babel}

% Get access to \theauthor
\RequirePackage{titling}

% Layout definition
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage[T1]{fontenc}
\RequirePackage[explicit]{titlesec}
\RequirePackage[dvipsnames,table]{xcolor}
\RequirePackage[landscape,margin=0.5in,footskip=5mm]{geometry}

% References and links
\RequirePackage[colorlinks=true, linktoc=all]{hyperref}
\RequirePackage[noabbrev]{cleveref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Definition of things   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Shorthand for new paragraph
\newcommand{\npar}{\par\medskip} 

% No indentation
\setlength\parindent{0pt}

% Switch to uppercase
\newcommand{\upperC}[1]{\expandafter\MakeUppercase\expandafter{#1}}
\newcommand{\allCapsPar}[1]{\paragraph{\upperC{#1}}}

% Align all enumerate environments
\setlist[enumerate,1]{align=left}

% Custom lengths
\newlength{\msize}
\setlength{\msize}{245.5mm}

\newlength{\thirds}
\setlength{\thirds}{3.525in}

\newlength{\lesdoelwidth}
\setlength{\lesdoelwidth}{70.5mm}
\newlength{\lesactiviteitwidth}
\setlength{\lesactiviteitwidth}{188mm}
\newlength{\lesspacingwidth}
\setlength{\lesspacingwidth}{10mm}

% Colour
\colorlet{mygray}{black!20}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   CONTEXT   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*{\theauthor}{Insert \textbackslash author\{\}}
% Student Info
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

% Lesdeel definition
\newenvironment{lesdeel}[1]{
    \begin{minipage}[t]{\lesdoelwidth}
        #1
    \end{minipage}\hspace{\lesspacingwidth}%
    \begin{minipage}[t]{\lesactiviteitwidth}
}{
    \end{minipage}%
    \npar
} 

% Lesfase definition
\newcommand{\lesfase}[1]{
    \npar{
        \noindent\colorbox{mygray}{
            \noindent\begin{minipage}{267.4mm}
                \textbf{#1}
            \end{minipage}
        }
    }\npar
}

% schemalist definition
\newlist{schemalist}{enumerate}{1}
\setlist[schemalist,1]{label=\arabic*., wide,labelwidth=!,labelindent=0pt,itemsep=0pt}


%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom layout elements %
%%%%%%%%%%%%%%%%%%%%%%%%%%

% Definition of the title of the lesschema table
\newcommand{\lesschematitel}{
    \noindent\colorbox{mygray}{%
        \begin{lesdeel}{
            \textbf{Lesdoel(en)} \\
            Aan welke lesdoelen werk je tijdens de verschillende lesfasen?
        }
            \textbf{Onderwijs- en leeractiviteiten} \\
            Welke onderwijs- en leeractiviteiten organiseer je tijdens de verschillende lesfasen?
        \end{lesdeel}%
    }
}

\newcommand{\lvbtitel}{
    \begin{minipage}[b]{\msize}
    \LARGE{\textbf{\color{red} LESVOORBEREIDINGSFORMULIER \\ EDUCATIEVE MASTEROPLEIDINGEN}}
    \end{minipage}
    \begin{minipage}[b]{1in}
        \includegraphics[width=1in]{UHasselt_Logo.jpg}
    \end{minipage}
}

