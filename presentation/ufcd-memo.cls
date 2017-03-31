%%
%% This is file `ufcd-memo.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ufcd.dtx  (with options: `letterbase,memo')
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
\ProvidesClass{ufcd-memo}%
  [2012/04/17 v1.0 Uni Freiburg Coporate Design (HO)]%
\edef\UFCD@ClassName{\@currname}
\RequirePackage{infwarerr}[2007/09/09]
\def\UFCD@Info{%
  \@ClassInfoNoLine\UFCD@ClassName
}
\RequirePackage{ufcd-base}[2012/03/16]
\RequirePackage{ufcd-kvopt}[2012/03/16]
\RequirePackage{ufcd-lang-opt}[2012/03/16]
\RequirePackage{ufcd-config}[2012/03/16]
\AtEndOfClass{\UFCD@ConfigProcess}
\UFCD@SetupKeyvalOptions
\RequirePackage{ufcd-foldmarks}[2012/03/16]
\RequirePackage{ufcd-inputenx}[2012/03/16]
\begingroup\expandafter\expandafter\expandafter\endgroup
\expandafter\ifx\csname glueexpr\endcsname\relax
\else
  \RequirePackage{zref-abspage}[2007/05/28]%
\fi
\DeclareBoolOption{preprint}
\DeclareStringOption[1]{identitylevel}
\DeclareVoidOption{e1}{%
  \ufcdSetup{identitylevel=1}%
}
\DeclareVoidOption{e2}{%
  \ufcdSetup{identitylevel=2}%
}
\def\ufcdSwitchIdentityLevel{%
  \ifnum\UFCD@identitylevel=1 %
    \expandafter\@firstoftwo
  \else
    \expandafter\@secondoftwo
  \fi
}
\newif\ifUFCD@fax
\DeclareBoolOption{lastpage}
\@ifpackageloaded{zref-abspage}{%
}{%
  \ClassWarningNoLine{\UFCD@ClassName}{%
    Option `lastpage' is not available, because\MessageBreak
    e-TeX and/or package `zref-abspage' are missing%
  }%
  \let\UFCD@lastpagetrue\relax
}%
\DeclareStringOption{totalpages}
\AddToKeyvalOption*{totalpages}{%
  \ifx\UFCD@totalpages\@empty
  \else
    \ifnum\UFCD@totalpages>\z@
    \else
      \let\UFCD@totalpages\@empty
    \fi
  \fi
}
\define@key{UFCD}{extrapages}{%
  \edef\UFCD@temp{#1}%
  \ifx\UFCD@temp\@empty
    \let\UFCD@totalpages\@empty
  \else
    \ifnum\UFCD@temp>\z@
      \edef\UFCD@totalpages{-\number\UFCD@temp}%
    \else
      \let\UFCD@totalpages\@empty
    \fi
  \fi
}
\ufcdConfigSetup*{BackAddressDefault}{%
  \setkomavar{backaddress}{%
    \ufcdSwitchIdentityLevel{%
      \universityname\\%
      79085 Freiburg%
    }{%
      \usekomavar{division}\\%
      \usekomavar{fromaddress}%
    }%
  }%
}
\DeclareVoidOption{backaddressdefault}{%
  \ufcdSetup{config=BackAddressDefault}%
}
\ufcdConfigSetup*{BackAddressStyle@period}{%
  \setkomavar{backaddressseparator}{\,.\,}%
}
\ufcdConfigSetup*{BackAddressStyle@periodcentered}{%
  \setkomavar{backaddressseparator}{\,\textperiodcentered\,}%
}
\ufcdConfigSetup*{BackAddressStyle@comma}{%
  \setkomavar{backaddressseparator}{, }%
}
\define@key{UFCD}{backaddressstyle}{%
  \@ifundefined{UFCD@Config@BackAddressStyle@#1}{%
    \ClassError\UFCD@ClassName{%
      Unknown value `#1' for\MessageBreak
      option `backaddressstyle'%
    }\@ehc
  }{%
    \ufcdSetup{config={BackAddressStyle@#1}}%
  }%
}
\ufcdSetup{%
  backaddressdefault,%
  backaddressstyle=period,%
}
\InputIfFileExists{ufcd.cfg}{%
  \UFCD@Info{Loading main configuration (ufcd.cfg)}%
}{%
  \UFCD@Info{No main configuration (ufcd.cfg)}%
}
\makeatletter
\InputIfFileExists{\UFCD@ClassName.cfg}{%
  \UFCD@Info{%
    Loading class configuration (\UFCD@ClassName.cfg)%
  }%
}{%
  \UFCD@Info{%
    No class configuration (\UFCD@ClassName.cfg)%
  }%
}
\makeatletter
\ProcessKeyvalOptions*
\UFCD@KomaPatchBefore
\LoadClass[%
  fontsize=10pt%
  ,parskip%
  ,foldmarks=false%
  ,fromalign=locationright%
  ,addrfield=false%
  ,backaddress=plain%
  ,numericaldate=true%
  ,fromphone%
  ,fromfax%
  ,fromemail%
  ,fromurl%
  ,addrfield=false%
  ,backaddress=false,%
  ,version=last%
]{scrlttr2}[2009/07/24]
\UFCD@KomaPatchAfter
\RequirePackage{ufcd-color}[2012/03/16]
\RequirePackage{ufcd-font}[2012/03/16]
\RequirePackage{ufcd-logo}[2012/03/16]
\RequirePackage{ufcd-lang-load}[2012/03/16]
\RequirePackage{atbegshi}[2007/06/06]
\RequirePackage{kvsetkeys}[2009/07/19]
\RequirePackage{ltxcmds}[2009/08/05]
\RequirePackage{url}[2006/04/12]
\KOMA@key{}{}
\let\UFCD@org@KOMAoptions\KOMAoptions
\def\KOMAoptions#1{%
  \begingroup
    \UFCD@toks@koma{}%
    \UFCD@toks@ufcd{}%
    \kv@parse{#1}{%
      \ltx@ifundefined{KV@UFCD@\kv@key}{%
        \let\t\UFCD@toks@koma
      }{%
        \let\t\UFCD@toks@ufcd
      }%
      \t\expandafter{%
        \the\expandafter\t\expandafter,%
        \kv@key
      }%
      \ifx\kv@value\relax
      \else
        \t\expandafter{%
          \the\expandafter\t
          \expandafter=\expandafter{\kv@value}%
        }%
      \fi
      \ltx@gobbletwo
    }%
    \edef\x{\endgroup
      \noexpand\UFCD@org@KOMAoptions{\the\UFCD@toks@koma}%
      \noexpand\ufcdSetup{\the\UFCD@toks@ufcd}%
    }%
  \x
}
\toksdef\UFCD@toks@koma=\z@
\toksdef\UFCD@toks@ufcd=\tw@
\ufcdSetup{foldmarks=false,punchmark}
\renewcommand*{\@foldmarks}{%
  \ClassInfoNoLine\UFCD@ClassName{%
    Using foldmarks of package `ufcd-foldmarks'%
  }%
}
\let\UFCD@AtBeginEveryOpeningHook\@empty
\def\UFCD@AtBeginEveryOpening{%
  \g@addto@macro\UFCD@AtBeginEveryOpeningHook
}
\let\UFCD@org@opening\opening
\newif\ifUFCD@LetterFirstPage
\def\UFCD@LetterFirstPagetrue{%
  \global\let\ifUFCD@LetterFirstPage\iftrue
}
\def\UFCD@LetterFirstPagefalse{%
  \global\let\ifUFCD@LetterFirstPage\iffalse
}
\AtBeginLetter{%
  \UFCD@FoldmarksFirstPagetrue
  \UFCD@LetterFirstPagetrue
}
\UFCD@AddtoSize\normalsize{10bp}{14bp}
\UFCD@AddtoSize\small{9bp}{12.6bp}%
\UFCD@AddtoSize\footnotesize{8bp}{11.2bp}%
\UFCD@RedefSize\scriptsize{7bp}{9.8bp}
\UFCD@RedefSize\tiny{5bp}{7bp}
\UFCD@RedefSize\large{12bp}{16.8bp}
\UFCD@RedefSize\Large{14bp}{19.6bp}
\UFCD@RedefSize\LARGE{16bp}{22.4bp}
\UFCD@RedefSize\huge{20bp}{28bp}
\UFCD@RedefSize\Huge{25bp}{35bp}
\renewcommand*{\descfont}{%
  \rmfamily
  \bfseries
}
\newkomafont{DepartmentBlock}{%
  \rmfamily\mdseries\upshape
  \fontsize{9bp}{11bp}\selectfont
}
\newkomafont{AddressBlock}{%
  \sffamily\mdseries\upshape
  \fontsize{7.5bp}{10bp}\selectfont
}
\newkomafont{ReflineBlock}{%
  \usekomafont{AddressBlock}%
}
\newkomafont{DateBlock}{%
  \usekomafont{ReflineBlock}%
}
\newkomafont{FaxTitle}{%
  \sffamily\bfseries\upshape
  \huge
}
\newkomafont{FaxPages}{%
  \usekomafont{addressee}%
}
\newkomafont{ToFax}{%
  \usekomafont{addressee}%
  \bfseries
}
\setkomafont{backaddress}{%
  \rmfamily\mdseries\upshape
  \fontsize{8bp}{12bp}\selectfont
}
\newkomafont{endorsement}{%
  \usekomafont{backaddress}%
}
\setkomafont{addressee}{%
  \sffamily\mdseries\upshape
  \fontsize{10bp}{14bp}\selectfont
}
\setkomafont{subject}{%
  \rmfamily\mdseries\upshape
  \fontsize{13bp}{14bp}\selectfont
}
\setkomafont{title}{%
  \usekomafont{subject}%
  \bfseries
}
\setkomafont{foldmark}{%
  \ifnum\UFCD@ColorMode=\UFCD@BLACK
    \color{Uni-Schwarz}%
  \else
    \color{Uni-Grau}%
  \fi
}
\newcommand*{\ufcdSetPseudoLengths}[1]{%
  \kv@parse{#1}{%
    \ifx\kv@value\relax
      \ClassError{UFCD@ClassName}{%
        Missing value for pseudo length `\kv@key'%
      }\@ehc
    \else
      \begingroup\expandafter\expandafter\expandafter\endgroup
      \expandafter\ifx\csname ltr@len@\kv@key\endcsname\relax
        \ClassError{UFCD@ClassName}{%
          Unknown pseudo length `\kv@key'%
        }\@ehc
      \else
        \@setplength{\kv@key}{\kv@value}%
      \fi
    \fi
    \@gobbletwo
  }%
}
\UFCD@newsetplength{leftmargin}{25mm}
\UFCD@newsetplength{rightmargin}{%
  \ufcdSwitchIdentityLevel{%
    9\ufcdLetterOneSumI
  }{%
    12\ufcdLetterTwoSumI
  }%
}
\UFCD@newsetplength{bottommargin}{%
  \ufcdSwitchIdentityLevel{%
    2\ufcdLetterTwoWidthUNI-\ufcdLetterTwoWidthI
  }{%
    2\ufcdLetterTwoWidthUNI-\ufcdLetterTwoWidthI
  }%
}
\UFCD@newsetplength{topbaseline}{50mm}
\UFCD@newsetplength{toplogo}{\ufcdLetterTwoWidthUNI}
\@setplength{firstheadvpos}{0mm}
\@setplength{toaddrhpos}{\useplength{leftmargin}}
\@setplength{toaddrvpos}{\useplength{topbaseline}}
\@setplength{toaddrwidth}{80mm}
\@setplength{toaddrheight}{40mm}
\@setplength{toaddrindent}{5mm}
\@setplength{backaddrheight}{5mm}
\UFCD@newsetplength{backaddrmaxdepth}{5bp}
\UFCD@newsetplength{backaddraftervskip}{5mm}
\def\UFCD@SetLocPositions{%
  \ufcdSwitchIdentityLevel{%
    \@setplength{lochpos}{\ufcdLetterOneSumI}%
    \@setplength{locwidth}{5\ufcdLetterOneSumI+\ufcdLetterOneHeightI}%
    \@setplength{locvpos}{80mm}%
  }{%
    \@setplength{lochpos}{2\ufcdLetterTwoSumI}%
    \@setplength{locwidth}{7\ufcdLetterTwoSumI}%
    \@addtoplength{locwidth}{\ufcdLetterTwoHeightI}%
    \@setplength{locvpos}{%
      80mm-\ufcdLetterOneWidthUNI+\ufcdLetterOneWidthI
    }%
  }%
}
\UFCD@SetLocPositions
\AddToKeyvalOption{UFCD}{identitylevel}{%
  \UFCD@SetLocPositions
}
\@setplength{locheight}{%
  \paperheight-\useplength{locvpos}-\useplength{bottommargin}%
}
\UFCD@newsetplength{infohangindent}{11.25bp}
\setlength{\topskip}{10bp}
\UFCD@newsetlength{\UFCD@topmargin}{%
  \useplength{topbaseline}-\topskip
}
\@setplength{refvpos}{80mm}
\@setplength{subjectaftervskip}{2\baselineskip}
\@setplength{sigindent}{0pt}
\renewcommand*{\raggedsignature}{\raggedright}
\UFCD@newsetplength{closingbeforevskip}{2\baselineskip minus \baselineskip}
\@setplength{sigbeforevskip}{3\baselineskip minus \baselineskip}
\UFCD@newsetplength{closingaftervskip}{0pt}
\UFCD@newsetplength{sigimagebeforevskip}{.5\baselineskip}
\UFCD@newsetplength{sigimageaftervskip}{.5\baselineskip}
\UFCD@newsetplength{sigimageindent}{0pt}
\RequirePackage[%
  left=\useplength{leftmargin},%
  right=\useplength{rightmargin},%
  bottom=\useplength{bottommargin},%
  top=\UFCD@topmargin,%
  nofoot,%
]{geometry}
\@setplength{firstfootvpos}{%
  \paperheight
  \ufcdSwitchIdentityLevel{%
    -\ufcdLetterOneWidthUNI
  }{%
    -\ufcdLetterTwoWidthUNI
  }%
}
\newcommand*{\ufcdShowPLength}[1]{%
  \ifUFCD@debug
    \begingroup
      \setlengthtoplength{\dimen2}{#1}%
      \setlength{\dimen@}{.3514598\dimen2}%
      \UFCD@Info{#1 = \the\dimen2 \space = \strip@pt\dimen@ mm}%
    \endgroup
  \fi
}
\newcommand*{\ufcdShowLength}[1]{%
  \ifUFCD@debug
    \begingroup
      \setlength{\dimen2}{#1}%
      \setlength{\dimen@}{.3514598#1}%
      \escapechar=92 %
      \UFCD@Info{\string#1 = \the\dimen2 \space = \strip@pt\dimen@ mm}%
    \endgroup
  \fi
}
\newcommand*{\ufcdShowAllLengths}{%
  \ifUFCD@debug
    \@for\UFCD@temp:=%
      backaddraftervskip,%
      backaddrheight,%
      backaddrmaxdepth,%
      bottommargin,%
      firstfootvpos,%
      firstheadvpos,%
      infohangindent,%
      leftmargin,%
      locheight,%
      lochpos,%
      locvpos,%
      locwidth,%
      refvpos,%
      rightmargin,%
      subjectaftervskip,%
      toaddrheight,%
      toaddrhpos,%
      toaddrindent,%
      toaddrvpos,%
      toaddrwidth,%
      topbaseline,%
      toplogo%
    \do{%
      \ufcdShowPLength\UFCD@temp
    }%
    \@for\UFCD@temp:=%
      \topskip,%
      \ufcdHeightI,%
      \ufcdLetterOneHeightI,%
      \ufcdLetterOneSumI,%
      \ufcdLetterOneWidthI,%
      \ufcdLetterOneWidthUNI,%
      \ufcdLetterTwoHeightI,%
      \ufcdLetterTwoSumI,%
      \ufcdLetterTwoWidthI,%
      \ufcdLetterTwoWidthUNI,%
      \ufcdSumI,%
      \ufcdWidthI,%
      \ufcdWidthUNI%
    \do{%
      \expandafter\ufcdShowLength\UFCD@temp
    }%
    \UFCD@Info{%
      \string\UFCD@LetterOneScale = \UFCD@LetterOneScale
    }%
    \UFCD@Info{%
      \string\UFCD@LetterOneImageScale = \UFCD@LetterOneImageScale
    }%
    \UFCD@Info{%
      \string\UFCD@LetterTwoScale = \UFCD@LetterTwoScale
    }%
    \UFCD@Info{%
      \string\UFCD@LetterTwoImageScale = \UFCD@LetterTwoImageScale
    }%
  \fi
}
\AtBeginDocument{%
  \ufcdShowAllLengths
}
\newcommand*{\ufcdSetVars}[1]{%
  \kv@parse{#1}\setkomavar
}
\newcommand*{\UFCD@SetVarsOptArg}[1][]{%
  \kv@parse{#1}\setkomavar
}
\RequirePackage{letltxmacro}[2008/06/09]
\LetLtxMacro\UFCD@org@letter\letter
\renewcommand{\letter}[2][]{%
  \UFCD@org@letter[{#1}]{#2}%
  \UFCD@SetVarsOptArg
}
\newkomavar{logo-color-name}
\newkomavar{logo-gray-name}
\newkomavar{logo-black-name}
\newkomavar{logo-options}
\newcommand*{\ufcdLogoSetup}[1]{%
  \ufcdSetVars{%
    logo-color-name=,%
    logo-gray-name=,%
    logo-black-name=,%
    logo-options=,%
    #1%
  }%
}
\newkomavar{endorsement}
\setkomavar{endorsement}{}
\newkomavar{faxtitle}
\setkomavar{faxtitle}{\faxtitlename}
\newkomavar[\faxpagesname]{faxpages}
\setkomavar{faxpages}{%
  \ifx\ufcdTotalPages\@empty
  \else
    1/\ufcdTotalPages
  \fi
}
\newkomavar{faxpagesseparator}
\setkomavar{faxpagesseparator}{:~}
\newkomavar[\faxname]{tofax}
\newkomavar{tofaxseparator}
\setkomavar{tofaxseparator}{:~}

\newkomavar{university}
\setkomavar{university}{\universityname}
\newkomavar{division}
\newkomavar{department}
\setkomavar{place}{Freiburg}
\newkomavar{fromfunction}
\setkomavar*{fromemail}{}
\setkomavar*{fromurl}{}
\setkomavar{phoneseparator}{~}%
\setkomavar{faxseparator}{~}%
\newkomavar{refseparator}
\setkomavar{refseparator}{: }%
\ufcdSetCaptionNameGermanEnglish
  [1]\faxtitlename{Telefax}{Telefax}%
\ufcdSetCaptionNameGermanEnglish
  [1]\faxpagesname{Seite}{Page}%
\ufcdSetCaptionNameGermanEnglish
  [1]\phonename{Tel.\@}{Phone}%
\def\UFCD@vboxzero{%
  \vb@t@z
}
\AtBeginShipout{%
  \AtBeginShipoutUpperLeft{%
    \UFCD@put(\useplength{leftmargin},\useplength{topbaseline}){%
      % same for E1 and E2
      \makebox(0,0)[rb]{%
        \ifnum\UFCD@ColorMode=\UFCD@BLACK
          \color{Uni-Schwarz}%
        \else
          \color{Uni-Grau}%
        \fi
        \rule{\ufcdLetterOneHeightI}{\ufcdLetterOneWidthI}%
        \kern\ufcdLetterOneWidthI
      }%
    }%
    \ifUFCD@LetterFirstPage
      \ifUFCD@fax
        \UFCD@preprintfalse
      \fi
      \ifUFCD@preprint
      \else
        \ufcdSwitchIdentityLevel{%
          \UFCD@put(-\ufcdLetterOneSumI,\useplength{topbaseline}){%
            \makebox(0,0)[rb]{%
              \raisebox{%
                \ufcdLetterOneWidthI-\ufcdLetterOneWidthUNI
              }[0pt][0pt]{%
                \includegraphics[%
                  scale={\UFCD@LetterOneImageScale}%
                ]{%
                  ufcd-logo-e1-%
                  \ifcase\UFCD@ColorMode
                    emblemless-black%
                  \or
                    a4-gray%
                  \or
                    a4-color%
                  \fi
                }%
              }%
              \kern\ufcdLetterOneWidthI
              \ifnum\UFCD@ColorMode=\UFCD@BLACK
                \color{Uni-Schwarz}%
              \else
                \color{Uni-Grau}%
              \fi
              \rule{%
                4\ufcdLetterOneSumI + \ufcdLetterOneHeightI
              }{\ufcdLetterOneWidthI}%
            }%
          }%
        }{%
          \UFCD@put(-\ufcdLetterTwoSumI,-\ufcdLetterTwoWidthUNI){%
            \makebox(0,0)[rb]{%
              \raisebox{%
                \ufcdLetterTwoWidthUNI-\ufcdLetterTwoWidthI
              }[0pt][0pt]{%
                \ifnum\UFCD@ColorMode=\UFCD@BLACK
                  \color{Uni-Schwarz}%
                \else
                  \color{Uni-Grau}%
                \fi
                \rule{%
                  5\ufcdLetterTwoSumI + \ufcdLetterTwoHeightI
                }{\ufcdLetterTwoWidthI}%
              }%
            }%
          }%
          \UFCD@put(-7\ufcdLetterTwoSumI,-\ufcdLetterTwoWidthUNI){%
            \makebox(0,0)[rb]{%
              \includegraphics[%
                scale={\UFCD@LetterTwoImageScale}%
              ]{%
                ufcd-logo-e2-a4-%
                \ifcase\UFCD@ColorMode black\or gray\or color\fi
              }%
            }%
          }%
          \UFCD@put(-10\ufcdLetterTwoSumI,\useplength{topbaseline}){%
            \makebox(0,0)[lb]{%
              \UFCD@SetLogo
            }%
          }%
        }%
      \fi
      \UFCD@LetterFirstPagefalse
    \else
      \ufcdSwitchIdentityLevel{%
        \UFCD@put(-\ufcdLetterOneSumI,-\ufcdLetterOneWidthUNI){%
          \makebox(0,0)[rb]{%
            \includegraphics[%
              scale={\UFCD@LetterOneImageScale},%
            ]{%
              ufcd-logo-e1-emblemless-%
              \ifnum\UFCD@ColorMode=\UFCD@BLACK black\else gray\fi
            }%
          }%
        }%
      }{%
        \UFCD@put(-\ufcdLetterTwoSumI,-\ufcdLetterTwoWidthUNI){%
          \makebox(0,0)[rb]{%
            \includegraphics[%
              scale={\UFCD@LetterTwoImageScale},%
            ]{%
              ufcd-logo-e2-a4-%
              \ifnum\UFCD@ColorMode=\UFCD@BLACK black\else gray\fi
            }%
          }%
        }%
      }%
    \fi
  }%
}
\newlength{\ufcdLogoWidth}
\newlength{\ufcdLogoHeight}
\def\UFCD@SetLogo{%
  \setlength{\ufcdLogoWidth}{8\ufcdLetterTwoSumI}%
  \addtolength{\ufcdLogoWidth}{\ufcdLetterTwoWidthI}%
  \setlengthtoplength{\ufcdLogoHeight}{topbaseline}%
  \addtolengthplength[-]{\ufcdLogoHeight}{toplogo}%
  \vfuzz2pt\relax
  \vbox to\ufcdLogoHeight{%
    \vfill
    \hfuzz2pt\relax
    \hbox to\ufcdLogoWidth{%
      \ufcdSetLogo
      \hfill
    }%
    \kern\z@
  }%
}
\def\UFCD@DefLogoName#1#2#3{%
  \ifkomavarempty{logo-#1-name}{%
    \ifkomavarempty{logo-#2-name}{%
      \ifkomavarempty{logo-#3-name}{%
        \def\ufcdLogoName{}%
      }{%
        \usekomavar[\def\ufcdLogoName]{logo-#3-name}%
      }%
    }{%
      \usekomavar[\def\ufcdLogoName]{logo-#2-name}%
    }%
  }{%
    \usekomavar[\def\ufcdLogoName]{logo-#1-name}%
  }%
}
\providecommand*{\ufcdGetLogoName}{%
  \ifcase\UFCD@ColorMode
    \UFCD@DefLogoName{black}{gray}{color}%
  \or
    \UFCD@DefLogoName{gray}{color}{black}%
  \else
    \UFCD@DefLogoName{color}{gray}{black}%
  \fi
}
\providecommand*{\ufcdSetLogo}{%
  \ufcdGetLogoName
  \ifx\ufcdLogoName\@empty
    \ClassWarningNoLine{\UFCD@ClassName}{%
      The logo is missing%
    }%
  \else
    \ifkomavarempty{logo-options}{%
      \def\UFCD@options{}%
    }{%
      \usekomavar[\edef\UFCD@options]{logo-options}%
    }%
    \mbox{%
      \expandafter\includegraphics\expandafter[%
        \UFCD@options,%
        width=\ufcdLogoWidth,%
        height=\ufcdLogoHeight,%
        keepaspectratio,%
      ]{\ufcdLogoName}%
    }%
    \usebox0 %
  \fi
}
\newcounter{UFCD@letter}%
\renewcommand*{\theUFCD@letter}{letter\the\value{UFCD@letter}}%
\AtBeginLetter{%
  \stepcounter{UFCD@letter}%
}
\g@addto@macro\endletter{%
  \ifUFCD@lastpage
    \zref@wrapper@immediate{%
      \zref@labelbyprops{\theUFCD@letter last}{abspage}%
    }%
  \fi
  \aftergroup\UFCD@ResetPages
}
\def\UFCD@ResetPages{%
  \let\UFCD@totalpages\@empty
}
\UFCD@AtBeginEveryOpening{%
  \UFCD@LocalDisableOption{lastpage}%
  \UFCD@LocalDisableOption{totalpages}%
  \UFCD@LocalDisableOption{extrapages}%
  \ifUFCD@lastpage
    \zref@labelbyprops{\theUFCD@letter first}{abspage}%
  \fi
  \ifx\UFCD@totalpages\@empty
    \def\ufcdTotalPages{0}%
  \else
    \let\ufcdTotalPages\UFCD@totalpages
  \fi
  \ifnum\ufcdTotalPages>\z@
  \else
    \ifUFCD@lastpage
      \zref@refused{\theUFCD@letter first}%
      \zref@refused{\theUFCD@letter last}%
      \zref@ifrefundefined{\theUFCD@letter first}{%
        \let\ufcdTotalPages\@empty
      }{%
        \zref@ifrefundefined{\theUFCD@letter last}{%
          \let\ufcdTotalPages\@empty
        }{}%
      }%
      \ifx\ufcdTotalPages\@empty
      \else
        \begingroup
          \count@=%
            \zref@extract{\theUFCD@letter last}{abspage}\relax
          \advance\count@
            -\zref@extract{\theUFCD@letter first}{abspage}\relax
          \advance\count@\@ne
          \ifnum\ufcdTotalPages<\z@
            \advance\count@ -\ufcdTotalPages
          \fi
          \edef\x{\endgroup
            \noexpand\def\noexpand\ufcdTotalPages{\number\count@}%
          }%
        \x
      \fi
    \else
      \let\ufcdTotalPages\@empty
    \fi
  \fi
}%
\newkomavar{lastpageseparator}
\setkomavar{lastpageseparator}{/}
\renewcommand*{\pagemark}{%
  \begingroup
    \usekomafont{pagenumber}{%
      \thepage
      \ifUFCD@lastpage
        \ifx\ufcdTotalPages\@empty
        \else
          \usekomavar{lastpageseparator}%
          \ufcdTotalPages
        \fi
      \fi
    }%
  \endgroup
}%
\newcommand*{\ps@ufcd}{%
  \ps@empty
  \renewcommand*{\@oddhead}{%
    \vbox to\z@{%
      \kern-1in\relax
      \kern-\topmargin
      \kern-\headheight
      \hbox to\textwidth{%
        \kern-1in\relax
        \kern-\@themargin
        \begin{picture}(0,0)%
          \ufcdSwitchIdentityLevel{%
            \UFCD@put(-\ufcdLetterOneSumI,\useplength{topbaseline}){%
              \llap{%
                \setlength{\dimen0}{%
                  6\ufcdLetterOneSumI+\ufcdLetterOneWidthI
                }%
                \hbox to\dimen0{%
                  \hfill
                  \pagemark
                }%
              }%
            }%
          }{%
            \UFCD@put(-\ufcdLetterTwoSumI,\useplength{topbaseline}){%
              \llap{%
                \setlength{\dimen0}{%
                  8\ufcdLetterTwoSumI+\ufcdLetterTwoWidthI
                }%
                \hbox to\dimen0{%
                  \hfill
                  \pagemark
                }%
              }%
            }%
          }%
        \end{picture}%
        \hss
      }%
      \vss
    }%
  }%
  \let\@evenhead\@oddhead
  \let\@evenfoot\@oddfoot
}
\pagestyle{ufcd}
\def\UFCD@RemoveFromDoList#1#2{%
  \def\UFCD@temp##1\do#2##2\@nil{%
    \toks@\expandafter{\the\toks@##1}%
    \ifx\\##2\\%
      \expandafter\@gobble
    \else
      \expandafter\@firstofone
    \fi
    {%
      \UFCD@temp##2\@nil
    }%
  }%
  \toks@{}%
  \expandafter\UFCD@temp#1\do#2\@nil
  \edef#1{\the\toks@}%
}
\UFCD@RemoveFromDoList\UrlBreaks\@
\UFCD@RemoveFromDoList\UrlBigBreaks\@
\UFCD@RemoveFromDoList\UrlBreaks\/
\UFCD@RemoveFromDoList\UrlBigBreaks\/
\g@addto@macro\UrlBigBreaks{%
  \do\@%
  \do\/%
}
\urlstyle{sf}
\renewcommand*{\@datefield}{%
  \move@topt
  \vskip\useplength{refvpos}%
  \nointerlineskip
}
\renewcommand*{\@locfield}{%
  \move@topt
  \vskip\useplength{locvpos}%
  \UFCD@vboxzero{%
    \hbox{%
      \move@topl
      \hskip\paperwidth
      \hskip-\useplength{lochpos}%
      \hskip-\useplength{locwidth}%
      \normalcolor
      \parbox[t][\useplength{locheight}]{\useplength{locwidth}}{%
        \ufcdInfoBlock
      }%
    }%
    \vss
  }%
  \vskip-\useplength{locvpos}%
  \move@frompt
}
\newcommand*{\ufcdInfoBlock}{%
  \ufcdUseBlock{Department}%
  \ufcdUseBlock{Address}%
  \ufcdUseBlock{Refline}%
  \ufcdUseBlock{Date}%
}
\newbox\UFCD@BlockBox
\newcommand*{\ufcdUseBlock}[1]{%
  \par
  \begingroup
    \raggedright
    \usekomafont{#1Block}{%
      \setlength{\parindent}{0pt}%
      \setlength{\parskip}{\baselineskip}%
      \@nameuse{ufcd#1Block}%
    }%
    \par
  \endgroup
}
\newcommand*{\ufcdDepartmentBlock}{%
  \ufcdSwitchIdentityLevel{%
    \ifkomavarempty{university}{}{%
      \usekomavar{university}%
      \par
    }%
    \ifkomavarempty{division}{}{%
      \usekomavar{division}%
      \par
    }%
    \ifkomavarempty{department}{}{%
      \usekomavar{department}%
      \par
    }%
  }{%
    \ifkomavarempty{division}{}{%
      \usekomavar{division}%
      \par
    }%
    \ifkomavarempty{department}{}{%
      \usekomavar{department}%
      \par
    }%
    \ifkomavarempty{university}{}{%
      \usekomavar{university}%
      \par
    }%
  }%
}
\newtoks\UFCD@toks
\newcommand*{\ufcdBeginLines}{%
  \UFCD@toks={}%
}
\newcommand*{\ufcdEndLines}{%
  \par
  \begin{tabular}{@{}p{\linewidth}@{}}%
    \the\UFCD@toks
  \end{tabular}%
  \par
}
\newcommand*{\ufcdAddLine}[1]{%
  \UFCD@toks=\expandafter{%
    \the\UFCD@toks
    \relax
    \hangafter1 %
    \setlengthtoplength{\hangindent}{infohangindent}%
    \raggedright
    #1\tabularnewline
  }%
}
\newcommand*{\ufcdAddressBlock}{%
  \usekomafont{fromaddress}{%
    \ufcdBeginLines
      \ifkomavarempty{fromname}{}{%
         \ufcdAddLine{%
           \usekomafont{fromname}{%
             \ignorespaces\usekomavar{fromname}%
           }%
         }%
      }%
      \ifkomavarempty{fromfunction}{}{%
        \ufcdAddLine{%
          \ignorespaces\usekomavar{fromfunction}%
        }%
      }%
    \ufcdEndLines
    \ifkomavarempty{fromaddress}{}{%
      \ignorespaces\usekomavar{fromaddress}%
      \par
    }%
    \ufcdBeginLines
      \if@phone
        \ifkomavarempty{fromphone}{}{%
          \ufcdAddLine{%
           \usekomavar*{fromphone}%
            \usekomavar{fromphone}%
          }%
        }%
      \fi
      \if@fax
        \ifkomavarempty{fromfax}{}{%
          \ufcdAddLine{%
            \usekomavar*{fromfax}%
            \usekomavar{fromfax}%
          }%
        }%
      \fi
    \ufcdEndLines
    \ufcdBeginLines
      \if@email
        \ifkomavarempty{fromemail}{}{%
          \ufcdAddLine{%
            \usekomavar*{fromemail}%
            \usekomavar[\UFCD@url]{fromemail}%
          }%
        }%
      \fi
      \if@www
        \ifkomavarempty{fromurl}{}{%
          \ufcdAddLine{%
            \usekomavar*{fromurl}%
            \usekomavar[\UFCD@url]{fromurl}%
          }%
        }%
      \fi
    \ufcdEndLines
  }%
}
\def\UFCD@url{%
  \expandafter\expandafter\expandafter\expandafter
  \expandafter\expandafter\expandafter\url
  \expandafter\expandafter\expandafter\expandafter
  \expandafter\expandafter\expandafter
}
\newcommand*{\ufcdDateBlock}{%
  \ifkomavarempty{date}{%
    \ClassWarning{\UFCD@ClassName}{There is no date}%
  }{%
    \ifkomavarempty{place}{}{%
      \usekomavar{place}\usekomavar{placeseparator}%
    }%
    \usekomavar{date}%
    \par
  }%
}
\newenvironment*{memo}[2][]{%
  \newpage
  \if@twoside\ifodd\c@page\else\thispagestyle{empty}\null\newpage\fi\fi
  \setcounter{page}{\@ne}%
  \setcounter{footnote}{0}%
  \KOMAoptions{#1}%
  \setkomavar{subject}{#2}%
  \@beginletterhook
  \UFCD@MemoOpening
}{%
  \@nameuse{endletter}%
}
\newkomavar{opening}
\setkomavar{opening}{}
\newcommand*{\UFCD@MemoOpening}[1][]{%
  \ufcdSetVars{#1}%
  \UFCD@AtBeginEveryOpeningHook
  \@PapersizeWarning
  \@gen@firsthead
  \@mkboth{\scr@fromname@var}{\scr@subject@var}%
  \thispagestyle{empty}%
  \noindent
  \@foldmarks\@firstheadfootfield\@addrfield\@locfield
  \@datefield
  \@maketitle
  \@subjfield
  \UFCD@OpeningField
  \@afterindentfalse
  \@afterheading
}
\def\UFCD@OpeningField{%
  \ifkomavarempty{opening}{%
    \begingroup
      \setparsizes{\z@}{\z@}{\z@ plus 1fil}%
      \par@updaterelative
      \par
    \endgroup
    \vskip-\parskip
  }{%
    \begingroup
      \setparsizes{\z@}{\z@}{\z@ plus 1fil}%
      \par@updaterelative
      \usekomavar{opening}%
      \par
    \endgroup
    \begingroup
      \setlength{\@tempdima}{\baselineskip}%
      \addtolength{\@tempdima}{-\parskip}%
      \ifdim\@tempdima>\z@
        \vskip\@tempdima
      \fi
    \endgroup
  }%
}
\renewcommand*{\@set@reffield}[1]{}
\let\opening\@undefined
\endinput
%%
%% End of file `ufcd-memo.cls'.
