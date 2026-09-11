% Template for meteorology presentations with LaTeX beamer.
%
% Sea/sunset visual identity: sea-palette blues for structure and text,
% sunset orange/yellow reserved for diagram and figure annotations.
%
% Structurally modeled on lut-template/lutbeamer.cls (frametitle, title
% page, footline templates), restyled with a new palette, fonts and logo.
%
% Compile with XeLaTeX (fonts are loaded via fontspec).

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{albatrossbeamer}[2026/09/11]

\PassOptionsToClass{aspectratio=169}{beamer} % Default, may be overridden
\ProcessOptions\relax
\LoadClass{beamer}

\RequirePackage{fontspec}
\RequirePackage{graphicx,albatrosscolor,tikz}
\RequirePackage{tcolorbox}
\tcbuselibrary{skins}

% Following commands will not be activated for article mode.
\mode<presentation>

% Fonts: Bebas Neue for titles, Lato for subtitles, Josefin Sans as the
% default body/caption font (bundled locally, no system install needed).
\newfontfamily\albbebasneue{BebasNeue-Regular}[Path=fonts/bebasneue/,Extension=.ttf]
\newfontfamily\alblato{Lato-Regular}[
  Path=fonts/lato/,Extension=.ttf,
  BoldFont=Lato-Bold,ItalicFont=Lato-Italic
]
\setmainfont{JosefinSans-Regular}[
  Path=fonts/josefinsans/,Extension=.ttf,
  BoldFont=JosefinSans-Bold,ItalicFont=JosefinSans-Italic
]

\newcommand{\@ALBlogo}{logo/albatros-logo}

% No navigation symbols
\setbeamertemplate{navigation symbols}{}

% phantom items
\setbeamercovered{transparent}

% Colors
\setbeamercolor{normal text}{fg=black,bg=white}
\setbeamercolor{background canvas}{bg=white}
\setbeamercolor{structure}{fg=brighttealblue}
\setbeamercolor{alerted text}{fg=deeptwilight}
\setbeamercolor{frametitle}{fg=deeptwilight,bg=white}
\setbeamercolor{framesubtitle}{fg=turquoisesurf,bg=white}
\setbeamercolor{title}{fg=deeptwilight,bg=white}
\setbeamercolor{subtitle}{fg=turquoisesurf,bg=white}
\setbeamercolor{author}{fg=black}
\setbeamercolor{date}{fg=black}
\setbeamercolor{institute}{fg=black}
\setbeamercolor{block title}{fg=white,bg=brighttealblue}
\setbeamercolor{block body}{fg=black,bg=lightcyan}
\setbeamercolor{footline}{fg=black!45}

% Bullet points: filled circles, colored down the sea palette by nesting level
\setbeamertemplate{itemize item}[circle]
\setbeamertemplate{itemize subitem}[circle]
\setbeamertemplate{itemize subsubitem}[circle]
\setbeamercolor{itemize item}{fg=deeptwilight}
\setbeamercolor{itemize subitem}{fg=brighttealblue}
\setbeamercolor{itemize subsubitem}{fg=turquoisesurf}

% Fonts per element
\setbeamerfont{title}{family=\albbebasneue,size=\LARGE}
\setbeamerfont{frametitle}{family=\albbebasneue,size=\Large}
\setbeamerfont{subtitle}{family=\alblato,size=\normalsize}
\setbeamerfont{framesubtitle}{family=\alblato,size=\normalsize}
\setbeamerfont{alerted text}{series=\bfseries}

% Rounded blocks, no shadow (native \block/\exampleblock/\alertblock stay
% available as a simple fallback; prefer seabox/surfbox below for content)
\setbeamertemplate{blocks}[rounded][shadow=false]

% Two transparent, bordered box styles (tcolorbox), replacing solid blocks
% as the recommended content-box options. Frame is drawn as a stroked
% "borderline" (not a filled backdrop) so it stays opaque while the fill
% stays genuinely transparent -- tcolorbox's own frame fill would otherwise
% sit *underneath* the translucent fill and tint it, defeating the opacity.
\newtcolorbox{seabox}[1]{
  enhanced, frame hidden, boxrule=0pt, rounded corners,
  borderline={0.8pt}{0pt}{brighttealblue},
  colback=lightcyan, opacityback=0.15,
  colbacktitle=brighttealblue, opacitybacktitle=0.15,
  coltitle=brighttealblue, fonttitle=\bfseries,
  title=#1
}
\newtcolorbox{surfbox}{
  enhanced, frame hidden, boxrule=0pt, rounded corners,
  borderline={0.8pt}{0pt}{turquoisesurf},
  colback=turquoisesurf, opacityback=0.15
}

% Frame title + subtitle, logo top-right
\setbeamertemplate{frametitle}
{
  \hbox{%
    \begin{beamercolorbox}[wd=.82\paperwidth,ht=15mm,dp=2mm,left]{frametitle}
      \usebeamerfont{frametitle}\insertframetitle\\[-0.3ex]
      {\usebeamerfont{framesubtitle}\usebeamercolor[fg]{framesubtitle}\insertframesubtitle}
    \end{beamercolorbox}%
    \begin{beamercolorbox}[wd=.18\paperwidth,ht=15mm,dp=2mm,left]{frametitle}
      \vspace*{-1.5mm}\hfill\includegraphics[height=2.8ex]{\@ALBlogo}\hspace*{3em}
    \end{beamercolorbox}%
  }%
  \vskip0pt%
}

% Title page: title, subtitle, author/date, logo top-right
\titlegraphic{\includegraphics[height=4ex]{\@ALBlogo}}

\setbeamertemplate{title page}
{
  \hbox{%
    \begin{beamercolorbox}[wd=0.8\paperwidth,sep=8pt,left]{institute}
      \usebeamerfont{institute}\insertinstitute
    \end{beamercolorbox}
    \begin{beamercolorbox}[wd=0.14\paperwidth,sep=8pt,left]{institute}
      \usebeamercolor[fg]{titlegraphic}\vspace*{-2mm}\hfill\inserttitlegraphic\hspace*{1.5em}
    \end{beamercolorbox}
  }%
  \vskip 2em
  \begin{centering}
    \begin{beamercolorbox}[sep=8pt,left]{title}
      \usebeamerfont{title}\inserttitle\par
    \end{beamercolorbox}%
    \begin{beamercolorbox}[sep=8pt,left]{subtitle}
      \ifx\insertsubtitle\@empty\else
        {\usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle\par}%
      \fi
    \end{beamercolorbox}
    \vskip 1em\par
    \begin{beamercolorbox}[sep=8pt,left]{author}
      \usebeamerfont{author}\insertauthor
    \end{beamercolorbox}
    \begin{beamercolorbox}[sep=8pt,left]{date}
      \usebeamerfont{date}\insertdate
    \end{beamercolorbox}
  \end{centering}
}

% Minimal footline: frame number only
\setbeamertemplate{footline}{
  \begin{beamercolorbox}[wd=\paperwidth,ht=2.5ex,dp=1ex,right,rightskip=5mm]{footline}
    \usebeamerfont{footline}\usebeamercolor[fg]{footline}\insertframenumber\,/\,\inserttotalframenumber
  \end{beamercolorbox}
}

\mode<all>
