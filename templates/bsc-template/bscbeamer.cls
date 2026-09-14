% Template for BSC / Earth Sciences Department (CES) presentations with
% LaTeX beamer.
%
% Navy/white BSC+CES visual identity, matching Template-BSC+CES.pptx (the
% source pptx lives alongside templates/, one level up).
%
% Structurally modeled on lut-template/lutbeamer.cls and
% albatross-template/albatrossbeamer.cls (frametitle, title page, footline
% templates; full-bleed background photos via a scoped background template).
%
% Compile with XeLaTeX. Uses Carlito (a Calibri metric-compatible clone),
% loaded via fontspec from the system font (package fonts-crosextra-carlito
% on Debian/Ubuntu) rather than bundling Calibri itself, which is
% proprietary and can't be redistributed.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bscbeamer}[2026/09/14]

\PassOptionsToClass{aspectratio=169}{beamer} % Default, may be overridden
\ProcessOptions\relax
\LoadClass{beamer}

\RequirePackage{fontspec}
\setmainfont{Carlito}
\RequirePackage{graphicx,bsccolor,tikz}

% Following commands will not be activated for article mode.
\mode<presentation>

% No navigation symbols
\setbeamertemplate{navigation symbols}{}

% phantom items
\setbeamercovered{transparent}

% Colors
\setbeamercolor{normal text}{fg=black,bg=bscwhite}
\setbeamercolor{background canvas}{bg=bscwhite}
\setbeamercolor{structure}{fg=bscnavy}
\setbeamercolor{alerted text}{fg=bscnavy}
\setbeamercolor{frametitle}{fg=bscwhite,bg=bscnavy}
\setbeamercolor{framesubtitle}{fg=bscgrey,bg=bscnavy}
\setbeamercolor{title}{fg=bscblue,bg=bscwhite}
\setbeamercolor{subtitle}{fg=black,bg=bscwhite}
\setbeamercolor{author}{fg=bscnavy}
\setbeamercolor{date}{fg=white}

% Title-slide title/subtitle sizes -- scaled from beamer's default
% \normalsize (11pt, matching the title page's author/date text, which is
% unset and kept as-is) using the same proportions as the original Google
% Slides deck's point sizes: title 69.5pt : subtitle 39.5pt : author/date
% 29.5pt. Distinct from the generic "title"/"subtitle" beamerfonts (still
% their beamer defaults) so \bscsectionpage's title stays unaffected.
\setbeamerfont{bsctitleboxtitle}{size={\fontsize{25.92pt}{32.04pt}\selectfont},series=\bfseries}
\setbeamerfont{bsctitleboxsubtitle}{size={\fontsize{14.73pt}{18.21pt}\selectfont}}

% Bullet points: circles, colored from the structure color (navy)
\setbeamertemplate{itemize item}[circle]
\setbeamertemplate{itemize subitem}[circle]
\setbeamertemplate{itemize subsubitem}[circle]

% Brand assets. Logos and the title-slide earth photo are fixed brand
% elements (internal-only macros); the section/closing background photo is
% a generic placeholder meant to be swapped per presentation, so it gets a
% public override command instead.
\newcommand{\@BSClogo}{assets/logo-bsc}
\newcommand{\@BSCtitlelogo}{assets/logo-earth-sciences-bsc}
\newcommand{\@BSCtitlephoto}{assets/bg-earth}
\newcommand{\@BSCsectionphoto}{assets/bg-section}
\newcommand{\setbscsectionphoto}[1]{\renewcommand{\@BSCsectionphoto}{#1}}

% Logo indent on content-slide frame titles.
\newlength{\bscframetitleindent}
\setlength{\bscframetitleindent}{6mm}

% Frame title: solid navy band, white bold uppercase title, optional
% subtitle line underneath. No logo in the band -- the brand logo lives in
% the footline instead, matching the source deck's content slides.
\setbeamertemplate{frametitle}
{
  \nointerlineskip
  \begin{beamercolorbox}[wd=\paperwidth,ht=13mm,dp=3mm,left]{frametitle}
    \hspace*{\bscframetitleindent}%
    \usebeamerfont{frametitle}\MakeUppercase{\insertframetitle}\\[-1mm]
    \ifx\insertframesubtitle\@empty\else
      \hspace*{\bscframetitleindent}{\usebeamerfont{framesubtitle}\usebeamercolor[fg]{framesubtitle}\insertframesubtitle}%
    \fi
  \end{beamercolorbox}
}

% Title page: the earth photo is the full-slide background (set by
% \bsctitleframe below, which also opens the frame); this template places
% the foreground content -- logo lockup, title, subtitle, an author bar and
% a date label -- each at an absolute position on the page. Positions/sizes
% are copied directly from the brand spec (a 20in x 11.25in slide) and
% converted to fractions of \paperwidth/\paperheight, so they carry over
% regardless of beamer's own physical page size.
\setbeamertemplate{title page}
{
  \begin{tikzpicture}[remember picture,overlay]
    % Light-grey scrim behind every right-side element (logo/title/subtitle/
    % name) -- left edge matches the Name-and-surname box's left edge
    % (x:7.49in), full height, right up to the slide's right edge. The
    % date/venue box stays outside it, left of x:7.49in, directly on the raw
    % photo (hence its white text).
    \fill[bscgrey,opacity=0.8]
      ([xshift=0.3745\paperwidth]current page.north west)
      rectangle
      (current page.south east);

    % Earth Sciences + BSC logo -- x:8.24in y:0.23in w:7.7in h:1.17in
    \node[anchor=north west,inner sep=0pt,
          xshift=0.4120\paperwidth,yshift=-0.0204\paperheight]
      at (current page.north west)
      {\includegraphics[width=0.3850\paperwidth]{\@BSCtitlelogo}};

    % Presentation title -- x:8.24in y:3.76in, right edge 0.75in from the
    % slide's right border (same as the gap from the white scrim's left edge
    % to this box's left edge), so width = 19.25in - 8.24in = 11.01in.
    % Named so the subtitle below can anchor off its actual rendered height.
    \node[name=bsctitletext,anchor=north west,inner sep=0pt,align=left,
          text width=0.5505\paperwidth,
          xshift=0.4120\paperwidth,yshift=-0.3342\paperheight]
      at (current page.north west)
      {\usebeamerfont{bsctitleboxtitle}\hyphenchar\font=-1
       \color{bscblue}\MakeUppercase{\inserttitle}};

    % Presentation subtitle -- same x and right edge as the title box above;
    % positioned a fixed gap below the title's own bottom edge (rather than
    % a fixed y from the slide top) so it tracks however many lines the
    % title wraps to, instead of needing a hand-tuned y per presentation.
    \node[anchor=north west,inner sep=0pt,align=left,
          text width=0.5505\paperwidth]
      at ([yshift=-4mm]bsctitletext.south west)
      {\usebeamerfont{bsctitleboxsubtitle}\color{black}\insertsubtitle};

    % Name and surname -- x:7.49in y:10.12in w:12.51in h:0.73in, white bg
    % (the box's right edge lands exactly on the slide's right edge); text
    % vertically centered in the box (anchor=west centers on the box's
    % vertical midpoint: y=10.12in + 0.73in/2 = 10.485in)
    \fill[white]
      ([xshift=0.3745\paperwidth,yshift=-0.8996\paperheight]current page.north west)
      rectangle
      ([yshift=-0.9645\paperheight]current page.north east);
    \node[anchor=west,inner sep=2mm,align=left,
          text width=0.6255\paperwidth,
          xshift=0.3745\paperwidth,yshift=-0.93205\paperheight]
      at (current page.north west)
      {\usebeamerfont{author}\color{bscnavy}\insertauthor};

    % Date and venue -- left edge at the slide's left border, right edge at
    % the Name-and-surname box's left edge (x:7.49in), so width = 7.49in;
    % y:10.06in h:0.5in unchanged. Text horizontally and vertically centered
    % (anchor=center on the box's midpoint: x=7.49in/2=3.745in,
    % y=10.06in + 0.5in/2 = 10.31in).
    \node[anchor=center,inner sep=0pt,align=center,
          text width=0.3745\paperwidth,
          xshift=0.18725\paperwidth,yshift=-0.916444\paperheight]
      at (current page.north west)
      {\usebeamerfont{date}\color{white}\insertdate};
  \end{tikzpicture}
}

% Opens the title frame with the full-slide earth-photo background (native
% image aspect matches 16:9 exactly, so it always fills edge to edge with
% no distortion or clipping) and calls \maketitle -- a presentation just
% calls \bsctitleframe instead of wrapping \maketitle itself.
\newcommand{\bsctitleframe}{%
  {%
    \usebackgroundtemplate{%
      \begin{tikzpicture}[remember picture,overlay]
        \node[anchor=south west,inner sep=0pt] at (current page.south west)
          {\includegraphics[width=\paperwidth]{\@BSCtitlephoto}};
      \end{tikzpicture}%
    }
    \begin{frame}[plain,noframenumbering]
      \maketitle
    \end{frame}
  }%
}

% Section-header / closing slide: full-bleed background photo with a navy
% scrim (so any swapped-in photo still reads on-brand), the BSC logo as a
% badge top-left, and a bold uppercase title/subtitle in white -- reusable
% for both mid-deck section breaks and a closing "Thank you" slide.
\newcommand{\bscsectionpage}[2]{%
  {%
    \setbeamertemplate{background}{%
      \begin{tikzpicture}[remember picture,overlay]
        \node[anchor=center,inner sep=0pt] at (current page.center)
          {\includegraphics[width=\paperwidth,height=\paperheight]{\@BSCsectionphoto}};
        \fill[bscnavy,opacity=0.55] (current page.south west) rectangle (current page.north east);
      \end{tikzpicture}%
    }
    \begin{frame}[plain,noframenumbering]
      \vspace*{6mm}
      \noindent\hspace*{-\beamer@leftmargin}\includegraphics[height=9mm]{\@BSClogo}\par
      \vfill
      \noindent\hspace*{-\beamer@leftmargin}%
      \begin{minipage}{\dimexpr\paperwidth-2\beamer@leftmargin\relax}
        {\usebeamerfont{title}\color{bscwhite}\MakeUppercase{#1}\par}
        \vskip 2mm
        {\usebeamerfont{subtitle}\color{bscgrey}#2\par}
      \end{minipage}
      \vspace*{18mm}
    \end{frame}
  }%
}

% Footline: BSC logo bottom-left, frame number bottom-right -- matches the
% source deck's content-slide footer. Suppressed on [plain] frames (title,
% section, closing), same as the headline/frametitle.
\setbeamertemplate{footline}{
  \begin{beamercolorbox}[wd=\paperwidth,ht=8mm,dp=2mm]{footline}
    \begin{tikzpicture}[remember picture,overlay]
      \node[anchor=south west,xshift=4mm,yshift=1mm] at (current page.south west)
        {\includegraphics[height=5mm]{\@BSClogo}};
      \node[anchor=south east,xshift=-4mm,yshift=1.5mm] at (current page.south east)
        {\color{bscnavy}\insertframenumber\,/\,\inserttotalframenumber};
    \end{tikzpicture}
  \end{beamercolorbox}
}

\mode<all>
