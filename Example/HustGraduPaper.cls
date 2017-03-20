%
%	HustGraduPaper.sty
%	本文件是华中科技大学本科生毕业论文模板、
%	@author skinaze
% 	@date 2017/03/01
%	@version v1.0.0
%
%	本模板遵循MIT License
%


%	---	定义的新的类
\def\HGP@name{HustGraduPaper}
\def\HGP@date{2017/03/01}
\def\HGP@version{v1.3.0}
\def\HGP@introduction{Adapt HUST style to article}
\ProvidesClass{\HGP@name}[\HGP@date~\HGP@version~\HGP@introduction]
\NeedsTeXFormat{LaTeX2e}


%
%	---	定义类的选项
%
%logo颜色
\def\logopic{HUSTGreen.png} %默认绿色logo
\DeclareOption{GreenLogo} {
	\def\logopic{HUSTGreen.png}
}
\DeclareOption{BlackLogo} {
	\def\logopic{HUSTBlack.png}
}
\ProcessOptions\relax


%
%	---	载入Class
%
\LoadClass[a4paper]{article}
%页面基本设置
\RequirePackage[boldfont,slantfont]{xeCJK}
\RequirePackage[cs4size,UTF8,heading=true]{ctex}

%
%	---	定义页边距
%
\RequirePackage{geometry}
\geometry{left=3.18cm,right=3.18cm,top=2.54cm,bottom=2.54cm}
\geometry{headsep=1em,footskip=2em}
\geometry{headheight=14pt}


%
%	---	定义字体
%
\RequirePackage{xeCJK}
%用于设置非常用字体
\RequirePackage{fontspec}
%论文封面使用华文中宋
\setCJKfamilyfont{hwzs}{STZhongsong}
\newcommand{\huawenzhongsong}{\CJKfamily{hwzs}}


%
%	---	定义页眉页脚
%
%使用fancyhdr库
\RequirePackage{fancyhdr}
\RequirePackage{tikz}%用于绘制页脚横线
%设置页眉样式
\newcommand{\headstyle}{
	\fancyhead[C]{\huawenzhongsong \zihao{5} 华 \space 中 \space 科 \space 技 \space 大 \space 学 \space 毕 \space 业 \space 设 \space 计（论  \space 文）}
}
%设置页脚样式
\newcommand{\footstyle}{\fancyfoot[C]{\huawenzhongsong \zihao{5} \thepage}
	\fancyfoot[L]{\tikz{\node (A) at (0,0) {}; \draw (0,1pt)--(6.7cm,1pt);}}
	\fancyfoot[R]{\tikz{\node (A) at (0,0) {}; \draw (0,1pt)--(-6.7cm,1pt);}}}
\pagestyle{fancy}
\fancyhf{} %清空原有样式
\headstyle
\footstyle

%定义一种新的格式叫做main
\fancypagestyle{main}{%
	\fancyhf{} %清空原有样式
	\headstyle
	\footstyle
}


%
%	---	定义标题和段落样式
%
%定义1.5倍行距
\renewcommand{\baselinestretch}{1.62}

%设置各个标题样式
%不需要使用part和chapter层级
\RequirePackage{titlesec}
\ctexset{section={format={\centering \heiti \bfseries \zihao{-2}}}} %节
\newcommand{\sectionbreak}{\clearpage} %小节从新的一页开始
\ctexset{subsection={format={\raggedright \heiti \bfseries \zihao{4}}}} %小节
\ctexset{subsubsection={format={\raggedright \heiti \bfseries \zihao{-4}}}} %小小节
\ctexset{paragraph={beforeskip={0em}}}
\ctexset{subparagraph={beforeskip={0em}}}

%设置附录
\RequirePackage[title,titletoc]{appendix}
\renewcommand{\appendixname}{附录}

%首行缩进存在问题，暂不使用
\iffalse
%设置新的标题层级subsubsubsection
\titleclass{\subsubsubsection}{straight}[\subsection]
%设置编号
\newcounter{subsubsubsection}[subsubsection]
\renewcommand\thesubsubsubsection{\thesubsubsection.\arabic{subsubsubsection}}
%设置标题样式
\titleformat{\subsubsubsection}
{\raggedright \heiti \bfseries \zihao{-4}}{\thesubsubsubsection}{1em}{}[]
\titlespacing*{\subsubsubsection}
{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
%重新设置段落等级
\def\toclevel@subsubsubsection{4}
\def\toclevel@paragraph{5}
\def\toclevel@paragraph{6}
\def\l@subsubsubsection{\@dottedtocline{4}{7em}{4em}}
\def\l@paragraph{\@dottedtocline{5}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{6}{14em}{6em}}
%设置目录深度
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}
\fi


%
%	---	设置图表格式
%
%设置图表标题的计数方式
\renewcommand{\thefigure}{\ifnum \c@section>\z@ \thesection-\fi \@arabic\c@figure}
\renewcommand{\thetable}{\ifnum \c@section>\z@ \thesection-\fi \@arabic\c@table}

%设置标题的样式
\RequirePackage{caption}
\captionsetup{font={normalsize,bf,singlespacing}}
\captionsetup[figure]{position=bottom,skip={0pt}}
\captionsetup[table]{position=top,skip={0pt}}
\setlength{\textfloatsep}{0pt}
\setlength{\floatsep}{0pt}
\setlength{\intextsep}{6pt}
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}

%重新设置图表autoref
\newcommand{\figureautorefname}{图}
\newcommand{\tableautorefname}{表}

%使用tabularx库并定义新的左右中格式
\RequirePackage{tabularx}
\RequirePackage{makecell}
\newcolumntype{L}{X}
\newcolumntype{C}{>{\centering \arraybackslash}X}
\newcolumntype{R}{>{\raggedright \arraybackslash}X}

%添加复杂的表格需求库
\RequirePackage{booktabs}
%设置三线表格式
\setlength{\heavyrulewidth}{1.5pt}
\setlength{\lightrulewidth}{0.5pt}
\setlength{\cmidrulewidth}{0.5pt}
\setlength{\aboverulesep}{0pt}
\setlength{\belowrulesep}{0pt}
\setlength{\abovetopsep}{0pt}
\setlength{\belowbottomsep}{0pt}

%添加图需要的库
\RequirePackage{graphicx}

%重新定义图和表的浮动环境，使其方便使用
\newenvironment{generalfig}[3][htbp]{
	\def \figcaption {#2}
	\def \figlabel {#3}
	\begin{figure}[#1]
		\centering
	}{
		\caption{\figcaption} \label{\figlabel}
	\end{figure}
}
\newenvironment{generaltab}[3][htbp]{
	\def \tabcaption {#2}
	\def \tablabel {#3}
	\begin{table}[#1]
		\caption{\tabcaption} \label{\tablabel}
		\zihao{5}
		\centering
	}{
	\end{table}
}


%
%	---	设置公式格式
%
%使用ams的数学库
\RequirePackage{amsmath}
\RequirePackage{bm}

%设置公式间距为零
\AtBeginDocument{
	\setlength{\abovedisplayskip}{6pt}
	\setlength{\belowdisplayskip}{6pt}
	\setlength{\abovedisplayshortskip}{0pt}
	\setlength{\belowdisplayshortskip}{0pt} 
}

%公式编号带章节
\numberwithin{equation}{section}

%重新设置公式autoref
\newcommand{\equationautorefname}{等式}


%
%	---	定义列表项的样式
%
\RequirePackage{enumitem}
\setlist{noitemsep}


%
%	---	定义新的标题页面
%
%使用条件语句
\RequirePackage{xstring}
%用于解析参数
\RequirePackage{kvsetkeys}
%添加几个新的文档属性
\def \@school {}
\def \@classnum {}
\def \@stunum {}
\def \@instructor {}
\newcommand{\school}[1]{\def \@school {#1}}
\newcommand{\classnum}[1]{\def \@classnum {#1}}
\newcommand{\stunum}[1]{\def \@stunum {#1}}
\newcommand{\instructor}[1]{\def \@instructor {#1}}

%设置maketitle的参数解析
\newcommand{\arg@maketitle}[2]{
	\IfStrEqCase{#1}{
		{logo color}{
			\IfStrEqCase{#2}{
				{green}{\def\HGP@titlecolor{HUSTGreen.png}}
				{black}{\def\HGP@titlecolor{HUSTBlack.png}}
			}[\ClassWarning{\HGP@name}{There's no such value for #1 (maketitle)}]
		}
		{line length}{\def\HGP@titlelength{#2}}
	}[\ClassWarning{\HGP@name}{There's no such argument for maketitle}]
}
\newcommand{\maketitlearg}[1]{
	\IfSubStr{#1}{=}{
		\kv@parse{#1}{\arg@maketitle}
	}{
		\def\HGP@titlelength{#1}
	}
}
%重置命令maketitle
\renewcommand{\maketitle}[1][12em]{
	\def\HGP@titlecolor{HUSTGreen.png}
	\def\HGP@titlelength{12em}
	\maketitlearg{#1}
	\begin{titlepage}
		\begin{center}
			\vspace*{4em}
			\includegraphics[height=1.61cm]{\HGP@titlecolor}\\
			\vspace*{2em}
			{\zihao{-0} \huawenzhongsong \bfseries 本科生毕业设计[论文]}\\
			\vspace{6em}
			{\zihao{2} \heiti \bfseries \@title}\\
			\vspace{6em}
			{\zihao{3} \huawenzhongsong 
				\renewcommand\arraystretch{1.5}
				\begin{tabular}{lc}
					\makebox[4em][s]{院 \hfill 系} &
					\underline{\makebox[\HGP@titlelength]{\@school}} \\
					\makebox[4em][s]{专业班级} &
					\underline{\makebox[\HGP@titlelength]{\@classnum}} \\
					\makebox[4em][s]{姓 \hfill 名} &
					\underline{\makebox[\HGP@titlelength]{\@author}} \\
					\makebox[4em][s]{学 \hfill 号} &
					\underline{\makebox[\HGP@titlelength]{\@stunum}} \\
					\makebox[4em][s]{指导教师} &
					\underline{\makebox[\HGP@titlelength]{\@instructor}} \\
			\end{tabular}}\\
			\vspace{4em}
			{\zihao{3} \huawenzhongsong \@date}\\
		\end{center}
	\end{titlepage}
}


%
%	---	定义新的声明页面
%
%使用特殊符号
\RequirePackage{amssymb}

%定义三个条件语句
\newcommand{\encryption}[1]{
	\IfStrEqCase{#1}{{empty}{$\square$}
		{true}{$\text{\rlap{\checkmark}}\square$ }
		{false}{$\square$}}
	[$\square$]
}
\newcommand{\nonencryption}[1]{
	\IfStrEqCase{#1}{{empty}{$\square$}
		{true}{$\square$}
		{false}{$\text{\rlap{\checkmark}}\square$}}
	[$\square$]
}
\newcommand{\encryptionyear}[2]{
	\IfStrEqCase{#1}{{empty}{}
		{true}{#2}
		{false}{}}
}

%设置statement的参数解析
\def\HGP@checkedbox{$\text{\rlap{\checkmark}}\square$}
\def\HGP@box{$\square$}
\newcommand{\arg@statement}[2]{
	\IfStrEqCase{#1}{
		{encryption}{
			\IfStrEqCase{#2}{
				{yes}{
					\def\HGP@encrypted{\HGP@checkedbox}
					\def\HGP@unencrypted{\HGP@box}
				}
				{true}{
					\def\HGP@encrypted{\HGP@checkedbox}
					\def\HGP@unencrypted{\HGP@box}
				}
				{no}{
					\def\HGP@encrypted{\HGP@box}
					\def\HGP@unencrypted{\HGP@checkedbox}
				}
				{false}{
					\def\HGP@encrypted{\HGP@box}
					\def\HGP@unencrypted{\HGP@checkedbox}
				}
				{empty}{
					\def\HGP@encrypted{\HGP@box}
					\def\HGP@unencrypted{\HGP@box}
				}
			}[\ClassWarning{\HGP@name}{There's no such value for #1 (statement)}]
		}
		{year}{\def\HGP@yearofencryption{#2}}
	}[\ClassWarning{\HGP@name}{There's no such argument for statement}]
}
%设置命令
\newcommand{\statement}[1][encryption=empty]{
	\def\HGP@encrypted{\HGP@box}
	\def\HGP@unencrypted{\HGP@checkedbox}
	\def\HGP@yearofencryption{}
	\kv@parse{#1}{\arg@statement}
	\clearpage
	\thispagestyle{empty}
	\vspace*{1em}
	\begin{center}
		\heiti \zihao{-2} \bfseries
		学位论文原创性声明
	\end{center}
	
	本人郑重声明：所呈交的论文是本人在导师的指导下独立进行研究所取得的研究成果。除了文中特别加以标注引用的内容外，本论文不包括任何其他个人或集体已经发表或撰写的成果作品。本人完全意识到本声明的法律后果由本人承担。
	
	\rightline{作者签名：\hspace{6em} 年 \hspace{2em} 月 \hspace{2em} 日}
	\vspace{4em}
	
	\begin{center}
		\heiti \zihao{-2} \bfseries
		学位论文版权使用授权书
	\end{center}
	
	本学位论文作者完全了解学校有关保障、使用学位论文的规定，同意学校保留并向有关学位论文管理部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。本人授权省级优秀学士论文评选机构将本学位论文的全部或部分内容编入有关数据进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本学位论文。
	
	\begin{tabbing}
		\hspace{2em}本学位论文属于 \= 1、保密\hspace{1em} \=\HGP@encrypted
		，在\makebox[2em][c]{\HGP@yearofencryption}年解密后适用本授权书。\\
		\>2、不保密\>\HGP@unencrypted
		。\\
		\>（请在以上相应方框内打“$\checkmark$”）
	\end{tabbing}
	
	\rightline{作者签名：\hspace{6em} 年 \hspace{2em} 月 \hspace{2em} 日}
	
	\rightline{导师签名：\hspace{6em} 年 \hspace{2em} 月 \hspace{2em} 日}
	
	\clearpage
}
%旧的命令
\newcommand{\makestatement}[2][]{\statement[encryption=#2,year=#1]}


%
%	---	定义新的中英文摘要环境
%
%中文摘要环境
\newenvironment{cnabstract}[1]{
	\def \cnkeyword {#1}
	\clearpage 
	\phantomsection
	\addcontentsline{toc}{section}{摘要}
	\begin{center} \heiti \bfseries \zihao{-2} 摘 \hspace{2em} 要 \end{center}
	
}{
	\vspace{1em}
	\paragraph{\heiti \bfseries 关键词：} \cnkeyword
	\clearpage
}

%英文摘要环境
\newenvironment{enabstract}[1]{
	\def \enkeyword {#1}
	\clearpage 
	\phantomsection
	\addcontentsline{toc}{section}{Abstract}
	\begin{center} \bfseries \zihao{-2} Abstract \end{center}
	
}{
	\vspace{1em}
	\paragraph{\bfseries Key Words: } \enkeyword
	\clearpage
}


%
%	---	定义新的目录页面
%
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\hypersetup{
	%colorlinks = true,
	%linkcolor  = black,
	pdfborder = 000
} %去掉目录红框
\renewcommand{\cfttoctitlefont}{\hfill \heiti \zihao{-2} \bfseries}
\renewcommand{\contentsname}{目\hspace{2em}录}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftbeforeloftitleskip}{0.5em}
\renewcommand{\cftafterloftitleskip}{0.5em}
\renewcommand{\cftsecdotsep}{\cftdotsep} %设置Section引导点
\renewcommand{\cftbeforesecskip}{0em} %设置段间距
\renewcommand{\cftpartfont}{\songti \bfseries}%设置Part字体
\renewcommand{\cftsecfont}{\songti \bfseries}%设置Section字体

%使用条件语句
\RequirePackage{xstring}

%定义两个新语句
%第一个语句更改fancyhdr样式
\newcommand{\plainfooterstyle}[1]{
	\IfStrEqCase{#1}{{nopagenum}{}
		{pagenum}{\footstyle}
		{pagenumtoc}{\footstyle}}
}
%第二个语句在目录中添加目录标签
\newcommand{\addtoctotoc}[1]{
	\IfStrEqCase{#1}{{nopagenum}{}
		{pagenum}{}
		{pagenumtoc}{\phantomsection
			\addcontentsline{toc}{section}{目录}}}
}

%设置新的生成目录命令
\let \oldtableofcontens \tableofcontents
\newcommand{\maketoc}[1][nopagenum]{
	%修改hdr原plain格式
	\fancypagestyle{plain}{%
		\fancyhf{} %清空原有样式
		\headstyle
		\plainfooterstyle{#1}
	}
	%设置目录hdr和页码选项
	\clearpage
	\pagestyle{plain}
	\addtoctotoc{#1}
	\tableofcontents
	\clearpage
	\pagestyle{main}
}


%
%	---	定义新的致谢环境
%
\newenvironment{thankpage}{
	\clearpage
	\phantomsection
	\addcontentsline{toc}{section}{致谢}
	\section*{致谢}
}{
	\clearpage
}


%
%	---	重新定义参考文献页
%
%设置参考文献
%\RequirePackage[numbers]{natbib}
\bibliographystyle{gbt7714-2005}
\ctexset{bibname={参考文献}}

%设置新的附录命令
\let \oldbibliography \bibliography
\renewcommand{\bibliography}[1]{
	%添加到目录
	\clearpage
	\phantomsection
	\addcontentsline{toc}{section}{参考文献}
	\oldbibliography{#1}
}


%Test kvsetkeys
%\RequirePackage{kvsetkeys}
%\newcommand{\testtodo}[2]{#1~is~#2;~}
%\newcommand{\test}[1][]{
%	\kv@parse{#1}{\testtodo}
%}


