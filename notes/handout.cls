% ------
% This is a handout document class. It is based on the article class. It is design for creating handouts for a college class
% Created By: Roger Cortesi, 27 JUN 2007
% ----
% ---- Identification -----

\ProvidesClass{handout}

% ---- Initial Code ----

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

\pagenumbering{arabic}

% --- Package Loading ----

\LoadClass{extarticle}

% ---- Main Code ----

% --- Setup the Page Layout ---
	% \setlength\textwidth{6.5in}
	% \setlength\textheight{8.75in}
	% \setlength\oddsidemargin{0in}
	% \setlength\evensidemargin{1in}
	% \setlength\topmargin{-0.25in}
	% \setlength\parindent{0in}
	% \setlength\parskip{0.5em}


% --- Define Some Useful Commands ---
	% Define the default values for these commands
	\newcommand{\CourseTitle}{\ }
	\newcommand{\HandoutTitle}{\ }
	\newcommand{\DueDate}{}
	\newcommand{\Instructor}{}
	\newcommand{\Semester}{}
	\newcommand{\Blank}{}

	% change the values if the user sets these commands
	\newcommand{\SetCourseTitle}[1]{\renewcommand{\CourseTitle}{#1}}
	\newcommand{\SetHandoutTitle}[1]{\renewcommand{\HandoutTitle}{#1}}
	\newcommand{\SetDate}[1]{\renewcommand{\DueDate}{#1}}
	\newcommand{\SetInstructor}[1]{\renewcommand{\Instructor}{#1}}
	\newcommand{\SetSemester}[1]{\renewcommand{\Semester}{#1}}


	\newcommand{\maketitleinst}{
		\thispagestyle{handouttitle}
		\begin{center}
		\LARGE{\HandoutTitle} \\
		\large{\Instructor} \\
		\large{\DueDate} \\
		\end{center}
	}


	
% --- Define the Header and Footer Styles ---

	% The style for the page with \maketitle called on it.
	\fancypagestyle{handouttitle} {
		\renewcommand\headrulewidth{0.5pt}
		\renewcommand\footrulewidth{0.5pt}
		\chead{}
		\cfoot{\thepage\ von \pageref{LastPage}}
		\lhead{ \small \CourseTitle }	
		\lfoot{}
		\rhead{\Blank \small \Semester}
		
	}

	% The style for pages without \maketitle called on it.
	\fancypagestyle{handout} {
		\fancyhf{}
		\fancyheadoffset{0cm}
		\renewcommand\headrulewidth{0.5pt}
		\renewcommand\footrulewidth{0.5pt}
		\fancyhead[L]{ \small \CourseTitle \\ \Semester }
		\fancyhead[R]{ \Blank \small \HandoutTitle \\  \small \DueDate }
		\fancyfoot[C]{ \thepage\ of \pageref{LastPage} }
	}
	
% Set the default page style to handout.
	\pagestyle{handout}

% set the head height to 20.5pt
	\setlength{\headheight}{20.5pt} 
