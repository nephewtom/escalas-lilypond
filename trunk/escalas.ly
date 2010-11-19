\version "2.10.13"
\include "espanol.ly"

doMayor = \relative do'{
  do4-1 re-2 mi-3 fa-1 sol-2 la-3 si-4 do-1 re-2 mi-3 fa-1 sol-2 la-3 si-4 do-5
  si-4 la-3 sol-2 fa-1 mi-3 re-2 do-1 si-4 la-3 sol-2 fa-1 mi-3 re-2 do-1
}

reMayor = \relative do'{
  \key sol \major
  do4 re mi fas sol la si do re mi fas sol la si do2
}

\book {
  \header { }
  \score {
    \doMayor
    \header { piece = "Escala de Do Mayor" }
  }
  
  \score {
    \reMayor
    \header { piece = "Escala de Sol Mayor" }
  }
}