\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt} 
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}                
% use fontawesome
\RequirePackage{fontawesome}
% try to disable hyphenation
\hyphenpenalty 10000

\RequirePackage[
	a4paper,
	left=0.8in,
	right=0.8in,
	top=0.70in,
	bottom=0.55in,
	nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command 
  {\LARGE\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*3.6}{*1.8}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1.2}{*0.6}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill \small{#2}}%
}
\newcommand{\jobheader}[3]{%
  \subsection[#1]{#1 \normalsize{\textit{#2}} \hfill \newline \small{#3}}%
}
\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}

\newcommand{\name}[1]{
  \begin{center}
  \Huge{#1}
  \end{center}
  \vspace{0.5ex}
}
\newcommand{\contactInfo}[4]{
  \begin{center}
  \large{\faEnvelopeO\ {#1} \textperiodcentered {{\Large\faMobile}\ {#2}} \textperiodcentered \faLink\ {#3}}
  \newline
  \end{center}
}
\newcommand{\basicContactInfo}[3]{
  \begin{center}
  \large{\faEnvelopeO\ {#1} \textperiodcentered {{\Large\faMobile}\ {#2}}}
  \end{center}
}
\newcommand{\role}[1]{
  {\par \textit{#1} \par}
  \vspace{0.85ex}
}
