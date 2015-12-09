\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover_letter}[2015/05/25 An elegant cover letter class]
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt} 
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}                
% use fontawesome
\RequirePackage{fontawesome}

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
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage[super]{nth}

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

\newcommand{\dividingline}[0]{
  \noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
}

\newcommand{\header}[2]{
  {\par #1 \par #2}
  \vspace{6mm}
}

\newcommand{\recipient}[3]{
  {\par #1 \par #2 \par #3}
  \vspace{6mm}
}

% TODO this cant be the right way to do this...
\newcommand{\pgraph}[1]{
  {\par #1}
  \vspace{3mm}
}

\newcommand{\dear}[1]{
  {\par Dear #1,}
  \vspace{0.85ex}
}

\newcommand{\signoff}[1]{
  \vspace{6mm}
  {\par Best Regards,\par#1}
}
