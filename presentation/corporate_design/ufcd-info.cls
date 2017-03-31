%%
%% This is file `ufcd-info.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ufcd.dtx  (with options: `info')
%% 
%% This is a generated file.
%% 
%% Lizenz
%% ======
%% 
%% Alle Rechte liegen bei der
%%   Universit"at Freiburg
%%   Stabsstelle Marketing und Wissensmanagement
%%   Fahnenbergplatz, D-79085 Freiburg
%%   Homepage: http://www.mw.uni-freiburg.de
%% Ansprechpartner ist deren Leiter
%%   Dr. Reiner Fuest
%%   Tel. 0761/203-5012
%%   E-Mail: reiner.fuest at mw.uni-freiburg.de
%% 
%% Die Dateien dieses Projektes stehen allen Mitgliedern der
%% Universit"at Freiburg zur Benutzung zur Verf"ugung.
%% 
%% Verteilt werden d"urfen diese Dateien nur an Mitglieder der
%% Universit"at Freiburg in TDS-Archiv-Form. Insbesondere hat
%% dies vollst"andig und unver"andert zu geschehen. Es d"urfen
%% aber weitere Dateien hinzugef"ugt werden (Logos,
%% Konfigurationsdateien, ...). Im TDS-Archiv liegen die Dateien
%% in Verzeichnissen vor, die dem TDS-Standard entsprechen
%% 
%%   TDS = TeX Directory Structure, siehe
%%   ftp://ftp.ctan.org/tex-archive/tds/tds.pdf
%% 
%% Ver"anderungen bed"urfen der Namens"anderung der Pakete oder
%% Klassen. Es gelten insbesondere die Bedingungen zur Verteilung
%% und Ver"anderung der LPPL 1.3 "`Conditions on Distribution
%% and Modification"', Punkte 1, 2 und 6. Aktueller Betreuer
%% schlie"sst den Rechteinhaber ein.
%% 
%%   LPPL = LaTeX Project Public License
%%   http://www.latex-project.org/lppl.txt
%% 
%% Es besteht keinerlei Gew"ahrleistung, soweit dies gesetzlich
%% zul"assig ist. Es gilt der Abschnitt "`No Warranty" aus
%% der LPPL.
%% 
%% Betreut wird das Projekt im Wintersemester 2009/10 vom Autor,
%%   Heiko Oberdiek
%%   E-Mail: heiko.oberdiek at googlemail.com
%% Danach liegt die Betreuung beim Rechteinhaber "Stabsstelle
%% Marketing und Wissensmanagement".
%% 
%% Das Projekt UFCD besteht aus folgenden Dateien:
%%   ufcd.sty, ufcd.pdf, ufcd.ins, ufcd.drv, ufcd.bib, ufcd-info.cls,
%%    ufcd-letter.cls, ufcd-memo.cls, ufcd-babel.sty,
%%    ufcd-base.sty, ufcd-color.sty, ufcd-foldmarks.sty,
%%    ufcd-font.sty, ufcd-kvopt.sty, ufcd-lang-load.sty,
%%    ufcd-lang-opt.sty, ufcd-lang-setup.sty, ufcd-logo.sty,
%%    ufcd-inputenx.sty, ufcd-inputenx-setup.sty, ufcd-adr.sty,
%%    ufcd-config.sty, ufcd-config-mw.cfg, ufcd-config-fuest.cfg,
%%    ufcd-config-iif.cfg, ufcd-config-imtek.cfg,
%%    ufcd-config-tf.cfg, ufcd-config-tf-dekanat.cfg,
%%    ufcd-config-tf-dekpamt.cfg,
%%    ufcd-config-tf-praktikumsamt.cfg,
%%    ufcd-config-tf-bibliothek.cfg, ufcd-config-template-e1.cfg,
%%    ufcd-config-template-e2.cfg, beamerthemeufcd.sty,
%%    beamercolorthemeufcd.sty, beamerfontthemeufcd.sty,
%%    beamerinnerthemeufcd.sty, beamerouterthemeufcd.sty,
%%    ufcd-example-letter1.tex, ufcd-example-letter2.tex,
%%    ufcd-example-letter3.tex, ufcd-example-letter4.tex,
%%    ufcd-example-memo.tex, ufcd-example-info.tex,
%%    ufcd-example-beamer.tex,
%%    ufcd-signature-mustermann.tex
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufcd-info}%
  [2012/04/17 v1.0 Uni Freiburg Coporate Design (HO)]%
\RequirePackage{ufcd-kvopt}[2012/03/16]
\RequirePackage{ufcd-inputenx}[2012/03/16]
\RequirePackage{ufcd-lang-opt}[2012/03/16]
\UFCD@SetupKeyvalOptions
\DeclareDefaultOption{%
  \expandafter\PassOptionsToClass\expandafter{%
    \CurrentOption
  }{scrartcl}%
}
\ProcessKeyvalOptions*
\InputIfFileExists{ufcd.cfg}{}{}%
\makeatletter
\InputIfFileExists{ufcd-info.cfg}{}{}%
\makeatletter
\LoadClass[12pt,parskip]{scrartcl}[2009/06/08]
\RequirePackage{ufcd-base}[2012/03/16]
\RequirePackage{ufcd-color}[2012/03/16]
\RequirePackage{ufcd-font}[2012/03/16]
\RequirePackage{ufcd-logo}[2012/03/16]
\RequirePackage{ufcd-lang-load}[2012/03/16]
\RequirePackage{atbegshi}[2007/06/06]
\UFCD@newsetlength{\UFCD@leftmargin}{25mm}
\UFCD@newsetlength{\UFCD@rightmargin}{65mm}
\UFCD@newsetlength{\UFCD@topmargin}{75mm}
\UFCD@newsetlength{\UFCD@bottommargin}{25mm}
\UFCD@newsetlength{\UFCD@logoright}{50mm}
\UFCD@newsetlength{\UFCD@unitop}{40mm}
\UFCD@newsetlength{\UFCD@logotop}{45mm}
\RequirePackage[%
  a4paper,%
  left=\UFCD@leftmargin,%
  right=\UFCD@rightmargin,%
  top=\UFCD@topmargin,%
  bottom=\UFCD@bottommargin,%
]{geometry}
\pagestyle{empty}
\AtBeginShipout{%
  \AtBeginShipoutUpperLeft{%
    \textcolor{Uni-Schwarz}{%
      \UFCD@put(\UFCD@leftmargin,\UFCD@unitop){%
        \makebox(0,0)[lt]{%
          \universityfont{%
            \universityname
          }%
        }%
      }%
      \UFCD@put(%
        -\UFCD@logoright+\ufcdLetterOneSumI,%
        \UFCD@logotop
      ){%
        \makebox(0,0)[rb]{%
          \raisebox{-\ufcdLetterOneWidthUNI}[0pt][0pt]{%
            \includegraphics[%
              scale={\UFCD@LetterOneImageScale}%
            ]{%
              ufcd-logo-e1-a4-%
              \ifnum\UFCD@ColorMode=\UFCD@COLOR
                color%
              \else
                gray%
              \fi
            }%
          }%
        }%
      }%
    }%
    \ifnum\UFCD@ColorMode=\UFCD@BLACK
      \color{Uni-Schwarz}%
    \else
      \color{Uni-Grau}%
    \fi
    \UFCD@put(\UFCD@leftmargin,\UFCD@logotop){%
      \makebox(0,0)[lt]{%
        \rule{%
          \paperwidth
          -\UFCD@leftmargin
          -\UFCD@logoright
          -3\ufcdLetterOneSumI
        }{\ufcdLetterOneWidthI}%
      }%
    }%
    \UFCD@put(-\ufcdLetterOneSumI,\UFCD@logotop){%
      \makebox(0,0)[rt]{%
        \rule{%
          \UFCD@logoright
          -2\ufcdLetterOneSumI
          -\ufcdLetterOneWidthI
        }{\ufcdLetterOneWidthI}%
      }%
    }%
  }%
}
\UFCD@AddtoSize\normalsize{12bp}{15bp}
\UFCD@AddtoSize\small{11bp}{13.75bp}%
\UFCD@AddtoSize\footnotesize{10bp}{12.5bp}%
\UFCD@RedefSize\scriptsize{8bp}{10bp}
\UFCD@RedefSize\tiny{6bp}{7.5bp}
\UFCD@RedefSize\large{15bp}{18.75bp}
\UFCD@RedefSize\Large{18bp}{22.5bp}
\UFCD@RedefSize\LARGE{22bp}{27.5bp}
\UFCD@RedefSize\huge{27bp}{33.75bp}
\UFCD@RedefSize\Huge{32bp}{40bp}
\addtokomafont{section}{%
  \rmfamily
  \mdseries
  \fontsize{22bp}{26bp}\selectfont
}
\addtokomafont{subsection}{%
  \normalsize
}
\newcommand*{\universityfont}{%
  \rmfamily
  \mdseries
  \upshape
  \fontsize{8bp}{12bp}\selectfont
}
\begingroup\expandafter\expandafter\expandafter\endgroup
\expandafter\ifx\csname @afterheading\endcsname\relax
\else
  \let\UFCD@OrgAfterHeading\@afterheading
  \def\@afterheading{%
    \ifvmode
      \nobreak
      \vskip-\parskip
    \fi
    \UFCD@OrgAfterHeading
  }%
\fi
\setcounter{secnumdepth}{-1}
\renewcommand\section{%
  \@startsection{section}{1}{\z@}%
  {-5.5ex \@plus -2ex \@minus -.4ex}%
  {6ex \@plus.4ex}%
  {%
    \ifnum \scr@compatibility>\@nameuse{scr@v@2.96}\relax
      \setlength{\parfillskip}{\z@ plus 1fil}%
    \fi
    \raggedsection
    \normalfont
    \sectfont
    \nobreak
    \size@section
  }%
}
\renewcommand\subsection{%
  \@startsection{subsection}{2}{\z@}%
  {-5.25ex\@plus -2ex \@minus -.4ex}%
  {3ex \@plus .4ex}%
  {%
    \ifnum \scr@compatibility>\@nameuse{scr@v@2.96}\relax
      \setlength{\parfillskip}{\z@ plus 1fil}%
    \fi
    \raggedsection
    \normalfont
    \sectfont
    \nobreak
    \size@subsection
  }%
}
\endinput
%%
%% End of file `ufcd-info.cls'.
