\include "../../components/text.ly"

\version "2.24.2"

fluteII_COTNT = \relative c' {
  r1
  r2 r4 f16 (g16 a16 bes16)
  bes4 bes4 a4 d4
  bes2 (a2)
}

scoreAFluteII = \relative c'' {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \fluteII_COTNT

  \section
}

scoreAFluteIIPart = \new Staff \with {
  instrumentName = "Flute II"
  shortInstrumentName = "Fl. II"
  midiInstrument = "flute"
} \scoreAFluteII

\book {
  \bookOutputName "Flute II"
  \header {
    title = "Medley 2019-2024"
    composer = "Noa St-Onge"
    arranger = "Robin Stinat-Vincent"
    copyright = "2023"
    instrument = "Flute II"
    tagline = ##f
  }
  \score {
    <<
      \scoreAFluteIIPart
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