%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Author: Wuttipat Chokananatasab [Liews]
%% Date:   March 11, 2018
%% Email:  sweilz.w@gmail.com, wuttipat.sero@mail.kmutt.ac.th
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
\ProvidesClass{fibo}[2018/03/11 A FIBO thesis class file by Liews Wuttipat]
\typeout{https://github.com/sweilz/}

\LoadClass[12pt,a4paper,oneside]{report}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Identification %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{ifthen} %% สำหรับใช้ if-else
\usepackage[utf8]{inputenc}
\usepackage{graphicx} %% สำหรับการจัดการภาพ
\usepackage{fontspec,xltxtra,xunicode,polyglossia} %% สำหรัลการสร้างเอกสารโดยใช้ Unicode
\usepackage{parskip}
\usepackage[hidelinks]{hyperref}

\graphicspath{{images/}}
\usepackage{caption}
\usepackage{subcaption}

\usepackage{setspace}
\usepackage{enumitem} %% สำหรับเรียงไอเทม
\usepackage{natbib}
\usepackage{bibentry}
\usepackage{tikz} %% สำหรับวาดแผนภาพต่างๆ
\usepackage{ulem} %% สำหรับพิมพ์ตัวเอียง ตัวขีดเส้นใต้ ตัวขีดกลาง
\usetikzlibrary{shapes,automata, positioning, arrows}


\tikzstyle{topic} = [rectangle, draw, fill=blue!20,text width=8em, text badly centered, node distance=2cm]
\tikzstyle{line} = [draw, -latex',line width=0.75mm]
\tikzstyle{node} = [draw, ellipse,fill=red!20, node distance=3cm]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% FIBO, KMUTT Thesis Template %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Macro Definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ตรามหาวิทยาลัย
\newcommand{\@crest}{\includegraphics[width=3cm]{classes/logo/KMUTT_logo.jpg}}
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Set Font %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\XeTeXlinebreaklocale "th_TH"
\XeTeXlinebreakskip = 0pt plus 1pt
\defaultfontfeatures{Scale=1.23,Mapping=tex-text}
\setmainfont[Mapping=tex-text]{TH Sarabun New}
\newfontfamily{\thaifont}[]{TH Sarabun New}
\setdefaultlanguage{thai}
\setotherlanguage{english}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Page layout %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{3} %% ความลึกของ section
\setcounter{tocdepth}{3} %% ความลึกของสารบัญ
\usepackage[a4paper,left=40mm,top=30mm,bottom=20mm,right=20mm]{geometry}

\usepackage{fancyhdr}

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

\usepackage{titlesec}
\titleformat{\chapter}[display]{\bfseries\large}
{\filcenter\chaptertitlename\ \thechapter}
{-0.7ex} {
    \vspace{1ex}
    \centering
} 
[\vspace{1em}] 
\titlespacing{\chapter}{0pt}{-20pt}{0pt}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{5mm}{0pt}{0pt}
\titlespacing{\paragraph}{10mm}{0pt}{10pt}
\titleformat{\section}[block]{\large\bfseries}{\thesection}{1ex}{}
\titleformat{\subsection}[block]{\normalfont\bfseries}{\thesubsection}{1ex}{}
\titleformat{\subsubsection}[block]{\normalfont\bfseries}{\thesubsubsection}{1ex}{}

\renewcommand*{\thesubfigure}{\thaiAlph{subfigure}}
\renewcommand*{\thesubtable}{\thaiAlph{subtable}}
\renewcommand\baselinestretch{1.2}
\setlength{\parindent}{10mm}
% ************************* Table of Contents layout **************************
\usepackage{titletoc}
\usepackage{atbegshi}
\usepackage{tocloft}
\RequirePackage[title,titletoc]{appendix}
\usepackage{floatrow}
\usepackage{float}
\floatsetup[table]{capposition=top}
\newfloat{eqa}{htbp}{eqa}\floatname{eqa}{{สมการที่}}

\newcommand{\contenttopchapter}{เรื่อง}
\newcommand{\contenttoppage}{หน้า}
\newcommand{\contenttopfigure}{รูป}
\newcommand{\contenttoptable}{ตาราง}
\newcommand{\contenttopcontinued}{~(ต่อ)}
\addto{\captionsthai}{
    \renewcommand{\contentsname}{สารบัญ} %% ชื่อรายการสารบัญ
    \renewcommand{\listtablename}{รายการตาราง} %% ชื่อรายการสารบัญตาราง
    \renewcommand{\listfigurename}{รายการรูปภาพ} %% ชื่อรายการสารบัญรูป
    \renewcommand{\appendixname}{ภาคผนวก}		
    \renewcommand{\contenttopchapter}{เรื่อง}
    \renewcommand{\contenttoppage}{หน้า}
    \renewcommand{\contenttopfigure}{รูป}
    \renewcommand{\contenttoptable}{ตาราง}
    \renewcommand{\contenttopcontinued}{~(ต่อ)}
}
\titlecontents{chapter}% <section-type>
	[0pt]% <left>
	{}% <above-code>
	{\bfseries\chaptername\ \thecontentslabel\quad}% <numbered-entry-format>
	{\bfseries\thecontentslabel}% <numberless-entry-format>
	{\bfseries\titlerule*[.25pc]{.}\contentspage}% <filler-page-format>

\titlecontents{section}% <section-type>
	[25pt]% <left>
	{}% <above-code>
	{\thecontentslabel\quad}% <numbered-entry-format>
	{\thecontentslabel}% <numberless-entry-format>
	{\titlerule*[.25pc]{.}\contentspage}% <filler-page-format>

\titlecontents{subsection}% <section-type>
	[50pt]% <left>
	{}% <above-code>
	{\thecontentslabel\quad}% <numbered-entry-format>
	{\thecontentslabel}% <numberless-entry-format>
	{\titlerule*[.25pc]{.}\contentspage}% <filler-page-format>

\titlecontents{subsubsection}% <section-type>
	[65pt]% <left>
	{}% <above-code>
	{\thecontentslabel\quad}% <numbered-entry-format>
	{\thecontentslabel}% <numberless-entry-format>
	{\titlerule*[.25pc]{.}\contentspage}% <filler-page-format>

\titlecontents{figure}% <section-type>
	[0pt]% <left>
	{}% <above-code>
	{\figurename\ \thecontentslabel~}% <numbered-entry-format>
	{\figurename}% <numberless-entry-format>
	{\titlerule*[.25pc]{.}\contentspage}% <filler-page-format>

\titlecontents{table}% <section-type>
	[0pt]% <left>
	{}% <above-code>
	{\tablename\ \thecontentslabel~}% <numbered-entry-format>
	{\tablename}% <numberless-entry-format>
    {\titlerule*[.25pc]{.}\contentspage}% <filler-page-format>

\AtBeginDocument{
	\setlength{\parskip}{1ex}
	\setlength{\baselineskip}{1.25em}
	\setcounter{tocdepth}{4}

	\renewcommand{\tableofcontents}{
		\cleardoublepage
		\begingroup
		\parindent\z@\parskip\cftparskip
		\FIBOContentsHeader{\contentsname}{}{\contenttopchapter}{\contenttoppage}
		\addcontentsline{toc}{chapter}{\contentsname}
		\@starttoc{toc}
		\endgroup
	}

	\renewcommand{\listoftables}{
		\cleardoublepage
		\begingroup
		\parindent\z@\parskip\cftparskip
		\FIBOContentsHeader{\listtablename}{}{\contenttoptable}{\contenttoppage}
		\addcontentsline{toc}{chapter}{\listtablename}
		\@starttoc{lot}
		\endgroup
	}

	\renewcommand{\listoffigures}{
		\cleardoublepage
		\begingroup
		\parindent\z@\parskip\cftparskip
		\FIBOContentsHeader{\listfigurename}{}{\contenttopfigure}{\contenttoppage}
		\addcontentsline{toc}{chapter}{\listfigurename}
		\@starttoc{lof}
		\endgroup
	}
}

\AtEndDocument{
  \newpage\null\thispagestyle{empty}\newpage
}

\newcommand{\FIBOContentsHeader}[4]{
	\chapter*{#1#2} \noindent #3 \hfill #4\par\kern.5\baselineskip
}

\newcommand{\FIBOContentsHeaderContinued}{\FIBOContentsHeader{\contentsname}{\contenttopcontinued}{\contenttopchapter}{\contenttoppage}}
\newcommand{\FIBOtableofcontents}{
	\AtBeginShipout{\FIBOContentsHeaderContinued}
	\tableofcontents
	\renewcommand{\FIBOContentsHeaderContinued}{}
}

\newcommand{\FIBOLotHeaderContinued}{\FIBOContentsHeader{\listtablename}{\contenttopcontinued}{\contenttoptable}{\contenttoppage}}
\newcommand{\FIBOlistoftables}{
	\AtBeginShipout{\FIBOLotHeaderContinued}
	\listoftables
	\renewcommand{\FIBOLotHeaderContinued}{}
}

\newcommand{\FIBOLofHeaderContinued}{\FIBOContentsHeader{\listfigurename}{\contenttopcontinued}{\contenttopfigure}{\contenttoppage}}
\newcommand{\FIBOlistoffigures}{
	\AtBeginShipout{\FIBOLofHeaderContinued}
	\listoffigures
	\renewcommand{\FIBOLofHeaderContinued}{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Cover Page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ******************************* Page Config *********************************
\renewcommand{\thepage}{\thaiAlph{page}}
\renewenvironment{titlepage}
{
	\begingroup
	\newpage
	\thispagestyle{empty}
}
{
	\endgroup
	\clearpage
	\newpage
	\thispagestyle{empty}
	\mbox{}
	\clearpage
}

\newenvironment{innertitlepage}
{
	\begingroup
	\newpage
	
	\setcounter{page}\z@
	\addtocounter{page}{1}
}
{
	\endgroup
	\clearpage
}

\newenvironment{othertitlepage}
{
	\begingroup
	\newpage
}
{
	\endgroup
	\clearpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Title Page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{\makeFIBOthesistitle}
\newcommand{\makeFIBOthesistitle}
{
\begin{doublespacing}
	\begin{center}
		\setlength{\parskip}{0pt}
		\setlength{\baselineskip}{1em}
		\renewcommand{\baselinestretch}{1.25}

		{\@crest \par}
		\vspace*{.5ex}

		{\large\bfseries{\@title}\par}
		\vspace*{1ex}
		{\large\bfseries{\@titleTH}\par}

		\vspace{5.5cm}
		{\large\bfseries{\@author}\par}
		\ifthenelse{\equal{\@authorTwo}{}}{}{{\large\bfseries{\@authorTwo}\par}}
		\ifthenelse{\equal{\@authorThree}{}}{}{{\large\bfseries{\@authorThree}\par}}
		\vspace{5.5cm}

		{\large\bfseries{\submissiontext}\par}
		{\large\bfseries{ปริญญา}{\@degreeTH} สาขาวิชา{\@majorProgramTH}\par}
		{\large\bfseries{\@facultyTH}\par}
		{\large\bfseries{\@universityTH}\par}
		{\large\bfseries{ปีการศึกษา {\@academicyearTH}}\par}
	\end{center}
\end{doublespacing}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Approval Page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeApprovalPage}
{
\cleardoublepage
\begin{onehalfspacing}
	\begin{center}
		\textbf{\@titleTH}\par
		\vspace{0.75cm}
		\@author\par
		\ifthenelse{\equal{\@authorTwo}{}}{}{\@authorTwo\par}
		\ifthenelse{\equal{\@authorThree}{}}{}{\@authorThree\par}
		\vspace{0.5cm}
		\submissiontext\par
		{ปริญญา}{\@degreeTH} สาขาวิชา{\@majorProgramTH}\par
		{\@facultyTH}\par
		{ปีการศึกษา \@academicyearTH}\par
		\vspace{0.75cm}
		\hrule height .7pt
		\vspace{1em}	
	\end{center}

	\begin{flushleft}
		\begin{tabular*}{\textwidth}{@{}p{.49\textwidth}p{.49\textwidth}@{}}
			\textbf{อาจารย์ที่ปรึกษาวิทยานิพนธ์หลัก} & \textbf{คณะกรรมการสอบ} \\
			\vspace*{1em} & \\
			{\makebox[4cm]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}{ประธานกรรมการ}} \\ 
			(\@majoradvisor) & (\@committeeOne) \\
			\vspace*{1em} & \\
			{} & {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}{กรรมการ}} \\ 
			\ifthenelse{\equal{\@coadvisor}{}}
				{}{\textbf{อาจารย์ที่ปรึกษาวิทยานิพนธ์ร่วม}}
			& (\@committeeTwo) \\ 
			\vspace*{1em} & \\
			{\makebox[4cm]{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}} & {{\leavevmode\xleaders\hbox{.}\hfill\kern0pt}{กรรมการ}} \\ 
			(\@coadvisor) & (\@committeeThree) \\
			\vspace*{1em} & \\
		\end{tabular*}
	\end{flushleft}
	\noindent
	\vspace{7em}\\
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
	\addcontentsline{toc}{chapter}{บทคัดย่อภาษาไทย}
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Vitae  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{vitae}{
\cleardoublepage
\chapter*{ประวัติผู้เขียน}
\addcontentsline{toc}{chapter}{ประวัติผู้เขียน}

\begingroup}{
\vfill
\endgroup
\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Appendices  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{lipsum}
\renewenvironment{appendices}
{
    \cleardoublepage
    \clearpage\thispagestyle{empty}\addtocounter{page}{-1}
    \vspace*{\fill}
    \begin{center}
        {\bfseries\Huge \appendixname}
    \end{center}
    \vspace*{\fill}
	\appendix
	\renewcommand{\thechapter}{\thaiAlph{chapter}}
	
	\titlecontents{chapter}% <section-type>
  		[0pt]% <left>
  		{}% <above-code>
  		{\bfseries\appendixname\ \thecontentslabel\quad}% <numbered-entry-format>
  		{\bfseries\thecontentslabel}% <numberless-entry-format>
  		{\bfseries\titlerule*[.25pc]{.}\contentspage}% <filler-page-format>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

