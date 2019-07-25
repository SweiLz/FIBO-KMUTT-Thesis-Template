%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Author: Wuttipat Chokananatasab [Liews]
%% Date:   April 23, 2018
%% Email:  sweilz.w@gmail.com, wuttipat.cho@anman.co.th
%%
%% This is a LaTeX class for project report and thesis at FIBO,KMUTT
%% Credits:
%% 1) Nattee Niparnan - May 4, 2007
%% 2) Peerapon Siripongwutikorn - Dec 25, 2007
%% 3) Supasate Choochaisri - April 19, 2012
%% 4) Thanathip Limna - Nov 16, 2013
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Identification %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classes/fiboThesis}[23/04/2018 A latex thai class file by Liews Wuttipat]
\typeout{https://github.com/sweilz/}

\LoadClass[12pt,a4paper,oneside]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THAI Font %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{fontspec}
\XeTeXlinebreaklocale "th_TH"
\XeTeXlinebreakskip = 0pt plus 1pt
\defaultfontfeatures{Scale=1.23,Mapping=tex-text}
\setmainfont[Mapping=tex-text]{TH Sarabun New}
\renewcommand\baselinestretch{1.2}
\setlength{\parindent}{10mm}
\setlength{\parskip}{1ex}
\setlength{\baselineskip}{1.25em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{ifthen} %% สำหรับใช้ if-else

\usepackage{verbatim} %% สำหรับใส่ Code programming
\usepackage{graphicx} %% สำหรับใส่ รูปภาพ
\usepackage[hidelinks]{hyperref} %% สำหรับใส่ URL
\usepackage{enumitem} %% สำหรับเรียงไอเทม
\usepackage{multirow} %% สำหรับจัดการตาราง
\usepackage{caption} %% สำหรับจัดการ subfigure
\usepackage{subcaption} %% สำหรับจัดการ subfigure
\usepackage{setspace} %% จัดการช่องว่าง
\usepackage{geometry} %% สำหรับจัดขอบหน้ากระดาษ
\usepackage{fancyhdr} %% สำหรับจัดการ Page layout
\usepackage{titlesec} %% สำหรับจัดการ Page title
\usepackage{titletoc} %% สำหรับจัดหน้าสารบัญ
\usepackage{tikz} %% สำหรับวาดแผนภาพต่างๆ
\usepackage{atbegshi} %% สำหรับทำสารบัญให้มี (ต่อ)

\usepackage{fancyvrb} %% สำหรับสร้างกล่อง Code
\fvset{frame=single,framesep=1mm,framerule=0.5mm}
% \usepackage{lipsum}
% \usepackage{makeidx}
\newcommand{\quotes}[1]{``#1''} %% สร้างกล่องคำพูด
%remove space between chapter
\usepackage{wrapfig} %% สำหรับแทรกรูปกับตัวอักษร
\usepackage{etoolbox}
\preto\figure{%
  \ifnum\value{figure}=0\addtocontents{lof}{{\vskip-10pt}}\fi
}
\preto\table{%
  \ifnum\value{table}=0\addtocontents{lot}{{\vskip-10pt}}\fi
}

\usetikzlibrary{shapes,automata, positioning, arrows}
\tikzstyle{topic} = [rectangle, draw, fill=blue!20,text width=8em, text badly centered, node distance=2cm]
\tikzstyle{line} = [draw, -latex',line width=0.75mm]
\tikzstyle{node} = [draw, ellipse,fill=red!20, node distance=3cm]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Page layout %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{3} %% ความลึกของ section
\setcounter{tocdepth}{2} %% ความลึกของสารบัญ
\geometry{left=40mm,top=30mm,bottom=20mm,right=20mm} %% Thesis Geometry
% \geometry{left=30mm,top=30mm,bottom=20mm,right=30mm} %% Report Geometry

\titleformat{\chapter}[display]{\bfseries\Large}
{\filcenter\chaptertitlename~\thechapter}
{-0.7ex}{\vspace{1ex}\centering}[\vspace{1em}]
\titleformat{\section}[block]{\large\bfseries}{\thesection}{1ex}{}
\titleformat{\subsection}[block]{\normalfont\bfseries}{\thesubsection}{1ex}{}
\titleformat{\subsubsection}[block]{\normalfont\bfseries}{\thesubsubsection}{1ex}{}

\titlespacing{\chapter}{0pt}{-20pt}{0pt}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{5mm}{0pt}{0pt}
\titlespacing{\paragraph}{10mm}{0pt}{10pt}
\titlespacing{\subparagraph}{15mm}{0pt}{10pt}

%% ตั้งค่าให้เป็นภาษาไทยบอกหน้า
\def\thaialph#1{\expandafter\thalph\csname c@#1\endcsname}
\def\thalph#1{%
    \ifcase#1\or ก\or ข\or ค\or ง\or จ\or ฉ\or ช\or ซ\or
    ฌ\or ญ\or ฎ\or ฏ\or ฐ\or ฑ\or ฒ\or ณ\or ด\or ต\or ถ\or ท\or ธ\or น\or
    บ\or ป\or ผ\or ฝ\or พ\or ฟ\or ภ\or ม\or ย\or ร\or ฤ\or ล\or ฦ\or ว\or
    ศ\or ษ\or ส\or ห\or ฬ\or อ\else ฮ\else\xpg@ill@value{#1}{thalph}\fi}
\newcommand\mainmatter{\cleardoublepage\pagenumbering{arabic}}
\newcommand\frontmatter{\cleardoublepage\pagenumbering{arabic}
\renewcommand{\thepage}{\thaialph{page}}}

%% ตั้งค่าให้ลำดับรูปภาษาไทย
\renewcommand*{\thesubfigure}{\thaialph{subfigure}}
\renewcommand*{\thesubtable}{\thaialph{subtable}}

%% ตั้งค่าให้หน้าไปแสดงที่ขอบขวาบน
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{plain}{
	\fancyhead{}
	\fancyhf{}
	\fancyhead[R]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}
%%%%%%%%%%%%%%%%%%%%%%%%% Table of Contents layout %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\chaptername}{บทที่}
\renewcommand{\figurename}{รูปที่}
\renewcommand{\tablename}{ตารางที่}
\renewcommand{\contentsname}{สารบัญ}
\renewcommand{\listtablename}{รายการตาราง}
\renewcommand{\listfigurename}{รายการรูปภาพ}
\renewcommand{\appendixname}{ภาคผนวก}

\newcommand{\contenttopchapter}{เรื่อง}
\newcommand{\contenttoppage}{หน้า}
\newcommand{\contenttopfigure}{รูป}
\newcommand{\contenttoptable}{ตาราง}
\newcommand{\contenttopcontinued}{~(ต่อ)}
\renewcommand\bibname{เอกสารอ้างอิง}

\titlecontents{chapter}[0pt]{}{\bfseries\chaptername~\thecontentslabel~~}
	{\bfseries\thecontentslabel}{\bfseries\titlerule*[.25pc]{.}\contentspage}

\titlecontents{section}[25pt]{}{\thecontentslabel~~}
    {\thecontentslabel}{\titlerule*[.25pc]{.}\contentspage}
    
\titlecontents{subsection}[50pt]{}{\thecontentslabel~~}
	{\thecontentslabel}{\titlerule*[.25pc]{.}\contentspage}

\titlecontents{subsubsection}[65pt]{}{\thecontentslabel~~}
    {\thecontentslabel}{\titlerule*[.25pc]{.}\contentspage}

\titlecontents{paragraph}[80pt]{}{\thecontentslabel~~}
    {\thecontentslabel}{\titlerule*[.25pc]{.}\contentspage}

\titlecontents{subparagraph}[90pt]{}{\thecontentslabel~~}
    {\thecontentslabel}{\titlerule*[.25pc]{.}\contentspage}

\titlecontents{figure}[0pt]{}{\figurename~\thecontentslabel~~}
	{\figurename}{\titlerule*[.25pc]{.}\contentspage}

\titlecontents{table}[0pt]{}{\tablename~\thecontentslabel~~}
    {\tablename}{\titlerule*[.25pc]{.}\contentspage}

\newcommand{\ContentsHeader}[4]{
	\chapter*{#1#2} \noindent #3 \hfill #4\par\kern.5\baselineskip
}
\newcommand{\ContentsHeaderContinued}{\ContentsHeader{\contentsname}{\contenttopcontinued}{\contenttopchapter}{\contenttoppage}}
\newcommand{\LofHeaderContinued}{\ContentsHeader{\listfigurename}{\contenttopcontinued}{\contenttopfigure}{\contenttoppage}}
\newcommand{\LotHeaderContinued}{\ContentsHeader{\listtablename}{\contenttopcontinued}{\contenttoptable}{\contenttoppage}}

\renewcommand{\tableofcontents}{
    \AtBeginShipout{\ContentsHeaderContinued}
    \cleardoublepage
    \begingroup
    \ContentsHeader{\contentsname}{}{\contenttopchapter}{\contenttoppage}
    \addcontentsline{toc}{chapter}{\contentsname}
    \@starttoc{toc}
    \endgroup
    \renewcommand{\ContentsHeaderContinued}{}
}


\renewcommand{\listoffigures}{
    \AtBeginShipout{\LofHeaderContinued}
	\cleardoublepage
	\begingroup
	\ContentsHeader{\listfigurename}{}{\contenttopfigure}{\contenttoppage}
	\addcontentsline{toc}{chapter}{\listfigurename}
	%\setlength{\baselineskip}{-10pt}
	\@starttoc{lof}
    \endgroup
    \renewcommand{\LofHeaderContinued}{}
}
\renewcommand{\listoftables}{
    \AtBeginShipout{\LotHeaderContinued}
	\cleardoublepage
	\begingroup
	\ContentsHeader{\listtablename}{}{\contenttoptable}{\contenttoppage}
	\addcontentsline{toc}{chapter}{\listtablename}
	\renewcommand{\baselinestretch}{-1.0}
	\@starttoc{lot}
    \endgroup
    \renewcommand{\LotHeaderContinued}{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Environment %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Macro Definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ตรามหาวิทยาลัย
\newcommand{\@crest}{\includegraphics[width=3cm]{classes/KMUTT_logo.jpg}}
\newcommand{\crest}[1]{\renewcommand{\@crest}{#1}}

%% ชื่อมหาวิทยาลัย
\newcommand{\@universityEN}{King Mongkut's University of Technology Thonburi}
\newcommand{\universityEN}[1]{\renewcommand{\@universityEN}{#1}}
\newcommand{\@universityTH}{มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี}
\newcommand{\universityTH}[1]{\renewcommand{\@universityTH}{#1}}

%% ชื่อคณะ
\newcommand{\@facultyEN}{Institute of Field roBOtics}
\newcommand{\facultyEN}[1]{\renewcommand{\@facultyEN}{#1}}
\newcommand{\@facultyTH}{สถาบันวิทยาการหุ่นยนต์ภาคสนาม}
\newcommand{\facultyTH}[1]{\renewcommand{\@facultyTH}{#1}}

%% ชื่อปริญญา
\newcommand{\@degree}{Bachelor of Engineering}
\newcommand{\degree}[1]{\renewcommand{\@degree}{#1}}
\newcommand{\@degreeTH}{วิศวกรรมศาสตรบัณฑิต}
\newcommand{\degreeTH}[1]{\renewcommand{\@degreeTH}{#1}}

%% ชื่อสาขาวิชา
\newcommand{\@majorProgramEN}{Robotics and Automation Engineering}
\newcommand{\majorProgramEN}[1]{\renewcommand{\@majorProgramEN}{#1}}
\newcommand{\@majorProgramTH}{วิศวกรรมหุ่นยนต์และระบบอัตโนมัติ}
\newcommand{\majorProgramTH}[1]{\renewcommand{\@majorProgramTH}{#1}}

%% ชื่อหัวข้อ Thesis
\newcommand{\@titleTH}{}
\newcommand{\titleTH}[1]{\renewcommand{\@titleTH}{#1}}

%% ชื่อผู้เขียน
\newcommand{\@authorTwo}{}
\newcommand{\authorTwo}[1]{\renewcommand{\@authorTwo}{#1}}
\newcommand{\@authorThree}{}
\newcommand{\authorThree}[1]{\renewcommand{\@authorThree}{#1}}

%% Summission
\newcommand{\submissiontext}{วิทยานิพนธ์นี้เป็นส่วนหนึ่งของการศึกษาตามหลักสูตร}
\newcommand{\@academicyearTH}{2560}
\newcommand{\academicyearTH}[1]{\renewcommand{\@academicyearTH}{#1}}

%% ชื่อที่ปรึกษาหลัก/ร่วม
\newcommand{\@majoradvisor}{}
\newcommand{\majoradvisor}[1]{\renewcommand{\@majoradvisor}{#1}}
\newcommand{\@coadvisor}{}
\newcommand{\coadvisor}[1]{\renewcommand{\@coadvisor}{#1}}

%% ชื่อประธานและกรรมการคุมสอบ
\newcommand{\@committeeOne}{}
\newcommand{\committeeOne}[1]{\renewcommand{\@committeeOne}{#1}}
\newcommand{\@committeeTwo}{}
\newcommand{\committeeTwo}[1]{\renewcommand{\@committeeTwo}{#1}}
\newcommand{\@committeeThree}{}
\newcommand{\committeeThree}[1]{\renewcommand{\@committeeThree}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Title Page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{
    \thispagestyle{empty}
    \maketitleinner
    \clearpage
	\newpage
	\thispagestyle{empty}
	\mbox{}
	\clearpage
}

\newcommand{\maketitleinner}{
\begin{doublespacing}
    \begin{center}
        \renewcommand{\baselinestretch}{1.25}

        {\@crest\par}
        \vspace*{.5ex}
        {\large\bfseries{\@title}\par}
        \vspace*{1ex}
        {\large\bfseries{\@titleTH}\par}

        \vfill
        {\large\bfseries{\@author}\par}
        \ifthenelse{\equal{\@authorTwo}{}}{}{{\large\bfseries{\@authorTwo}\par}}
        \ifthenelse{\equal{\@authorThree}{}}{}{{\large\bfseries{\@authorThree}\par}}
        \vfill

        {\large\bfseries{\submissiontext}\par}
        {\large\bfseries{ปริญญา}{\@degreeTH} สาขาวิชา{\@majorProgramTH}\par}
        {\large\bfseries{\@facultyTH}\par}
        {\large\bfseries{\@universityTH}\par}
        {\large\bfseries{ปีการศึกษา {\@academicyearTH}}\par}
    \end{center}
\end{doublespacing}
}

\newcommand{\makeapproval}{
\cleardoublepage
\begin{onehalfspacing}
	\begin{center}
		\textbf{\@titleTH}\par
		\vfill
		\@author\par
		\ifthenelse{\equal{\@authorTwo}{}}{}{\@authorTwo\par}
		\ifthenelse{\equal{\@authorThree}{}}{}{\@authorThree\par}
		\vfill
		\submissiontext\par
		{ปริญญา}{\@degreeTH} สาขาวิชา{\@majorProgramTH}\par
		{\@facultyTH}\par
		{\@universityTH}\par
		{ปีการศึกษา \@academicyearTH}\par
		\vspace{0.75cm}
		\hrule height .7pt
		\vspace{1em}	
	\end{center}

	\begin{flushleft}
		% \begin{tabular*}{\textwidth}{@{}p{.49\textwidth}p{.49\textwidth}@{}}
		% 	\textbf{คณะกรรมการสอบ} & \textbf{คณะกรรมการสอบ} \\
		% 	\vspace*{1em} & \\
		% 	{\makebox[4cm]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}{ประธานกรรมการ}} \\ 
		% 	(\@majoradvisor) & (\@committeeOne) \\
		% 	\vspace*{1em} & \\
		% 	{} & {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}{กรรมการ}} \\ 
		% 	\ifthenelse{\equal{\@coadvisor}{}}{}{\textbf{อาจารย์ที่ปรึกษาวิทยานิพนธ์ร่วม}} & (\@committeeTwo) \\ 
		% 	\vspace*{1em} & \\
		% 	\ifthenelse{\equal{\@coadvisor}{}}{}{\makebox[4cm]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & \ifthenelse{\equal{\@committeeThree}{}}{}{{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}{กรรมการ}} \\ 
        %     \ifthenelse{\equal{\@coadvisor}{}}{}{(\@coadvisor)} &  \ifthenelse{\equal{\@committeeThree}{}}{}{(\@committeeThree)} \\
		% 	\vspace*{1em} & \\
		% \end{tabular*}
		\begin{tabular*}{\textwidth}{@{}p{.49\textwidth}p{.49\textwidth}@{}}
			\textbf{คณะกรรมการสอบวิทยานิพนธ์} & {} \\
			\vspace*{1em} & {}\\
			{\makebox[4cm]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & {ประธานกรรมการสอบวิทยานิพนธ์} \\ 
			(\@committeeOne) & {} \\
			{} & {} \\
			% \vspace*{0.5em} & \\
			{\makebox[4cm]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & {อาจารย์ที่ปรึกษาวิทยานิพนธ์} \\ 
			(\@majoradvisor) & {} \\
			{} & {} \\% \vspace*{0.5em} & \\
			{\makebox[4cm]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & {อาจารย์ที่ปรึกษาวิทยานิพนธ์} \\ 
			(\@coadvisor) & {} \\
			{} & {} \\% \vspace*{0.5em} & \\
			{\makebox[4cm]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & {กรรมการสอบวิทยานิพนธ์} \\ 
			(\@committeeTwo) & {} \\
			{} & {} \\% \vspace*{0.5em} & \\
			{\makebox[4cm]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & {กรรมการสอบวิทยานิพนธ์} \\ 
			(\@committeeThree) & {} \\
			{} & {} \\% \vspace*{0.5em} & \\
			
		\end{tabular*}
	\end{flushleft}
	\noindent
	% \vspace{7em}\\
	\vfill
	\begin{center}
		{\large\bfseries{ลิขสิทธิ์ของ\@universityTH}\par}
	\end{center}
\end{onehalfspacing}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Thesis Abstract %%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{abstract}{
\cleardoublepage
\begin{onehalfspacing}
\begin{flushleft}
    \begin{tabular*}{\textwidth}{@{}p{.17\textwidth}p{.70\textwidth}@{}}
        \textbf{ชื่อวิทยานิพนธ์}& {\@titleTH} \\
        \textbf{หน่วยกิต} & {6}\\
        \textbf{ผู้เขียน}& {\@author} \\
		\ifthenelse{\equal{\@authorTwo}{}}{}{{}& {\@authorTwo} \\}
		\ifthenelse{\equal{\@authorThree}{}}{}{{}& {\@authorThree} \\}
		\textbf{{อาจารย์ที่ปรึกษา}}& {ที่ปรึกษาวิทยานิพนธ์หลัก \@majoradvisor} \\
		\ifthenelse{\equal{\@coadvisor}{}}{}{{}& {ที่ปรึกษาวิทยานิพนธ์ร่วม \@coadvisor} \\}
		\textbf{หลักสูตร}& \@degreeTH \\
		\textbf{สาขาวิชา}& \@majorProgramTH \\
		\textbf{คณะ}& \@facultyTH \\
		\textbf{ปีการศึกษา}& \@academicyearTH \\
    \end{tabular*}
\end{flushleft}
\end{onehalfspacing}
\hrule height .7pt
\vspace{2em}
\begingroup
	\let\clearpage\relax
	\chapter*{บทคัดย่อ}
	\addcontentsline{toc}{chapter}{บทคัดย่อ}
\endgroup
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Thesis Acknowledgements %%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{acknowledgements}{
\cleardoublepage
\chapter*{กิตติกรรมประกาศ}
\addcontentsline{toc}{chapter}{กิตติกรรมประกาศ}
\begingroup}{
\vspace{1em}
\flushright
\@author{}\\
\@authorTwo{}\\
\@authorThree{}\\
\vfill
\endgroup
\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Abbreviations and Symbols  %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{abbreviations}
{
    \cleardoublepage
    \onecolumn
    \chapter*{\centering ประมวลศัพท์และตัวย่อ}
    \addcontentsline{toc}{chapter}{ประมวลศัพท์และตัวย่อ}
    \begingroup
    }{
    \vfill
	\endgroup
}

\newenvironment{symbols}
{
    \cleardoublepage
    \onecolumn
    \chapter*{\centering รายการสัญลักษณ์}
    \addcontentsline{toc}{chapter}{รายการสัญลักษณ์}
    \begingroup
    }{
    \vfill
    \endgroup
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Appendices  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{lipsum}
\newenvironment{appendices}
{
    \cleardoublepage
    \clearpage\thispagestyle{empty}\addtocounter{page}{-1}
    \vspace*{\fill}
    \begin{center}
        {\bfseries\Huge\appendixname}
    \end{center}
    \vspace*{\fill}
	\appendix
	\renewcommand{\thechapter}{\thaialph{chapter}}
	
	\titlecontents{chapter}% <section-type>
  		[0pt]% <left>
  		{}% <above-code>
  		{\bfseries\appendixname\ \thecontentslabel\quad}% <numbered-entry-format>
  		{\bfseries\thecontentslabel}% <numberless-entry-format>
  		{\bfseries\titlerule*[.25pc]{.}\contentspage}% <filler-page-format>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
