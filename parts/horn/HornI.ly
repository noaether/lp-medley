hornI_COTNT = {
  r1
  r1
  d4 d4 e4 f4
  f2 (e2)
}

scoreAHornFI = \relative c'' {
  \transposition f
  \key f \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \hornI_COTNT

  \section
}

scoreAHornFIPart = \new Staff \with {
  instrumentName = "Horn in F I"
  shortInstrumentName = "Hn.F. I"
  midiInstrument = "french horn"
} \scoreAHornFI

\book {
  \bookOutputName "Horn I"
  \header {
    title = "Medley 2019-2024"
    composer = "Noa St-Onge"
    arranger = "Robin Stinat-Vincent"
    copyright = "2023"
    instrument = "Horn I"
    tagline = ##f
  }
  \score {
    <<
      \scoreAHornFIPart
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