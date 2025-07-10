\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{setassignment}[2025/07/09 Academic Binder Class for Set Theory]

%_____________________________________________________________%
\LoadClass[11pt]{report} %The text size, and report format


%_____________________________________________________________%
\RequirePackage{sty/packages} %Global Packages being used in the document
\RequirePackage{sty/macros} %Personal Global Macros
\RequirePackage{sty/environments} %Calls for Global Enviroments (Check the individual package to check the enviroment sbeing used.
\RequirePackage{sty/refsheet}
%_____________________________________________________________%

\newenvironment{assignment}[1]{%
  \input{design/#1}%
  %\csname use#1\endcsname
  \csname use#1setup\endcsname
  %\csname use#1activate\endcsname % now applied immediately
  \begingroup
}{%
  \endgroup
}
%\newenvironment{assignment}[1]{%
%  \clearpage
%  \begingroup
%  \input{design/#1.tex} % loads DesignA.tex or any other design
%}{%
%  \endgroup
%}
%_____________________________________________________________%



% --- Defining the apprendix enviroments ---
%\theoremstyle{definition}
\newtheorem{axiom}{Axioma}[section]
\newtheorem{definicion}{Definición}[section]
%_____________________________________________________________%

% === Global Metadata ===
\gdef\@studentname{Adrian Arimany}
\gdef\@carnet{211063}
\gdef\@course{Teoria de Conjuntos}
%_____________________________________________________________%



% --- Custom For two coloumn content ---
\newcommand{\twoColumn}[2]{%
  \noindent
  \begin{minipage}[t]{\leftColumnWidth}
    \raggedright
    \small
    #1
  \end{minipage}%
  \hspace{\columnGap}%
  \begin{minipage}[t]{\rightColumnWidth}
    \raggedright
    \small
    #2
  \end{minipage}%
  \normalsize
}




% --- Custom Table of Contents Layout ---
\makeatletter

\renewcommand{\tableofcontents}{%
  \vspace*{-1cm}
  \noindent
  \begin{minipage}[t]{0.5\textwidth}
    \textbf{Name:} \@studentname \\
    \textbf{Date:} \today
  \end{minipage}%
  \begin{minipage}[t]{0.5\textwidth}
    \raggedleft
    \textbf{Course:} \@course
  \end{minipage}

  \vspace{1.5em}
  \begin{center}
    {\Large \bfseries Tabla de Contenidos}
  \end{center}
  \vspace{1em}

  \@starttoc{toc}
}

\makeatother

% --- Custom Header for Designs ---
\makeatletter
\newcommand{\setassignmentmanualheader}{%
  \noindent
  \begin{minipage}[t]{0.5\textwidth}
    \textbf{Name:} \@studentname \\
    \textbf{Due date:} \@duedate
  \end{minipage}%
  \begin{minipage}[t]{0.5\textwidth}
    \raggedleft
    \textbf{Course:} \@course \\
    \textbf{Carnet:} \@carnet
  \end{minipage}
  \par\vspace{1em}
}
\makeatother