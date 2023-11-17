\include "../../components/text.ly"

altoSax_COTNT = {
  g2 b2
  d2
  <<
    {
      \stemDown
      fis2\finger \markup \text "div."
      a1 (a2) (g2)
    }
    \\
    {
      fis,2
      \stemUp e2 (g2)
      (fis2) (fis2)
    }
  >>
}

altoSax_TREPAK = {
  \key c \major
  \time 2/4

  < c' g >8 r8 r4
  < c f, >8. < c g >8. < c a >8. r8
}

scoreAAltoSax = \relative c'' {
  \transposition es
  \key g \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \altoSax_COTNT

  \trepak
  \altoSax_TREPAK
}

scoreAAltoSaxPart = \new Staff \with {
  instrumentName = "Alto Sax"
  shortInstrumentName = "ASx."
  midiInstrument = "alto sax"
} \scoreAAltoSax

\book {
  \bookOutputName "Alto Sax"
  \header {
    title = "Medley 2019-2024"
    composer = "Noa St-Onge"
    arranger = "Robin Stinat-Vincent"
    copyright = "2023"
    instrument = "Alto Sax"
    tagline = ##f
  }
  \score {
    <<
      \scoreAAltoSaxPart
    >>
    \layout {
      indent = 25
      short-indent = 20
    }

    \midi {
      \tempo 4=92
    }
  }
}
