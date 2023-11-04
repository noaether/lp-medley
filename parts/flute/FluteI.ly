fluteI_COTNT = \relative c'' {
  r1
  r2 r4 bes16 (c16 d16 es16)
  g4 g4 f4 d4
  c2 (c2)
}

scoreAFluteI = \relative c'' {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \fluteI_COTNT

  \section
}

scoreAFluteIPart = \new Staff \with {
  instrumentName = "Flute I"
  shortInstrumentName = "Fl. I"
  midiInstrument = "flute"
} \scoreAFluteI

\book {
  \bookOutputName "FluteI"
  \header {
    title = "Medley 2019-2024"
    composer = "Noa St-Onge"
    arranger = "Robin Stinat-Vincent"
    copyright = "2023"
    instrument = "Flute I"
    tagline = ##f
  }
  \score {
    <<
      \scoreAFluteIPart
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