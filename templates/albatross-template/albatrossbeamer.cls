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
\setbeamercolor{framesubtitle}{fg=brighttealblue,bg=white}
\setbeamercolor{title}{fg=deeptwilight,bg=white}
\setbeamercolor{subtitle}{fg=brighttealblue,bg=white}
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

% Explicit point sizes (not LaTeX's relative \Large/\normalsize/etc.)
\newcommand{\albtitlesize}{\fontsize{28}{34}\selectfont}       % title slide: title
\newcommand{\albtitlesubsize}{\fontsize{18}{22}\selectfont}    % title slide: subtitle
\newcommand{\albtitlemetasize}{\fontsize{14}{17}\selectfont}   % title slide: institute/author/date
\newcommand{\albframetitlesize}{\fontsize{24}{29}\selectfont}  % other slides: title
\newcommand{\albframesubsize}{\fontsize{14}{17}\selectfont}    % other slides: subtitle
\newcommand{\albbodysize}{\fontsize{12}{15}\selectfont}        % body text

% \setbeamerfont{normal text}{size=...} is ignored by beamer itself (see
% beamerfontthemedefault.sty), so body text size is set by redefining
% \normalsize directly -- that's what paragraphs/itemize/block content use.
\renewcommand{\normalsize}{\albbodysize}
\normalsize

% Fonts per element
\setbeamerfont{title}{family=\albbebasneue,size=\albtitlesize}
\setbeamerfont{frametitle}{family=\albbebasneue,size=\albframetitlesize}
\setbeamerfont{subtitle}{family=\alblato,series=\bfseries,size=\albtitlesubsize}
\setbeamerfont{framesubtitle}{family=\alblato,series=\bfseries,size=\albframesubsize}
\setbeamerfont{author}{size=\albtitlemetasize}
\setbeamerfont{date}{size=\albtitlemetasize}
\setbeamerfont{institute}{size=\albtitlemetasize}
\setbeamerfont{alerted text}{series=\bfseries}

% Left margin for body content (itemize/text/columns)
\setbeamersize{text margin left=6mm}

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
  left=1mm, right=1mm,
  colback=lightcyan, opacityback=0.25,
  colbacktitle=brighttealblue, opacitybacktitle=0.25,
  coltitle=brighttealblue, fonttitle=\bfseries,
  title=#1
}
\newtcolorbox{surfbox}{
  enhanced, frame hidden, boxrule=0pt, rounded corners,
  borderline={0.8pt}{0pt}{turquoisesurf},
  left=1mm, right=1mm,
  colback=turquoisesurf, opacityback=0.15
}

% Frame title + subtitle, logo top-right. Sized naturally to content (no
% fixed ht/dp) since the larger title/subtitle fonts can wrap onto more
% than one line depending on the text -- a fixed height either clips tall
% content or leaves awkward empty space for short content.
\newcommand{\albleftmargin}{4mm}    % left indent for frame title
\newcommand{\albsubleftmargin}{4mm} % left indent for frame subtitle
\newcommand{\alblogomargin}{2mm}    % right indent for the frame-title logo

\setbeamertemplate{frametitle}
{
  \begin{beamercolorbox}[wd=\paperwidth,left]{frametitle}
    \hspace*{\albleftmargin}%
    \begin{minipage}[t]{\dimexpr.82\paperwidth-\albleftmargin\relax}
      \usebeamerfont{frametitle}\insertframetitle\\[-2.5mm]
      \hspace*{\dimexpr\albsubleftmargin-\albleftmargin\relax}%
      {\usebeamerfont{framesubtitle}\usebeamercolor[fg]{framesubtitle}\insertframesubtitle}
    \end{minipage}%
    \begin{minipage}[t]{.18\paperwidth}
      \vspace*{-9mm}\hfill\includegraphics[height=6.5mm]{\@ALBlogo}\hspace*{\alblogomargin}
    \end{minipage}
  \end{beamercolorbox}
  \vskip 2mm
}

% Title page: logo top-right (matching content slides), then title,
% subtitle, author, date inside a left-flush, semi-transparent Bright
% Teal Blue box that doesn't reach the right edge. No institute line.
\newcommand{\albtitleboxgap}{39mm} % gap between the box's right edge and the slide's right edge

\setbeamertemplate{title page}
{
  \noindent\hspace*{-\beamer@leftmargin}% escape the frame's default left text margin, reach x=0
  \begin{minipage}[t]{\paperwidth}
    \hfill\raisebox{38.4mm}{\includegraphics[height=6.5mm]{\@ALBlogo}}\hspace*{\alblogomargin}
  \end{minipage}
  \vskip 0mm
  \noindent\hspace*{-\beamer@leftmargin}%
  \begin{minipage}[t]{\paperwidth}
  % tcolorbox starts its own paragraph internally and ignores a preceding
  % \hspace*, so the left-margin escape has to happen on this wrapping
  % minipage instead (minipage does respect it) for the box to truly
  % reach the slide's left edge.
  \begin{tcolorbox}[enhanced, frame hidden, boxrule=0pt, sharp corners,
    colback=lightcyan, opacityback=0.7,
    width=\dimexpr\paperwidth-\albtitleboxgap\relax,
    left=4mm, right=6mm, top=4mm, bottom=4mm]
    {\usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle\par}
    \ifx\insertsubtitle\@empty\else
      {\usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle\par}%
    \fi
    \vskip 1em
    {\usebeamerfont{author}\usebeamercolor[fg]{author}\insertauthor\par}
    {\usebeamerfont{date}\usebeamercolor[fg]{date}\insertdate\par}
  \end{tcolorbox}
  \end{minipage}
}

% Minimal footline: frame number only
\setbeamertemplate{footline}{
  \begin{beamercolorbox}[wd=\paperwidth,ht=2.5ex,dp=1ex,right,rightskip=5mm]{footline}
    \usebeamerfont{footline}\usebeamercolor[fg]{footline}\insertframenumber\,/\,\inserttotalframenumber
  \end{beamercolorbox}
}

\mode<all>
