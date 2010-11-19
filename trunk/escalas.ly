\version "2.10.13"
\include "espanol.ly"

doMayor = \relative do'{
  do4-1 re-2 mi-3 fa-1 sol-2 la-3 si-4 do-1 re-2 mi-3 fa-1 sol-2 la-3 si-4 do-5
  si-4 la-3 sol-2 fa-1 mi-3 re-2 do-1 si-4 la-3 sol-2 fa-1 mi-3 re-2 do2-1 r
}

solMayor = \relative do'{
  \key sol \major
  sol4-1 la-2 si-3 do-1 re-2 mi-3 fas-4 sol-1 la-2 si-3 do-1 re-2 mi-3 fas-4 sol-5
  fas-4 mi-3 re-2 do-1 si-3 la-2 sol-1 fas-4 mi-3 re-2 do-1 si-3 la-2 sol2-1 r
}

\book {
  \header { }
  \score {
    \doMayor
    \header { piece = "Escala de Do Mayor" }
  }
  
  \score {
    \solMayor
    \header { piece = "Escala de Sol Mayor" }
  }
}