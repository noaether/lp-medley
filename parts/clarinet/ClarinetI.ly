clarI_COTNT = \relative c'' {
  c4 c4 e2
  c4 c8 c8 e2
  <<
    {
      e1_\finger \markup \text "div."
      (e2) (d2)
    } \\
    {
      a1
      (b1)
    }
  >>
}

scoreAClarinetI = \relative c'' {
  \transposition bes
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \clarI_COTNT

  \section
}


scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  shortInstrumentName = "Cl. I"
  midiInstrument = "clarinet"
} \scoreAClarinetI

\book {
  \bookOutputName "ClarinetI"
  \header {
    title = "Medley 2019-2024"
    composer = "Noa St-Onge"
    arranger = "Robin Stinat-Vincent"
    copyright = "2023"
    instrument = "Clarinet I"
    tagline = ##f
  }
  \score {
    <<
      \scoreAClarinetIPart
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
