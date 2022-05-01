# XMU Thesis LaTeX Template

自用厦门大学本科生毕业论文 / 设计 LaTeX 模板。

排版格式遵守 《厦门大学本科毕业论文(设计)规范》（2016 年 2 月 24 日印发，厦大教〔2016〕5 号）并参考《本科毕业论文格式模板 2022 届版本》，冲突规则以前者为准。

用法参见 `thesis.tex` 文件。一般来说，你只需要：

- 按照 `thesis.tex` 中的示例，修改 `\xmusetup` 中的元信息
- 在 `chapters/` 下编写各章节的 TEX 文件，在 `thesis.tex` 使用 `\input{texpath}` 引入
- 使用 `make` 命令运行 LaTeXMK 得到 `thesis.pdf`

需要在 XeLaTeX 环境下编译，编写完成后直接使用 `make` 使用 LaTexMK 编译即可。

CTAN 宏包安装参考：

<details>

<summary>展开</summary>

```shell
$ tlmgr info --only-installed
i adobemapping: Adobe cmap and pdfmapping files
i ae: Virtual fonts for T1 encoded CMR-fonts
i algorithmicx: The algorithmic style you always wanted
i algorithms: A suite of tools for typesetting algorithms in pseudo-code
i amscls: AMS document classes for LaTeX
i amsfonts: TeX fonts from the American Mathematical Society
i amsmath: AMS mathematical facilities for LaTeX
i anysize: A simple package to set up document margins
i appendixnumberbeamer: Manage frame numbering in appendixes in beamer
i arabxetex: An ArabTeX-like interface for XeLaTeX
i arphic: Arphic (Chinese) font packages
i atbegshi: Execute stuff at \shipout time
i attachfile2: Attach files into PDF
i attachfile2.universal-darwin: universal-darwin files of attachfile2
i atveryend: Hooks at the very end of a document
i automata: Finite state machines, graphs and trees in MetaPost
i auxhook: Hooks for auxiliary files
i awesomebox: Draw admonition blocks in your documents, illustrated with FontAwesome icons
i babel: Multilingual support for Plain TeX or LaTeX
i babel-basque: Babel contributed support for Basque
i babel-czech: Babel support for Czech
i babel-danish: Babel contributed support for Danish
i babel-dutch: Babel contributed support for Dutch
i babel-english: Babel support for English
i babel-finnish: Babel support for Finnish
i babel-french: Babel contributed support for French
i babel-german: Babel support for documents written in German
i babel-hungarian: Babel support for Hungarian (Magyar)
i babel-italian: Babel support for Italian text
i babel-norsk: Babel support for Norwegian
i babel-polish: Babel support for Polish
i babel-portuges: Babel support for Portuges
i babel-spanish: Babel support for Spanish
i babel-swedish: Babel support for typesetting Swedish
i babelbib: Multilingual bibliographies
i bbcard: Bullshit bingo, calendar and baseball-score cards
i beamer: A LaTeX class for producing presentations and slides
i biber: A BibTeX replacement for users of BibLaTeX
i biber.universal-darwin: universal-darwin files of biber
i biblatex: Sophisticated Bibliographies in LaTeX
i biblatex-gb7714-2015: A BibLaTeX implementation of the GBT7714-2015 bibliography style for Chinese users
i bibtex: Process bibliographies for LaTeX, etc
i bibtex.universal-darwin: universal-darwin files of bibtex
i bidi-atbegshi: Bidi-aware shipout macros
i bidicontour: Bidi-aware coloured contour around text
i bidipagegrid: Bidi-aware page grid in background
i bidipresentation: Experimental bidi presentation
i bidishadowtext: Bidi-aware shadow text
i bigintcalc: Integer calculations on very large numbers
i bitset: Handle bit-vector datatype
i blockdraw_mp: Block diagrams and bond graphs, with MetaPost
i bookmark: A new bookmark (outline) organization for hyperref
i booktabs: Publication quality tables in LaTeX
i bpolynomial: Drawing polynomial functions of up to order 3
i breqn: Automatic line breaking of displayed equations
i businesscard-qrcode: Business cards with QR-Code
i caption: Customising captions in floating environments
i carlisle: David Carlisle's small packages
i catchfile: Catch an external file into a macro
i cite: Improved citation handling in LaTeX
i cjk: CJK language support
i cjkpunct: Adjust locations and kerning of CJK punctuation marks
i cm: Computer Modern fonts
i cmap: Make PDF files searchable and copyable
i cmarrows: MetaPost arrows and braces in the Computer Modern style
i cns: Chinese/Japanese/Korean bitmap fonts
i collection-basic: Essential programs and files
i collection-latex: LaTeX fundamental packages
i collection-latexrecommended: LaTeX recommended packages
i collection-metapost: MetaPost and Metafont packages
i collection-xetex: XeTeX and packages
i colorprofiles: Collection of free ICC profiles
i colortbl: Add colour to LaTeX tables
i cqubeamer: LaTeX Beamer Template for Chongqing University
i crop: Support for cropmarks
i ctable: Flexible typesetting of table and figure floats using key/value directives
i ctablestack: Catcode table stable support
i ctex: LaTeX classes and packages for Chinese typesetting
i dehyph: German hyphenation patterns for traditional orthography
i drv: Derivation trees with MetaPost
i dviincl: Include a DVI page into MetaPost output
i dvipdfmx: An extended version of dvipdfm
i dvipdfmx.universal-darwin: universal-darwin files of dvipdfmx
i dvips: A DVI to PostScript driver
i dvips.universal-darwin: universal-darwin files of dvips
i ec: Computer modern fonts in T1 and TS1 encodings
i emp: "Encapsulate" MetaPost figures in a document
i enctex: A TeX extension that translates input on its way into TeX
i enumitem: Control layout of itemize, enumerate, description
i epsincl: Include EPS in MetaPost figures
i epstopdf-pkg: Call epstopdf "on the fly"
i eso-pic: Add picture commands (or backgrounds) to every page
i etex: An extended version of TeX, from the NTS project
i etex-pkg: E-TeX support package
i etexcmds: Avoid name clashes with e-TeX commands
i etoolbox: e-TeX tools for LaTeX
i euenc: Unicode font encoding definitions for XeTeX
i euler: Use AMS Euler fonts for math
i eurosym: Metafont and macros for Euro sign
i everyhook: Hooks for standard TeX token lists
i everysel: Provides hooks into \selectfont
i everyshi: Take action at every \shipout
i expressg: Diagrams consisting of boxes, lines, and annotations
i exteps: Include EPS figures in MetaPost
i extsizes: Extend the standard classes' size options
i fancybox: Variants of \fbox and other games with boxes
i fancyhdr: Extensive control of page headers and footers in LaTeX2e
i fancyref: A LaTeX package for fancy cross-referencing
i fancyvrb: Sophisticated verbatim text
i fandol: Four basic fonts for Chinese typesetting
i featpost: MetaPost macros for 3D
i feynmf: Macros and fonts for creating Feynman (and other) diagrams
i feynmp-auto: Automatic processing of feynmp graphics
i filehook: Hooks for input files
i firstaid: First aid for external LaTeX files and packages that need updating
i fix2col: Fix miscellaneous two column mode features
i fixlatvian: Improve Latvian language support in XeLaTeX
i fiziko: A MetaPost library for physics textbook illustrations
i float: Improved interface for floating objects
i font-change-xetex: Macros to change text and mathematics fonts in plain XeTeX
i fontbook: Generate a font book
i fonts-tlwg: Thai fonts for LaTeX from TLWG
i fontspec: Advanced font selection in XeLaTeX and LuaLaTeX
i fontwrap: Bind fonts to specific unicode blocks
i footnotehyper: hyperref aware footnote.sty
i fp: Fixed point arithmetic
i framed: Framed or shaded regions that can break across pages
i fvextra: Extensions and patches for fancyvrb
i garrigues: MetaPost macros for the reproduction of Garrigues' Easter nomogram
i garuda-c90: TeX support (from CJK) for the garuda font
i geometry: Flexible and complete interface to document dimensions
i gettitlestring: Clean up title references
i glyphlist: Adobe Glyph List and TeX extensions
i gmp: Enable integration between MetaPost pictures and LaTeX
i graphics: The LaTeX standard graphics bundle
i graphics-cfg: Sample configuration files for LaTeX color and graphics
i graphics-def: Colour and graphics option files
i grfext: Manipulate the graphics package's list of extensions
i grffile: Extended file name support for graphics (legacy package)
i hatching: MetaPost macros for hatching interior of closed paths
i hologo: A collection of logos with bookmark support
i hopatch: Load patches for packages
i hycolor: Implements colour for packages hyperref and bookmark
i hyperref: Extensive support for hypertext in LaTeX
i hyph-utf8: Hyphenation patterns expressed in UTF-8
i hyphen-base: core hyphenation support files
i hyphen-basque: Basque hyphenation patterns.
i hyphen-czech: Czech hyphenation patterns.
i hyphen-danish: Danish hyphenation patterns.
i hyphen-dutch: Dutch hyphenation patterns.
i hyphen-english: English hyphenation patterns.
i hyphen-finnish: Finnish hyphenation patterns.
i hyphen-french: French hyphenation patterns.
i hyphen-german: German hyphenation patterns.
i hyphen-hungarian: Hungarian hyphenation patterns.
i hyphen-italian: Italian hyphenation patterns.
i hyphen-norwegian: Norwegian Bokmal and Nynorsk hyphenation patterns.
i hyphen-polish: Polish hyphenation patterns.
i hyphen-portuguese: Portuguese hyphenation patterns.
i hyphen-spanish: Spanish hyphenation patterns.
i hyphen-swedish: Swedish hyphenation patterns.
i hyphenex: US English hyphenation exceptions file
i ifplatform: Conditionals to test which platform is being used
i iftex: Am I running under pdfTeX, XeTeX or LuaTeX?
i index: Extended index for LaTeX including multiple indexes
i infwarerr: Complete set of information/warning/error message macros
i intcalc: Expandable arithmetic operations with integers
i interchar: Managing character class schemes in XeTeX
i jknapltx: Miscellaneous packages by Joerg Knappen
i knuth-lib: Core TeX and Metafont sources from Knuth
i knuth-local: Knuth's local information
i koma-script: A bundle of versatile classes and packages
i kpathsea: Path searching library for TeX-related files
i kpathsea.universal-darwin: universal-darwin files of kpathsea
i kvdefinekeys: Define keys for use in the kvsetkeys package
i kvoptions: Key value format for package options
i kvsetkeys: Key value parser with default handler support
i l3backend: LaTeX3 backend drivers
i l3experimental: Experimental LaTeX3 concepts
i l3kernel: LaTeX3 programming conventions
i l3packages: High-level LaTeX3 concepts
i latex: A TeX macro package that defines LaTeX
i latex-base-dev: Development pre-release of the LaTeX kernel
i latex-bin: LaTeX executables and man pages
i latex-bin.universal-darwin: universal-darwin files of latex-bin
i latex-firstaid-dev: Development pre-release of the LaTeX firstaid package
i latex-fonts: A collection of fonts used in LaTeX distributions
i latexbug: Bug-classification for LaTeX related bugs
i latexconfig: configuration files for LaTeX-related formats
i latexindent: Indent a LaTeX document, highlighting the programming structure
i latexindent.universal-darwin: universal-darwin files of latexindent
i latexmk: Fully automated LaTeX document generation
i latexmk.universal-darwin: universal-darwin files of latexmk
i latexmp: Interface for LaTeX-based typesetting in MetaPost
i letltxmacro: Let assignment for LaTeX macros
i lineno: Line numbers on paragraphs
i listing: Produce formatted program listings
i listings: Typeset source code listings using LaTeX
i lm: Latin modern fonts in outline formats
i lm-math: OpenType maths fonts for Latin Modern
i logreq: Support for automation of the LaTeX workflow
i ltxcmds: Some LaTeX kernel commands for general use
i ltxmisc: Miscellaneous LaTeX packages, etc
i lua-alt-getopt: Process application arguments the same way as getopt_long
i lua-uni-algos: Unicode algorithms for LuaTeX
i luahbtex: LuaTeX with HarfBuzz library for glyph shaping
i luahbtex.universal-darwin: universal-darwin files of luahbtex
i lualibs: Additional Lua functions for LuaTeX macro programmers
i luaotfload: OpenType 'loader' for Plain TeX and LaTeX
i luaotfload.universal-darwin: universal-darwin files of luaotfload
i luatex: The LuaTeX engine
i luatex.universal-darwin: universal-darwin files of luatex
i luatexbase: Basic resource management for LuaTeX code
i luatexja: Typeset Japanese with Lua(La)TeX
i lwarp: Converts LaTeX to HTML
i lwarp.universal-darwin: universal-darwin files of lwarp
i makecmds: The new \makecommand command always (re)defines a command
i makeindex: Makeindex development sources
i makeindex.universal-darwin: universal-darwin files of makeindex
i mathspec: Specify arbitrary fonts for mathematics in XeTeX
i mathtools: Mathematical tools to use with amsmath
i mcf2graph: Draw chemical structure diagrams with Metafont/MetaPost
i mdwtools: Miscellaneous tools by Mark Wooding
i memoir: Typeset fiction, non-fiction and mathematical books
i metafont: A system for specifying fonts
i metafont.universal-darwin: universal-darwin files of metafont
i metago: MetaPost output of Go positions
i metalogo: Extended TeX logo macros
i metaobj: MetaPost package providing high-level objects
i metaplot: Plot-manipulation macros for use in MetaPost
i metapost: A development of Metafont for creating graphics
i metapost-colorbrewer: An implementation of the colorbrewer2.org colours for MetaPost
i metapost.universal-darwin: universal-darwin files of metapost
i metauml: MetaPost library for typesetting UML diagrams
i mflogo: LaTeX support for Metafont logo fonts
i mfnfss: Packages to typeset oldgerman and pandora fonts in LaTeX
i mfpic: Draw Metafont/post pictures from (La)TeX commands
i mfpic4ode: Macros to draw direction fields and solutions of ODEs
i mfware: Supporting tools for use with Metafont
i mfware.universal-darwin: universal-darwin files of mfware
i microtype: Subliminal refinements towards typographical perfection
i minted: Highlighted source code for LaTeX
i modes: A collection of Metafont mode_def's
i mp3d: 3D animations
i mparrows: MetaPost module with different types of arrow heads
i mpattern: Patterns in MetaPost
i mpcolornames: Extend list of predefined colour names for MetaPost
i mpgraphics: Process and display MetaPost figures inline
i mptopdf: mpost to PDF, native MetaPost graphics inclusion
i mptopdf.universal-darwin: universal-darwin files of mptopdf
i mptrees: Probability trees with MetaPost
i ms: Various LaTeX packages by Martin Schroder
i na-position: Tables of relative positions of curves and asymptotes or tangents in Arabic documents
i natbib: Flexible bibliography support
i newfloat: Define new floating environments
i norasi-c90: TeX support (from CJK) for the norasi font
i ntgclass: "European" versions of standard classes
i oberdiek: A bundle of packages submitted by Heiko Oberdiek
i pagesel: Select pages of a document for output
i parskip: Layout with zero \parindent, non-zero \parskip
i pdfescape: Implements pdfTeX's escape features using TeX or e-TeX
i pdflscape: Make landscape pages display as landscape
i pdfmanagement-testphase: LaTeX PDF management testphase bundle
i pdfpages: Include PDF documents in LaTeX
i pdftex: A TeX extension for direct creation of PDF
i pdftex.universal-darwin: universal-darwin files of pdftex
i pdftexcmds: LuaTeX support for pdfTeX utility functions
i pgf: Create PostScript and PDF graphics in TeX
i philokalia: A font to typeset the Philokalia Books
i piechartmp: Draw pie-charts using MetaPost
i plain: The Plain TeX format
i platex: pLaTeX2e and miscellaneous macros for pTeX
i platex-tools: pLaTeX standard tools bundle
i platex.universal-darwin: universal-darwin files of platex
i polyglossia: An alternative to babel for XeLaTeX and LuaLaTeX
i psfrag: Replace strings in encapsulated PostScript figures
i pslatex: Use PostScript fonts by default
i psnfss: Font support for common PostScript fonts
i pspicture: PostScript picture support
i ptex: A TeX system for publishing in Japanese
i ptex-base: Plain TeX format for pTeX and e-pTeX
i ptex-fonts: Fonts for use with pTeX
i ptex.universal-darwin: universal-darwin files of ptex
i ptext: A 'lipsum' for Persian
i ragged2e: Alternative versions of "ragged"-type commands
i rcs: Use RCS (revision control system) tags in LaTeX documents
i realscripts: Access OpenType subscript and superscript glyphs
i refcount: Counter operations with label references
i repere: Diagrams for school mathematics
i rerunfilecheck: Checksum based rerun checks on auxiliary files
i revtex: Styles for various Physics Journals
i roex: Metafont-PostScript conversions
i roundrect: MetaPost macros for highly configurable rounded rectangles (optionally with text)
i sansmath: Maths in a sans font
i scheme-basic: basic scheme (plain and latex)
i scheme-infraonly: infrastructure-only scheme (no TeX at all)
i scheme-minimal: minimal scheme (plain only)
i scheme-small: small scheme (basic + xetex, metapost, a few languages)
i section: Modifying section commands in LaTeX
i seminar: Make overhead slides
i sepnum: Print numbers in a "friendly" format
i setspace: Set space between lines
i shapes: Draw polygons, reentrant stars, and fractions in circles with MetaPost
i simple-resume-cv: Template for a simple resume or curriculum vitae (CV), in XeLaTeX
i simple-thesis-dissertation: Template for a simple thesis or dissertation (Ph.D. or master's degree) or technical report, in XeLaTeX
i slideshow: Generate slideshow with MetaPost
i splines: MetaPost macros for drawing cubic spline interpolants
i stringenc: Converting a string between different encodings
i suanpan: MetaPost macros for drawing Chinese and Japanese abaci
i subfig: Figures broken into subfigures
i subfigure: Deprecated: Figures divided into subfigures
i svn-prov: Subversion variants of \Provides... macros
i symbol: URW "Base 35" font pack for LaTeX
i synctex: engine-level feature synchronizing output and source
i synctex.universal-darwin: universal-darwin files of synctex
i tetragonos: Four-Corner codes of Chinese characters
i tex: A sophisticated typesetting engine
i tex-ini-files: Model TeX format creation files
i tex.universal-darwin: universal-darwin files of tex
i texlive-common: TeX Live documentation (common elements)
i texlive-docindex: top-level TeX Live doc.html, etc.
i texlive-en: TeX Live manual (English)
i texlive-msg-translations: translations of the TeX Live installer and TeX Live Manager
i texlive-scripts: TeX Live infrastructure programs
i texlive-scripts.universal-darwin: universal-darwin files of texlive-scripts
i texlive.infra: basic TeX Live infrastructure
i texlive.infra.universal-darwin: universal-darwin files of texlive.infra
i textcase: Case conversion ignoring mathematics, etc
i textpath: Setting text along a path with MetaPost
i threeddice: Create images of dice with one, two, or three faces showing, using MetaPost
i thumbpdf: Thumbnails for pdfTeX and dvips/ps2pdf
i thumbpdf.universal-darwin: universal-darwin files of thumbpdf
i times: URW "Base 35" font pack for LaTeX
i tipa: Fonts and macros for IPA phonetics characters
i titlesec: Select alternative section titles
i tlshell: GUI frontend (tcl/tk-based) for tlmgr
i tlshell.universal-darwin: universal-darwin files of tlshell
i tools: The LaTeX standard tools bundle
i translator: Easy translation of strings in LaTeX
i ttfutils: convert TrueType to TFM and PK fonts
i ttfutils.universal-darwin: universal-darwin files of ttfutils
i typehtml: Typeset HTML directly from LaTeX
i ucharcat: Implementation of the (new in 2015) XeTeX \Ucharcat command in lua, for LuaTeX
i ucharclasses: Font actions in XeTeX according to what is being processed
i uhc: Fonts for the Korean language
i ulem: Package for underlining
i underscore: Control the behaviour of "_" in text
i unicode-bidi: Experimental unicode bidi package for XeTeX
i unicode-data: Unicode data and loaders for TeX
i unicode-math: Unicode mathematics support for XeTeX and LuaTeX
i uniquecounter: Provides unlimited unique counter
i unisugar: Define syntactic sugar for Unicode LaTeX
i uplatex: pLaTeX2e and miscellaneous macros for upTeX
i uplatex.universal-darwin: universal-darwin files of uplatex
i upquote: Show "realistic" quotes in verbatim
i uptex: Unicode version of pTeX
i uptex-base: Plain TeX formats and documents for upTeX
i uptex-fonts: Fonts for use with upTeX
i uptex.universal-darwin: universal-darwin files of uptex
i url: Verbatim with URL-sensitive line breaks
i wadalab: Wadalab (Japanese) font packages
i xcjk2uni: Convert CJK characters to Unicode, in pdfTeX
i xcolor: Driver-independent color extensions for LaTeX and pdfLaTeX
i xdvi: A DVI previewer for the X Window System
i xdvi.universal-darwin: universal-darwin files of xdvi
i xebaposter: Create beautiful scientific Persian/Latin posters using TikZ
i xechangebar: An extension of package changebar that can be used with XeLaTeX
i xecjk: Support for CJK documents in XeLaTeX
i xecolor: Support for color in XeLaTeX
i xecyr: Using Cyrillic languages in XeTeX
i xeindex: Automatic index generation for XeLaTeX
i xelatex-dev: (shortdesc missing)
i xelatex-dev.universal-darwin: universal-darwin files of xelatex-dev
i xesearch: A string finder for XeTeX
i xespotcolor: Spot colours support for XeLaTeX
i xetex: An extended variant of TeX for use with Unicode sources
i xetex-itrans: Itrans input maps for use with XeLaTeX
i xetex-pstricks: Running PSTricks under XeTeX
i xetex-tibetan: XeTeX input maps for Unicode Tibetan
i xetex.universal-darwin: universal-darwin files of xetex
i xetexconfig: crop.cfg for XeLaTeX
i xetexfontinfo: Report font features in XeTeX
i xetexko: Typeset Korean with Xe(La)TeX
i xevlna: Insert non-breakable spaces using XeTeX
i xkeyval: Extension of the keyval package
i xltxtra: "Extras" for LaTeX users of XeTeX
i xpatch: Extending etoolbox patching commands
i xpinyin: Automatically add pinyin to Chinese characters
i xstring: String manipulation for (La)TeX
i xunicode: Generate Unicode characters from accented glyphs
i zapfding: URW "Base 35" font pack for LaTeX
i zbmath-review-template: Template for a zbMATH Open review
i zhlineskip: Line spacing for CJK documents
i zhmetrics: TFM subfont files for using Chinese fonts in 8-bit TeX
i zhmetrics-uptex: Chinese font metrics for upTeX
i zhnumber: Typeset Chinese representations of numbers
```

</details>