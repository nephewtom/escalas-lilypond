\version "2.10.13"
\include "espanol.ly"

\paper {
	#(set-default-paper-size "a4")
	before-title-space = 20\mm
	top-margin = 2\cm
	bottom-margin = 2\cm
	left-margin = 0.5\cm
	head-separation = 0.1\cm
	foot-separation = 1\cm
  
  % centers page numbers at the bottom of every page.
  print-page-number = ##t
  print-first-page-number = ##t
  oddHeaderMarkup = \markup \fill-line { " " }
  evenHeaderMarkup = \markup \fill-line { " " }
  oddFooterMarkup = \markup { \fill-line {
     \bold \fontsize #1 \on-the-fly #print-page-number-check-first
     \fromproperty #'page:page-number-string } }
  evenFooterMarkup = \markup { \fill-line {
     \bold \fontsize #1 \on-the-fly #print-page-number-check-first
     \fromproperty #'page:page-number-string } }
     
  %after-title-space = 200\mm
  %between-system-padding = #5.0
  %between-system-space = 0.5\cm
  ragged-last-bottom = ##f
  %ragged-bottom = ##f
  
  %page-limit-inter-system-space = ##t
  %page-limit-inter-system-space-factor = 3.0
}

\layout {
%    indent = 5.0\cm
}

doMayorClaveSol = \relative do' {
	\clef treble
	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
	do-1 re-2 mi-3 fa-1 sol-2 la-3 si-4 do-1 re-2 mi-3 fa-1 sol-2 la-3 si-4 do-5
	si-4 la-3 sol-2 fa-1 mi-3 re-2 do-1 si-4 la-3 sol-2 fa-1 mi-3 re-2 do-1
}

doMayorClaveFa = \relative do, {
	\clef bass
	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
	do-5 re-4 mi-3 fa-2 sol-1 la-3 si-2 do-1 re-4 mi-3 fa-2 sol-1 la-3 si-2 do-1
	si-2 la-3 sol-1 fa-2 mi-3 re-4 do-1 si-2 la-3 sol-1 fa-2 mi-3 re-4 do-5
}

solMayorClaveSol = \relative do'{
	\clef treble
	\key sol \major
	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  sol-1 la-2 si-3 do-1 re-2 mi-3 fas-4 sol-1 la-2 si-3 do-1 re-2 mi-3 fas-4 sol-5
  fas-4 mi-3 re-2 do-1 si-3 la-2 sol-1 fas-4 mi-3 re-2 do-1 si-3 la-2 sol-1
}

solMayorClaveFa = \relative do,{
	\clef bass
	\key sol \major
	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  sol4-5 la-4 si-3 do-2 re-1 mi-3 fas-2 sol-1 la-4 si-3 do-2 re-1 mi-3 fas-2 sol-1
  fas-2 mi-3 re-1 do-2 si-3 la-4 sol-1 fas-2 mi-3 re-1 do-2 si-3 la-4 sol-5
}

reMayorClaveSol = \relative do'{
	\clef treble
	\key re \major
   \override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  re4-1 mi-2 fas-3 sol-1 la-2 si-3 dos-4 re-1 mi-2 fas-3 sol-1 la-2 si-3 dos-4 re-5
  dos-4 si-3 la-2 sol-1 fas-3 mi-2 re-1 dos-4 si-3 la-2 sol-1 fas-3 mi-2 re-1
}

reMayorClaveFa = \relative do,{
	\clef bass
	\key re \major
   \override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  re4-5 mi-4 fas-3 sol-2 la-1 si-3 dos-2 re-1 mi-4 fas-3 sol-1 la-1 si-3 dos-2 re-1
  dos-2 si-3 la-1 sol-2 fas-3 mi-4 re-1 dos-2 si-3 la-1 sol-2 fas-3 mi-4 re-5 
}

laMayorClaveSol = \relative do'{
	\clef treble
   \key la \major
  	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  la4-1 si-2 dos-3 re-1 mi-2 fas-3 sols-4 la-1 si-2 dos-3 re-1 mi-2 fas-3 sols-4 la-5
  sols-4 fas-3 mi-2 re-1 dos-3 si-2 la-1 sols-4 fas-3 mi-2 re-1 dos-3 si-2 la-1
}

laMayorClaveFa = \relative do,{
	\clef bass
	\key la \major
   \override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  la4-5 si-4 dos-3 re-2 mi-1 fas-3 sols-2 la-1 si-4 dos-3 re-2 mi-1 fas-3 sols-1 la-1
  sols-4 fas-3 mi-2 re-1 dos-3 si-2 la-1 sols-4 fas-3 mi-2 re-1 dos-3 si-2 la-1
}

miMayorClaveSol = \relative do'{
	\clef treble
	\key mi \major
  	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  mi4-1 fas-2 sols-3 la-1 si-2 dos-3 res-4 mi-1 fas-2 sols-3 la-1 si-2 dos-3 res-4 mi-5
  res-4 dos-3 si-2 la-1 sols-3 fas-2 mi-1 res-4 dos-3 si-2 la-1 sols-3 fas-2 mi-1
}

miMayorClaveFa = \relative do,{
	\clef bass
	\key mi \major
  	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  mi4-5 fas-4 sols-3 la-2 si-1 dos-3 res-2 mi-1 fas-4 sols-3 la-2 si-1 dos-3 res-2 mi-1
  res-2 dos-3 si-1 la-2 sols-3 fas-4 mi-1 res-2 dos-3 si-1 la-2 sols-3 fas-4 mi-5
}

siMayorClaveSol = \relative do'{
	\clef treble
	\key si \major
  	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  si-1 dos-2 res-3 mi-1 fas-2 sols-3 las-4 si-1 dos-2 res-3 mi-1 fas-2 sols-3 las-4 si-5
  las-4 sols-3 fas-2 mi-1 res-3 dos-2 si-1 las-4 sols-3 fas-2 mi-1 res-3 dos-2 si-1
}

siMayorClaveFa = \relative do,{
	\clef bass
	\key si \major
  	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  si-4 dos-3 res-2 mi-1 fas-4 sols-3 las-2 si-1 dos-3 res-2 mi-1 fas-4 sols-3 las-2 si-1
  las-2 sols-3 fas-4 mi-1 res-2 dos-3 si-1 las-2 sols-3 fas-4 mi-1 res-2 dos-3 si-4
}

faSostenidoMayorClaveSol = \relative do'{
	\clef treble
	\key fas \major
  	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  fas-2 sols-3 las-4 si-1 dos-2 res-3 mis-1 fas-2 sols-3 las-4 si-1 dos-2 res-3 mis-4 fas-5
  mis-4 res-3 dos-2 si-1 las-4 sols-3 fas-2 mis-1 res-3 dos-2 si-1 las-4 sols-3 fas-2
}

faSostenidoMayorClaveFa = \relative do,{
	\clef bass
	\key fas \major
  	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  fas-4 sols-3 las-2 si-1 dos-3 res-2 mis-1 fas-4 sols-3 las-2 si-1 dos-3 res-2 mis-1 fas-4
  mis-1 res-2 dos-3 si-1 las-2 sols-3 fas-4 mis-1 res-2 dos-3 si-1 las-2 sols-3 fas-4
}

doSostenidoMayorClaveSol = \relative do'{
	\clef treble
	\key dos \major
  	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  dos-2 res-3 mis-1 fas-2 sols-3 las-4 sis-1 dos-2 res-3 mis-1 fas-2 sols-3 las-4 sis-1 dos-2
  sis-1 las-4 sols-3 fas-2 mis-1 res-3 dos-2 sis-1 las-4 sols-3 fas-2 mis-1 res-3 dos-2
}

doSostenidoMayorClaveFa = \relative do,{
	\clef bass
	\key dos \major
  	\override Staff.TimeSignature #'transparent = ##t
	\cadenzaOn
  dos-3 res-2 mis-1 fas-4 sols-3 las-2 sis-1 dos-3 res-2 mis-1 fas-4 sols-3 las-2 sis-1 dos-3
  sis-1 las-2 sols-3 fas-4 mis-1 res-2 dos-3 sis-1 las-2 sols-3 fas-4 mis-1 res-2 dos-3
}

\book {
  \header { 
  	title = \markup \center-column { "Escalas mayores digitadas para piano" " " }
  }
  % ------ Pagina 1 -------
  \score {
    \doMayorClaveSol
    \header { piece = "        Do Mayor" }
  }
  \score {
    \doMayorClaveFa
  }

  \score {
    \solMayorClaveSol
    \header { piece = "        Sol Mayor" }
  }
  \score {
    \solMayorClaveFa
  }
  
  \score {
    \reMayorClaveSol
    \header { piece = "        Re Mayor" }
  }
  \score {
    \reMayorClaveFa
  }

  \score {
    \laMayorClaveSol
    \header { piece = "        La Mayor" }
  }
  \score {
    \laMayorClaveFa
  }
  \pageBreak
  
  % ------ Pagina 2 -------
  \score {
    \miMayorClaveSol
    \header { piece = "        Mi Mayor" }
  }
  \score {
    \miMayorClaveFa
  }

  \score {
    \siMayorClaveSol
    \header { piece = "        Si Mayor" }
  }
  \score {
    \siMayorClaveFa
  }
  
  \score {
    \faSostenidoMayorClaveSol
    \header { piece = "        Fa# Mayor" }
  }
  \score {
    \faSostenidoMayorClaveFa
  }

  \score {
    \doSostenidoMayorClaveSol
    \header { piece = "        Do# Mayor" }
  }
  \score {
    \doSostenidoMayorClaveFa
  }
  \pageBreak
  
  % ------ Pagina 3 -------
%{  \score {
    \header { piece = "        Fa Mayor" }
  }
  \score {
  }

  \score {
    \header { piece = "        Sib Mayor" }
  }
  \score {

  }

  \score {
    \header { piece = "        Mib Mayor" }
  }
  \score {

  }

  \score {
    \header { piece = "        Lab Mayor" }
  }
  \score {

  }

  % ------ Pagina 4 -------
  \score {
    \header { piece = "        Reb Mayor" }
  }
  \score {

  }

  \score {
    \header { piece = "        Solb Mayor" }
  }
  \score {

  }

  \score {
    \header { piece = "        Dob Mayor" }
  }
  \score {

  } %}

}