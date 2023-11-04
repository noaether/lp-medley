clarII_COTNT = \relative c'' {
  c4 c4 c2
  c4 c8 c8 c2
  <<
    {
      c1_\finger \markup \text "div."
      (c2) (b2)
    } \\
    {
      f2
      (g2) (g1)
    }
  >>
}

scoreAClarinetII = \relative c'' {
  \transposition bes
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \clarII_COTNT

  \section
}

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  shortInstrumentName = "Cl. II"
  midiInstrument = "clarinet"
} \scoreAClarinetII

\book {
  \bookOutputName "ClarinetII"
  \header {
    title = "Medley 2019-2024"
    composer = "Noa St-Onge"
    arranger = "Robin Stinat-Vincent"
    copyright = "2023"
    instrument = "Clarinet II"
    tagline = ##f
  }
  \score {
    <<
      \scoreAClarinetIIPart
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
