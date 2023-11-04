hornII_COTNT = {
  r1
  r1
  <<
    {
      a2_\finger \markup \text "div." a4 a4
      a2 (g2)
    } \\
    {
      \stemUp
      f2 f4 f4
      c1
    }
  >>
}

scoreAHornFII = \relative c'' {
  \transposition f
  \key f \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \hornII_COTNT

  \section
}

scoreAHornFIIPart = \new Staff \with {
  instrumentName = "Horn in F II"
  shortInstrumentName = "Hn.F. II"
  midiInstrument = "french horn"
} \scoreAHornFII

\book {
  \bookOutputName "Horn II"
  \header {
    title = "Medley 2019-2024"
    composer = "Noa St-Onge"
    arranger = "Robin Stinat-Vincent"
    copyright = "2023"
    instrument = "Horn II"
    tagline = ##f
  }
  \score {
    <<
      \scoreAHornFIIPart
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