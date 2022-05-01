\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xmuthesis}[2022/4/29 XMU Bachelor Degree Thesis LaTeX Template]
\hyphenation{XMU-Thesis}
\LoadClass{ctexbook}
\PassOptionsToClass{a4paper, zihao=-4, 12pt, fontset=none, dvipsnames, svgnames, x11names}{ctexbook}
\PassOptionsToClass{\CurrentOption}{ctexbook}

\RequirePackage{amsmath}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage[backend=biber,style=gb7714-2015,sorting=none,hyperref=true]{biblatex}
\RequirePackage{etoolbox}
\RequirePackage{enumitem}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage{fontspec}
\RequirePackage{hyperref}
\RequirePackage{keyval}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{minted}
\RequirePackage{multicol}
\RequirePackage{listings}
\RequirePackage{lmodern}
\RequirePackage{pdfpages}
\RequirePackage{scrextend}
\RequirePackage{setspace}
\RequirePackage{subfigure}
\RequirePackage{titletoc}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage{xltxtra}
\RequirePackage{xpatch}

\makeatletter

%% 字体设置

% ---------- 设置英文字体为 Times New Roman ----------
\setmainfont{Times New Roman}

% ---------- 设置中文 / CJK 字体 ----------
%% 对于 macOS 用户，宋体请使用 Songti SC, 黑体请使用 Heiti SC，楷体使用 Kaiti SC
%% 对于 Windows 用户，宋体请使用 SimSun, 黑体请使用 SimHei，楷体使用 KaiTi
\def\macos{macos}
\def\windows{windows}
\ifx\FontPreset\windows
\setCJKmainfont{SimSun}[AutoFakeBold, AutoFakeSlant]
\setCJKsansfont{SimHei}[AutoFakeBold, AutoFakeSlant]
\setCJKmonofont{SimSun}[AutoFakeBold, AutoFakeSlant]
\setCJKfamilyfont{SongTi}{SimSun}[AutoFakeBold, AutoFakeSlant]
\setCJKfamilyfont{HeiTi}{SimHei}[AutoFakeBold, AutoFakeSlant]
\setCJKfamilyfont{KaiTi}{KaiTi}[AutoFakeBold, AutoFakeSlant]
\setmonofont{Consolas}
\else
\setCJKmainfont{Songti SC}[AutoFakeBold, AutoFakeSlant]
\setCJKsansfont{Heiti SC}[AutoFakeBold, AutoFakeSlant]
\setCJKmonofont{Songti SC}[AutoFakeBold, AutoFakeSlant]
\setCJKfamilyfont{SongTi}{Songti SC}[AutoFakeBold, AutoFakeSlant]
\setCJKfamilyfont{HeiTi}{Heiti SC}[AutoFakeBold, AutoFakeSlant]
\setCJKfamilyfont{KaiTi}{Kaiti SC}[AutoFakeBold, AutoFakeSlant]
\setmonofont{Monaco}
\fi

\newcommand{\Song}{\CJKfamily{SongTi}}
\newcommand{\Hei}{\CJKfamily{HeiTi}}
\newcommand{\Kai}{\CJKfamily{KaiTi}}

% ---------- 字号设置 ----------
\newcommand{\ChuHao}{\zihao{0}}
\newcommand{\YiHao}{\zihao{1}}
\newcommand{\XiaoYi}{\zihao{-1}}   
\newcommand{\ErHao}{\zihao{2}}          
\newcommand{\XiaoEr}{\zihao{-2}}          
\newcommand{\SanHao}{\zihao{3}}        
\newcommand{\XiaoSan}{\zihao{-3}}        
\newcommand{\SiHao}{\zihao{4}}            
\newcommand{\XiaoSi}{\zihao{-4}}            
\newcommand{\WuHao}{\zihao{5}}
\newcommand{\XiaoWu}{\zihao{-5}}    
\newcommand{\LiuHao}{\zihao{6}}


%% 格式设置

% 全局页眉页脚样式
\pagestyle{plain}

% 1.5 倍行距，实际上由于 LaTeX 和 Word 的排版方法不太一样，因此需要特殊处理
\linespread{1.6}
\renewcommand{\baselinestretch}{1.6}

% 页边距：上边距和左边距应留 25mm 以上间隙，下边距和右边距应分别留 20mm 以上间隙，以便于装订
% 这里定义的是 Word 的默认设置
\geometry{a4paper, left=3.18cm, right=3.18cm, top=2.54cm, bottom=2.54cm}

% 英文段落首段缩进 2 字符
\setlength{\parindent}{2em}

% 章标题样式 小三黑体
\ctexset{chapter/break={}}
\renewcommand{\chaptermark}[1]{\markboth{第  \chinese{chapter} 章 \, \enspace  #1}{}}

\titleformat
  {\chapter}
  {\centering\XiaoSan\Hei}
  {第\chinese{chapter}章}
  {1em}
  {}
\titlespacing{\chapter}{0pt}{-6pt}{12pt}

% 节标题样式 小四黑体
\titleformat
  {\section}
  {\SiHao \Hei}
  {\thesection}
  {1em}
  {}
\titlespacing{\section}{0pt}{6pt}{6pt}

% 小节标题格式 小四号黑体
\titleformat
  {\subsection}
  {\XiaoSi \Hei}
  {\thesubsection}
  {1em}
  {}
\titlespacing{\subsection}{0pt}{6pt}{6pt}

% 超链接样式
\hypersetup{
  colorlinks = true, 
  linkcolor = black, 
  citecolor = black, 
  anchorcolor = black,
  urlcolor = blue
}

% 插图样式
\newenvironment{newfigure}{
  \vspace*{1\baselineskip}
  \figure[H]
  \centering
}{
  \endfigure
  \vspace*{1\baselineskip}
}
\renewcommand{\thetable}{\WuHao \Song \bfseries \thechapter{}-\arabic{table}} 
\renewcommand{\thefigure}{\WuHao \Song \bfseries \thechapter{}-\arabic{figure}}
\DeclareCaptionFormat{xmuformat}{\bfseries\WuHao\selectfont#1#2#3}
\captionsetup{format=xmuformat, labelsep=space}

% 表格样式
\newenvironment{newtable}{
  \vspace*{1\baselineskip}
  \table[H]
  \centering
}{
  \endtable
  \vspace*{1\baselineskip}
}

% 代码样式设置
\definecolor{CodeBackground}{RGB}{235,235,235}
\BeforeBeginEnvironment{minted}{\vspace{-6pt}}
\AfterEndEnvironment{minted}{\vspace{-6pt}}
\setlength{\fboxsep}{0pt}
\setminted{frame=single, framesep=2mm, baselinestretch=1.25, breaklines, mathescape, bgcolor=CodeBackground, fontsize=\WuHao}
\usemintedstyle{default}

% 中文目录格式
%% 目录标题 小三黑体
\renewcommand{\contentsname}{\Hei\XiaoSan\ziju{0.5} 目录}
\newcommand{\setcntocstyle}{
  % 章标题 四号黑体
  \titlecontents{chapter}
    [2cm]
    {\Hei\SiHao}%
    {\contentslabel{3.5em}}
    {\hspace{-3.5em}}
    {\titlerule*[0.5pc]{$\cdot$}\contentspage}
    [\addvspace{0pt}]
  % 节标题 小四黑体
  \titlecontents{section}
    [2.5cm]
    {\Hei\XiaoSi}%
    {\contentslabel{2.5em}}
    {}%
    {\titlerule*[0.5pc]{$\cdot$}\contentspage}
    [\addvspace{0pt}]
  % 子节标题 小四宋体
  \titlecontents{subsection}
    [3cm]
    {\Song\XiaoSi}%
    {\contentslabel{2.5em}}
    {}%
    {\titlerule*[0.5pc]{$\cdot$}\contentspage}
    [\addvspace{0pt}]
}

% 英文目录
\newcommand{\encontentsname}{\XiaoSan \bfseries Contents}
\newcommand{\entableofcontents}
  {
    \if@twocolumn
      \@restonecoltrue
      \onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{
        \encontentsname
        \@mkboth{\MakeUppercase\encontentsname}{\MakeUppercase\encontentsname}
      }
    \@starttoc{toe}
    \if@restonecol
      \twocolumn
    \fi
  }

% 英文章节标题格式
% 章标题 四号 Times New Roman 加粗
\newcommand{\addenchapter}[1]
  {
    \addcontentsline{toe}{chapter}{\SiHao \bfseries Chapter \numberline{\thechapter}#1}
  }
% 节标题 小四号 Times New Roman 加粗
\newcommand{\addensection}[1]
  {
    \addcontentsline{toe}{section}{\XiaoSi \bfseries \numberline{\thesection}#1}
  }  
% 子节标题 小四号 Times New Roman
\newcommand{\addensubsection}[1]
  {
    \addcontentsline{toe}{subsection}{\XiaoSi \numberline{\thesubsection}#1}
  }  

\newcommand{\addencontents}[2]
{
  \addcontentsline{toe}{#1}{\protect\numberline{\csname the#1\endcsname}#2}
}

% 引用
\renewcommand{\bibfont}{\WuHao\Song}

% 列表项格式
\setlist{noitemsep}
\setlist[enumerate]{topsep=0pt}

% 定义、引理、定理
\newtheorem{definition}{定义}
\newtheorem{lemma}{引理}
\newtheorem{theorem}{定理}
\numberwithin{definition}{chapter}
\numberwithin{lemma}{chapter}
\numberwithin{theorem}{chapter}

%% 命令定义

% ---------- \xmusetup 自定义选项 ----------
% 论文标题
\define@key{thesis}{title}{\def \ThesisTitle{#1} \title {#1}}
% 英文标题
\define@key{thesis}{en-title}{\def \ThesisEnTitle {#1}}
% 姓名
\define@key{thesis}{author}{\def \ThesisAuthor {#1} \author {#1}}
% 学号
\define@key{thesis}{student-no}{\def \ThesisStudentNo {#1}}
% 学院
\define@key{thesis}{institute}{\def \ThesisInstitute {#1}}
% 专业
\define@key{thesis}{profession}{\def \ThesisProfession {#1}}
% 年级
\define@key{thesis}{grade}{\def \ThesisGrade {#1}}
% 专业类型（主修 / 辅修）
\define@key{thesis}{type}{\def \ThesisProfessionType {#1}}
% 校内指导老师
\define@key{thesis}{teacher}{\def \ThesisTeacher {#1}}
% 校内指导老师职称
\define@key{thesis}{teacher-title}{\def \ThesisTeacherTitle {#1}}
% 校外指导老师
\define@key{thesis}{offcampus-teacher}{\def \ThesisOffcampusTeacher {#1}}
% 校外指导老师职务
\define@key{thesis}{offcampus-teacher-title}{\def \ThesisOffcampusTeacherTitle {#1}}
% 日期
\define@key{thesis}{date}{\def \ThesisDate {#1}}
% 摘要关键词（中文）
\define@key{thesis}{keyword}{\def \AbstractKeyword {#1}}
% 摘要关键词（英文）
\define@key{thesis}{en-keyword}{\def \AbstractEnKeyword{#1}}
% 字体设定集
\define@key{thesis}{font-preset}{\def \FontPreset {#1}}

\newcommand\xmusetup[1]{\setkeys{thesis}{#1}}

% ---------- 致谢模板 ----------
\newenvironment{acknowledge}
  {
    \clearpage
    \pagenumbering{Roman}
    \setcounter{page}{2}

    \begin{center}
      \XiaoSan \ziju{1} \Hei 致谢
    \end{center}

    \XiaoSi \Song
  }
  {
    \newpage
  }

% ---------- 摘要模板 ----------
\newenvironment{abstract}
  {
    \clearpage
    \begin{center}
      \XiaoSan \ziju{1} \Hei 摘要
    \end{center}

    \XiaoSi \Song
  }
  {
    \vspace*{\baselineskip}
    \par \noindent \Hei 关键词：\Song \AbstractKeyword
    \newpage
  }

% ---------- 英文摘要 ----------
\newenvironment{abstract-en}
  {
    \clearpage
    \begin{center}
      \XiaoSan \textbf{Abstract}
    \end{center}

    \begin{spacing}{1.5}
    \XiaoSi
  }
  {
    \end{spacing}
    \vspace*{\baselineskip}
    
    \XiaoSi \noindent \textbf{Key words:}  \AbstractEnKeyword
    
    \newpage
  }

% 插入封面
\renewcommand{\maketitle}{
  \thispagestyle{empty}
  \begin{center}
    \vspace*{2\baselineskip}

    % 厦门大学 Logo
    \includegraphics[width=0.33\paperwidth]{figures/XiamenUniversity.png}
    \vspace*{2\baselineskip}
    
    \XiaoEr \ziju{0.85} \textbf{本科毕业论文（设计）}
    
    \SanHao \ziju{0} \textbf{（\ThesisProfessionType 专业）}
    
    \SiHao \vspace*{1\baselineskip}

    % 论文标题（二号黑体）
    \begin{spacing}{1.25}
      \ErHao \Hei \ThesisTitle
    \end{spacing}

    % 英文标题（三号 Times New Roman 加粗）
    \SanHao \textbf{\ThesisEnTitle}

    \SiHao \vspace*{0.25\baselineskip}

    \renewcommand{\arraystretch}{1.5}
    \XiaoSi \Song
    \begin{tabular}{rl}
      \ziju{2} 姓名：& \ThesisAuthor \\
      \ziju{2} 学号：& \ThesisStudentNo \\
      \ziju{2} 学院：& \ThesisInstitute \\
      \ziju{2} 专业：& \ThesisProfession \\
      \ziju{2} 年级：& \ThesisGrade 级 \\
      校内指导老师：& \ThesisTeacher \quad \ThesisTeacherTitle \\

      \ifx\ThesisOffcampusTeacher\undefined
      \else
      校外指导老师：& \ThesisOffcampusTeacher \quad \ThesisOffcampusTeacherTitle
      \fi
    \end{tabular}

    \SanHao \vspace*{1\baselineskip}

    \SiHao \ThesisDate
  \end{center}
}

% 插入目录
\newcommand{\maketoc}{
  \setcntocstyle
  \tableofcontents
  \newpage
  \entableofcontents
  \newpage
}

% 开始正文前的设置命令，设置页眉和页脚
\newcommand{\beginbody}{
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \pagestyle{fancy}
  \fancyhf{}
  \fancyhead[CO]{\Song \XiaoWu \leftmark}      % 奇数页页眉显示章节标号和标题
  \fancyhead[CE]{\Song \XiaoWu \ThesisTitle}   % 偶数页页眉显示论文标题
  \fancyfoot[C]{\thepage}
  \mainmatter
}

% 创建章命令
\newcommand{\newchapter}[2]{
  \clearpage{\thispagestyle{fancy}\cleardoublepage}
  \chapter{#1}
  \addenchapter{#2}
  \thispagestyle{fancy}
  \XiaoSi\Song
}

% 创建节命令
\newcommand{\newsection}[2]{
  \section{#1}
  \addensection{#2}
  \XiaoSi\Song
}

% 创建小节命令
\newcommand{\newsubsection}[2]{
  \subsection{#1}
  \addensubsection{#2}
  \XiaoSi\Song
}

% 设置引用
\addbibresource{refs.bib}

% 插入参考文献页面
\newcommand{\makerefs}{
  \clearpage{\thispagestyle{fancy}\cleardoublepage}
  \printbibliography[title = 参考文献]
  \thispagestyle{fancy}
  \fancyhf{}
  \fancyhead[CO]{\Song \XiaoWu \leftmark}
  \fancyhead[CE]{\Song \XiaoWu \ThesisTitle}
  \fancyfoot[C]{\thepage}
  \Song\WuHao
}

% 插入附录页面
\newcommand{\makeappendix}{
  \clearpage{\thispagestyle{fancy}\cleardoublepage}
  \chapter*{附录}
  \markboth{附录}{附录}
  \addcontentsline{toc}{chapter}{附录}
  \addcontentsline{toe}{chapter}{\SiHao \bfseries Appendix}
  \input{chapters/appendix}
  \thispagestyle{fancy}
  \fancyhf{}
  \fancyhead[CO]{\Song \XiaoWu \leftmark}
  \fancyhead[CE]{\Song \XiaoWu \ThesisTitle}
  \fancyfoot[C]{\thepage}
}

\makeatother
