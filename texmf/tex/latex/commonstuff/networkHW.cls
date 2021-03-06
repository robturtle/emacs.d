% this is your latex class file, set your preamble (i.e., layout, font size, style...) here

% all class files should start like this, put these tow lines at very begining
\NeedsTeXFormat{LaTeX2e} % indicate the minimum version of LaTex
\ProvidesClass{networkingHomework}[2015/09/18 For my Networking homework] % classname, last modified time, description

% you probably need to load a standard class settings first
\LoadClass[letterpaper, 12pt]{report}
\renewcommand{\thesection}{\arabic{section}} % make section # starts with '1' but not '0.1'
\setlength{\parindent}{0cm}

%% your customization starts from here
% use \begin{lstlisting} instead of #+BEGIN_EXAMPLE for command line demo/outputs
\RequirePackage{listings} % don't use \usepackage in a class file

\lstset{basicstyle=\ttfamily\scriptsize}

\lstnewenvironment{cmdline}[1][]%
  {\noindent\minipage{\linewidth}\medskip % code will not split into two pages
    \lstset{
      basicstyle=\ttfamily\scriptsize, % font size
      frame=single, % add frame
      breaklines=true, % wrap long lines
      columns=fullflexible,
      #1}
  }
  {\endminipage}

% use minted for code block (it supports syntax highlighting)

\RequirePackage[top=1in,bottom=1in,left=1in,right=1in]{geometry} % adjust your layout/margins here

% once you finished, put this file into your tex load path as mentioned above

% Read more
% - https://gist.github.com/jhwilson/1278588 here is a real example of someone's latex class
