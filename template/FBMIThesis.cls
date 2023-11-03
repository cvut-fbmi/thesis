% Customized class for CTU FBMI theses
% 
% @author:  Marek Sokol <marek.sokol@cvut.cz>, 
%
% @version: 2023-01-10
% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template/FBMIThesis}[2023-01-10 CTU FBMI customized class for theses]


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% Options
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

\newif \if@thesistypedefined
\DeclareOption{thesis=B} { \gdef \@thesistype{B} \@thesistypedefinedtrue }
\DeclareOption{thesis=M} { \gdef \@thesistype{M} \@thesistypedefinedtrue }
\DeclareOption{thesis=D} { \gdef \@thesistype{D} \@thesistypedefinedtrue }

\newif \if@langdefined
\newif \if@langczech

\DeclareOption{czech} {
	\@langczechtrue
	\@langdefinedtrue
}

\DeclareOption{english} {
	\@langczechfalse
	\@langdefinedtrue
}

\ExecuteOptions{12pt, czech}
\ProcessOptions

\if@langdefined \else
	\ClassError{FBMIThesis}{Language not specified}{Add option czech for Czech language or option english for English language.}
\fi

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% Settings
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

\LoadClass[a4paper,oneside,12pt]{memoir}
\setlrmarginsandblock{3.5cm}{2.5cm}{*}
\setulmarginsandblock{2.5cm}{2.5cm}{1}
\checkandfixthelayout

% Packages
\RequirePackage{silence}
\WarningFilter{nameref}{The definition}
\RequirePackage[protrusion=true]{microtype}
\RequirePackage{mathtools,amssymb}
\RequirePackage[T1]{fontenc}
\RequirePackage[nomath]{lmodern}
\RequirePackage{float}
\RequirePackage{siunitx}
\DisemulatePackage{setspace}
\RequirePackage{setspace}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{subcaption}
\RequirePackage{graphicx}
\RequirePackage{pdfpages}
\RequirePackage[flushleft]{threeparttable}
\RequirePackage{tocloft}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{footnote}
\RequirePackage{url}
\RequirePackage{enumitem}
\RequirePackage{xurl}
\RequirePackage[xparse]{tcolorbox}
\RequirePackage{calc}
\RequirePackage[pdfusetitle,hidelinks]{hyperref}

% Support for acronyms
\RequirePackage[nopostdot,symbols,acronym,nonumberlist,toc,automake,nolangwarn,section,nogroupskip]{glossaries-extra}
\RequirePackage{glossary-longextra}
\glsaddstoragekey{unit}{}{\glsentryunit}
\glstocfalse
\makeglossaries
\loadglsentries{glossary.tex}

% Language-dependent package settings
\if@langczech
     % Language support
    \RequirePackage[main=czech,english]{babel}
    \RequirePackage[ruled,lined,linesnumbered,czech,onelanguage]{algorithm2e}

     % Change entry name in the symbol list
    \newglossarystyle{long-fbmi-symbols}{%
     \setglossarystyle{long-name-desc-sym}% 
     	\renewcommand*{\glsgroupskip}{}
        \renewcommand{\entryname}{Symbol}
        \renewcommand{\symbolname}{Jednotka}
    }
    
    % Change entry name in the acronym list
    \newglossarystyle{long-fbmi-acronyms}{%
     \setglossarystyle{long-name-desc}% 
        \renewcommand{\entryname}{Zkratka}
    }

    \renewcommand*{\acronymname}{Seznam zkratek}
    \renewcommand*{\glssymbolsgroupname}{Seznam symbolů}
    \renewcommand*{\descriptionname}{Význam}

     % Czech quotes 
    \RequirePackage{csquotes}
    \def\uv#1{„#1“}
    \DeclareQuoteStyle{czech}
    		{\quotedblbase}			% opening outer mark
    		{\textquotedblleft}		% closing outer mark
    		{\textquoteleft}		% opening inner mark
    		{\textquoteright}		% closing inner mark
    \setquotestyle{czech}
    
    % Theorems
    \newtheorem{theorem}{Teorém}[chapter]
    
    % Change memoir appendices name
    \renewcommand{\appendixpagename}{\sffamily Přílohy}
    \renewcommand{\appendixtocname}{Přílohy}

    % Acronyms
	\renewcommand*{\acronymname}{Seznam použitých zkratek}
    \def\fbmibibtitle{Seznam použité literatury}

    % Czech titles
    \def\chapcont{Obsah}
    \def\chapintro{Úvod}
    \def\chapstate{Přehled současného stavu}
    \def\chapaims{Cíle práce}
    \def\chapmeth{Metody}
    \def\chapres{Výsledky}
    \def\chapdis{Diskuse}
    \def\chapconc{Závěr}
    \def\chapref{Seznam použité literatury}
    \def\chapsymacr{Seznam symbolů a zkratek}
    % \def\chapsym{}
    % \def\chapacr{}
\else
    % Language support
    \RequirePackage[main=english,czech]{babel}
    \RequirePackage{csquotes}
    \RequirePackage[ruled,lined,linesnumbered,english,onelanguage]{algorithm2e}

    % Change entry name in the symbol list
    \newglossarystyle{long-fbmi-symbols}{%
     \setglossarystyle{long-name-desc-sym}% 
     	\renewcommand*{\glsgroupskip}{}
      \renewcommand{\symbolname}{Unit}
    }
    
    % Change entry name in the acronym list
    \newglossarystyle{long-fbmi-acronyms}{%
     \setglossarystyle{long-name-desc}% 
    }

    % English titles
    \def\chapcont{Contents}
    \def\chapintro{Introduction}
    \def\chapstate{State of the art}
    \def\chapaims{Aims of the work}
    \def\chapmeth{Methods}
    \def\chapres{Results}
    \def\chapdis{Discussion}
    \def\chapconc{Conclusion}
    \def\chapref{References}
    \def\chapsymacr{List of symbols and acronyms}
    % \def\chapsym{}
    % \def\chapacr{}
\fi

% Citations
\RequirePackage[backend=biber,style=iso-numeric,citestyle=numeric-comp,maxbibnames=5,minbibnames=5]{biblatex}
\addbibresource{library.bib}

% Use per-chapter numbering
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\numberwithin{equation}{chapter}
\counterwithout*{footnote}{chapter}

% Use sans-serif and smaller font for captions
\RequirePackage{caption}
\captionsetup{
	font = {small, sf},
	labelfont = {bf},
	figurewithin = chapter,
  	tablewithin = chapter
}

% Adjust boxes size (math)
\setlength{\fboxsep}{8pt}

% Tune hyphenation
\pretolerance=1500
\tolerance=1000

% Try to minimalize widows and orphans
\clubpenalty 10000
\widowpenalty 10000

% Set assets extensions and path
\DeclareGraphicsExtensions{.pdf,.png,.jpg}
\graphicspath{{figures/}}

% Formatting according to requirements
\setlength{\parskip}{6pt}
\setlength{\parindent}{0.75cm}
\setstretch{1.20}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\makeoddfoot{ruled}{}{\thepage}{}
\makeevenfoot{ruled}{}{\thepage}{}

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% General commands
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

\newcommand{\ra}[1]{\renewcommand{\arraystretch}{#1}}

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% Template
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% Create chapter style
\newif\ifNoChapNumber
\makeatletter
\makechapterstyle{FBMI}{
    \renewcommand\chapternamenum{}
    \renewcommand\printchaptername{}
    \renewcommand\printchapternum{}
    \renewcommand\chapnumfont{\Huge\sffamily\bfseries}
    \renewcommand\chaptitlefont{\Huge\sffamily\bfseries\raggedright}
    \renewcommand\printchaptertitle[1]{%
        \ifNoChapNumber
            \chaptitlefont ##1
        \else
            \begin{tabular}{@{}p{1cm}|!{\quad}p{\textwidth-1cm-2em-4\tabcolsep }}
                \chapnumfont \thechapter & \chaptitlefont ##1
            \end{tabular}
        \fi
        \NoChapNumberfalse
    }
    \renewcommand\printchapternonum{\NoChapNumbertrue}
}

% \newsavebox{\ChpNumBox}
% \makeatletter
% \newcommand*{\thickhrulefill}{%
% 	\leavevmode\leaders\hrule height 1\p@ \hfill \kern \z@}
% \newcommand*\BuildChpNum[2]{%
% 	\begin{tabular}[t]{@{}c@{}}
% 		\makebox[0pt][c]{#1\strut}           \\ [.5ex]
% 		\colorbox{NavyBlue}{%              
% 		\rule[-5em]{0pt}{0pt}%            
% 		\rule{1ex}{0pt}\color{white}#2\strut 
% 		\rule{1ex}{0pt}}%                  
% 	\end{tabular}}
% \makechapterstyle{FBMI2}{%
% 	\renewcommand{\chapnamefont}{\large\scshape}
% 	\renewcommand{\chapnumfont}{\Huge\bfseries}
% 	\renewcommand{\chaptitlefont}{\raggedright\Huge\bfseries}
% 	\setlength{\beforechapskip}{10pt}
% 	\setlength{\midchapskip}{26pt}
% 	\setlength{\afterchapskip}{40pt}
% 	\renewcommand{\printchaptername}{}
% 	\renewcommand{\chapternamenum}{}
% 	\renewcommand{\printchapternum}{%
% 		\sbox{\ChpNumBox}{%
% 			\BuildChpNum{\chapnamefont\@chapapp}%
% 			{\chapnumfont\thechapter}}}
% 	\renewcommand{\printchapternonum}{%
% 		\sbox{\ChpNumBox}{%
% 			\BuildChpNum{\chapnamefont\vphantom{\@chapapp}}%
% 			{\chapnumfont\hphantom{\thechapter}}}}
% 	\renewcommand{\afterchapternum}{}
% 	\renewcommand{\printchaptertitle}[1]{%
% 		\usebox{\ChpNumBox}\hfill
% 		\parbox[t]{\hsize-\wd\ChpNumBox-1em}{%
% 			\vspace{\midchapskip}%
% 			\thickhrulefill\par
% 			\chaptitlefont ##1\par}}%
% }

\newif \if@titlecsdefined
\DeclareRobustCommand {\titleCS}[1] {
	\def\thetitlecs{#1}
	\@titlecsdefinedtrue
}

\newif \if@titleendefined
\DeclareRobustCommand {\titleEN}[1] {
	\def\thetitleen{#1}
	\@titleendefinedtrue
}

\newif \if@programdefined
\DeclareRobustCommand {\program}[1] {
	\def\theprogram{#1}
	\@programdefinedtrue
}

\newif \if@supervisordefined
\DeclareRobustCommand {\supervisor}[1] {
	\def\thesupervisor{#1}
	\@supervisordefinedtrue
}

\newif \if@departmentdefined
\DeclareRobustCommand {\department}[1] {
	\def\thedepartment{#1}
	\@departmentdefinedtrue
}

\newif \if@assignmentdefined
\DeclareRobustCommand {\assignment}[1] {
	\def\theassignment{#1}
	\@assignmentdefinedtrue
}

\newif \if@acknowledgementsdefined
\DeclareRobustCommand {\acknowledgements}[1] {
	\def\theacknowledgements{#1}
	\@acknowledgementsdefinedtrue
}

\newif \if@abstractcsdefined
\DeclareRobustCommand {\abstractCS}[1] {
	\def\theabstractcs{#1}
	\@abstractcsdefinedtrue
}

\newif \if@abstractendefined
\DeclareRobustCommand {\abstractEN}[1] {
	\def\theabstracten{#1}
	\@abstractendefinedtrue
}

\newif \if@keywordscsdefined
\DeclareRobustCommand {\keywordsCS}[1] {
	\def\thekeywordscs{#1}
	\@keywordscsdefinedtrue
}

\newif \if@keywordsendefined
\DeclareRobustCommand {\keywordsEN}[1] {
	\def\thekeywordsen{#1}
	\@keywordsendefinedtrue
}

\newif \if@authorwithdegreesdefined
\DeclareRobustCommand {\authorWithDegrees}[1] {
	\def\theauthorwithdegrees{#1}
	\@authorwithdegreesdefinedtrue
}

\DeclareRobustCommand {\thesistype} {%
	\if@thesistypedefined
		\if\@thesistype B%
			\if@langczech {Bakalářská práce} \else {Bachelor's thesis}\fi
		\fi

		\if\@thesistype M%
			\if@langczech {Diplomová práce} \else {Master's thesis}\fi
		\fi

		\if\@thesistype D%
		\if@langczech {Disertační práce} \else {Dissertation}\fi
		\fi
	\else
		\ClassError {FBMIThesis}{Thesis type not specified}{Add option thesis=B for bachelor's thesis or option thesis=M for master's thesis.}
	\fi
}

\DeclareRobustCommand{\titlepage}{
	\begin{titlingpage}

		\begin{center}
            \includegraphics[width=0.2\textwidth]{cvut}
            \vspace{10pt}
   
			\if@langczech
				\textsf{\normalsize{\textbf{ČESKÉ VYSOKÉ UČENÍ TECHNICKÉ V~PRAZE}}} \\
			\else
				\textsf{\normalsize{\textbf{CZECH TECHNICAL UNIVERSITY IN PRAGUE}}} \\
			\fi
   
			{\color{NavyBlue}\makebox[\linewidth]{\rule[.2\baselineskip]{\textwidth}{0.4mm}}}
   
			\if@langczech
				\textsf{\normalsize{\textbf{FAKULTA BIOMEDICÍNSKÉHO INŽENÝRSTVÍ}}} \\
			\else
				\textsf{\normalsize{\textbf{FACULTY OF BIOMEDICAL ENGINEERING}}} \\
			\fi
	
			\if@departmentdefined
				\textsf{\textbf{\thedepartment}}
			\else
				\ClassError{FBMIThesis}{Department unspecified}{Specify the department using the \protect\department\space command.}
			\fi
	
			\vfill

			\if@langczech{
				\if@titlecsdefined
                    \textsf{\Large{\textbf{\thetitlecs}}}
				\else
					\ClassError{FBMIThesis}{Thesis' czech title unspecified}{Specify title of this thesis using the \protect\title\space command.}
				\fi
	
				\vspace{36pt}
		
				\if@titleendefined
                    \textsf{\Large{\textbf{\thetitleen}}}
				\else
					\ClassError{FBMIThesis}{Thesis' english title unspecified}{Specify title of this thesis using the \protect\title\space command.}
				\fi
			}\else{
				\if@titleendefined
                    \textsf{\Large{\textbf{\thetitleen}}}
				\else
                    \ClassError{FBMIThesis}{Thesis' english title unspecified}{Specify title of this thesis using the \protect\title\space command.}
				\fi
	
				\vspace{36pt}
		
				\if@titlecsdefined
                    \textsf{\Large{\textbf{\thetitlecs}}}
				\else
                    \ClassError{FBMIThesis}{Thesis' czech title unspecified}{Specify title of this thesis using the \protect\title\space command.}
				\fi
			}\fi
	
			\vspace{48pt}
	
			\textsf{\thesistype}
	
			\vfill
		\end{center}
  
		\noindent\textsf{\if@langczech{Studijní program:}\else{Study program:}\fi}
		\if@programdefined
		      ~\textsf{\theprogram}
		\else
            \ClassError{FBMIThesis}{Thesis' program unspecified}{Specify program of this thesis using the \protect\program\space command.}
		\fi
		
		\vspace{12pt}
	
		\noindent\textsf{\if@langczech{Vedoucí práce:}\else{Supervisor:}\fi}
		\if@supervisordefined%
			~\textsf{\thesupervisor}
		\else
			\ClassError{FBMIThesis}{Thesis' supervisor unspecified}{Specify the supervisor of this thesis using the \protect\thesupervisor\space command.}
		\fi
	
		\vspace{24pt}
	
		\begin{center}
			\if@authorwithdegreesdefined
				\textsf{\textbf{\theauthorwithdegrees}} \\ [0.5cm]
			\else
				\ClassError{FBMIThesis}{Thesis' author with degrees unspecified}{Specify author of this thesis (i.e. your name \& degrees) using the \protect\theauthorwithdegrees\space command.}
			\fi
			{\color{NavyBlue}\makebox[\linewidth]{\rule{\textwidth}{0.4mm}}}
			\textsf{\textbf{Kladno \the\year}}
		\end{center}

	\end{titlingpage}
}

\DeclareRobustCommand{\acknowledgementspage}{
	\if@acknowledgementsdefined
		\cleardoublepage
		\thispagestyle{empty}
		\null\vfill
		\if@langczech\section*{Poděkování}\else\section*{Acknowledgements}\fi
        \theacknowledgements
	\fi
}

\DeclareRobustCommand{\declarationofauthenticitypage}{
	\cleardoublepage
	\thispagestyle{empty}
	\null\vfill
    \if@langczech
        \section*{Prohlášení}

        \if\@thesistype B%
            \newcommand{\decthcs}{bakalářskou práci}
		\fi
		\if\@thesistype M%
            \newcommand{\decthcs}{diplomovou práci}
		\fi
		\if\@thesistype D%
            \newcommand{\decthcs}{disertační práci}
		\fi

        Prohlašuji, že jsem \decthcs~s názvem \uv{\thetitlecs} vypracoval/a
        samostatně a~použil/a k~tomu úplný výčet citací použitých pramenů, které uvádím
        v seznamu přiloženém k~diplomové práci.
        
        \hspace{-0.75cm}Nemám závažný důvod proti užití tohoto školního díla ve smyslu
        \S 60 Zákona č.121/2000~Sb., o~právu autorském, o~právech souvisejících s právem
        autorským a~o~změně některých zákonů (autorský zákon), ve znění pozdějších
        předpisů.
        \vspace{1em}
        
        \hspace{-0.75cm} V Kladně dne~\makebox[\widthof{V Kladně dne~}]{.\dotfill}
        \hfill
        \begin{tabular}[t]{@{}c@{}}
        	\makebox[12em]{\dotfill} \\
        	\textbf{\theauthorwithdegrees}
        \end{tabular}
    \else
        \section*{Declaration}

        \if\@thesistype B%
            \newcommand{\decthen}{bachelor's thesis}
		\fi
		\if\@thesistype M%
            \newcommand{\decthen}{master's thesis}
		\fi
		\if\@thesistype D%
            \newcommand{\decthen}{dissertation}
		\fi

        
        I declare that I have prepared my \decthen~entitled \uv{\thetitleen} independently and that I have used a complete list of citations of the sources used in the list attached to the thesis.

        \hspace{-0.75cm}I have no serious reason against the use of this school work within the meaning of \S 60 of Act No.121/2000~Sb., on copyright, on rights related to copyright and on amendments to certain acts (Copyright Act), as amended.
        \vspace{1em}
        
        \hspace{-0.75cm} In Kladno today~\makebox[\widthof{In Kladno today~}]{.\dotfill}
        \hfill
        \begin{tabular}[t]{@{}c@{}}
        	\makebox[12em]{\dotfill} \\
        	\textbf{\theauthorwithdegrees}
        \end{tabular}
    \fi
}

\DeclareRobustCommand{\abstractpage}{%
    \if@langczech
    	\if@abstractcsdefined
    		\cleardoublepage
    		\thispagestyle{empty}
    		\null\vfill
    		\section*{Abstrakt}\theabstractcs
    	\else
    		\ClassError{FBMIThesis}{Abstract in Czech unspecified}{Specify abstract in Czech language using the \abstractCS command.}
    	\fi
    	
    	\if@keywordscsdefined
    		\subsection*{Klíčová slova} \thekeywordscs{}
    	\else
    		\ClassError{FBMIThesis}{Czech keywords unspecified}{Specify the keywords in Czech of your thesis using \keywordsCS command.}
    	\fi
    
    	\if@abstractendefined
    		\cleardoublepage
    		\thispagestyle{empty}
    		\null\vfill
    		\section*{Abstract}\theabstracten
    	\else
    		\ClassError{FBMIThesis}{Abstract in English unspecified}{Specify abstract in English using the \abstractEN command.}
    	\fi
    	\if@keywordsendefined%
    		\subsection*{Keywords} \thekeywordsen{}
    	\else
    		\ClassError{FBMIThesis}{English keywords unspecified}{Specify the keywords in English of your thesis using \keywordsEN command.}
    	\fi
    \else
    	\if@abstractendefined
    		\cleardoublepage
    		\thispagestyle{empty}
    		\null\vfill
    		\section*{Abstract}\theabstracten
    	\else
    		\ClassError{FBMIThesis}{Abstract in English unspecified}{Specify abstract in English using the \abstractEN command.}
    	\fi
    	\if@keywordsendefined%
    		\subsection*{Keywords} \thekeywordsen{}
    	\else
    		\ClassError{FBMIThesis}{English keywords unspecified}{Specify the keywords in English of your thesis using \keywordsEN command.}
    	\fi

    	\if@abstractcsdefined
    		\cleardoublepage
    		\thispagestyle{empty}
    		\null\vfill
    		\section*{Abstrakt}\theabstractcs
    	\else
    		\ClassError{FBMIThesis}{Abstract in Czech unspecified}{Specify abstract in Czech language using the \abstractCS command.}
    	\fi
    	
    	\if@keywordscsdefined
    		\subsection*{Klíčová slova} \thekeywordscs{}
    	\else
    		\ClassError{FBMIThesis}{Czech keywords unspecified}{Specify the keywords in Czech of your thesis using \keywordsCS command.}
    	\fi
    \fi
}

\AtBeginDocument{
	\cleardoublepage
	\titlepage

    \if@assignmentdefined
        \includepdf[pages={1}]{\theassignment}
    \else 
        \thispagestyle{empty}
        \vspace*{\fill}
        \begin{center}
            \if@langczech\textit{Zde bude zadání práce}\else\textit{Here will be the assignment}\fi
        \end{center}
        \vfill
        \clearpage
    \fi

	\declarationofauthenticitypage

	\acknowledgementspage

	\abstractpage

	\cleardoublepage
	\pagestyle{plain}
    \chapterstyle{default}
    \setlength\beforechapskip{-\baselineskip}
    \setlength\afterchapskip{10pt}
    \renewcommand{\contentsname}{\sffamily \chapcont}
	\tableofcontents*

    \glsaddall
    \clearpage
    
    % Glossaries
    \chapter*{\sffamily \chapsymacr}
    \addcontentsline{toc}{chapter}{\chapsymacr}
    \printsymbols[style=long-fbmi-symbols]
    \printacronyms[style=long-fbmi-acronyms]
    \clearpage


    \chapterstyle{FBMI}
    \setlength\beforechapskip{-\baselineskip}
	% \cleardoublepage
	% \listoftablescond

	% \cleardoublepage
	% \listoffigurescond

	% \pagestyle{ruled}
}