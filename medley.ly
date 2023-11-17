\version "2.24.2"

%woodwinds
\include "parts/flute.ly"
\include "parts/oboe.ly"
\include "parts/clarinet.ly"
\include "parts/bassclarinet.ly"
\include "parts/alto/altosax.ly"

%brass
\include "parts/trumpet.ly"
\include "parts/horn.ly"
\include "parts/trombone.ly"

#(set-global-staff-size 20)

global = {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
}

scoreAChordNames = \chordmode {
  \global
}

scoreABassClarinet = \relative c' {
  \transposition bes
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \bassClar_COTNT

  \section
}

scoreATrumpetBbI = \relative c' {
  \transposition bes
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \trumpetI_COTNT

  \section
}

scoreATrumpetBbII = \relative c' {
  \transposition bes
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \trumpetII_COTNT

  \section
}

scoreATromboneI = \relative c {
  \clef bass \key f \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \tromboneI_COTNT

  \section
}

scoreATromboneII = \relative c {
  \clef bass \key f \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \tromboneII_COTNT

  \section
}

scoreAEuphoniumI = \relative c {
  \global
  % Music follows here.
}

scoreAEuphoniumII = \relative c {
  \global
  % Music follows here.
}

scoreATuba = \relative c'' {
  \global
  \transposition bes,
  % Music follows here.
}

scoreATimpani = \relative c {
  \global
  % Music follows here.
}

scoreAXylophone = \relative c'' {
  \global
  % Music follows here.
}

scoreARight = \relative c'' {
  \global
  % Music follows here.
}

scoreALeft = \relative c' {
  \global
  % Music follows here.
}

scoreATubularBells = \relative c'' {
  \global
  % Music follows here.
}

scoreAChordsPart = \new ChordNames \scoreAChordNames

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass clarinet"
  shortInstrumentName = "BCl."
  midiInstrument = "clarinet"
} \scoreABassClarinet

scoreATrumpetBbIPart = \new Staff \with {
  instrumentName = "Trumpet in Bb I"
  shortInstrumentName = "Tr.Bb. I"
  midiInstrument = "trumpet"
} \scoreATrumpetBbI

scoreATrumpetBbIIPart = \new Staff \with {
  instrumentName = "Trumpet in Bb II"
  shortInstrumentName = "Tr.Bb. II"
  midiInstrument = "trumpet"
} \scoreATrumpetBbII

scoreATromboneIPart = \new Staff \with {
  instrumentName = "Trombone I"
  shortInstrumentName = "Trb. I"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneI }

scoreATromboneIIPart = \new Staff \with {
  instrumentName = "Trombone II"
  shortInstrumentName = "Trb. II"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneII }

scoreAEuphoniumIPart = \new Staff \with {
  instrumentName = "Euphonium I"
  shortInstrumentName = "Euph. I"
  midiInstrument = "trombone"
} { \clef bass \scoreAEuphoniumI }

scoreAEuphoniumIIPart = \new Staff \with {
  instrumentName = "Euphonium II"
  shortInstrumentName = "Euph. II"
  midiInstrument = "trombone"
} { \clef bass \scoreAEuphoniumII }

scoreATubaPart = \new Staff \with {
  instrumentName = "Tuba"
  shortInstrumentName = "Tb."
  midiInstrument = "tuba"
} \scoreATuba

scoreATimpaniPart = \new Staff \with {
  instrumentName = "Timpani"
  shortInstrumentName = "Tmp."
  midiInstrument = "timpani"
} { \clef bass \scoreATimpani }

scoreAXylophonePart = \new Staff \with {
  instrumentName = "Xylophone"
  shortInstrumentName = "Xyl."
  midiInstrument = "xylophone"
} \scoreAXylophone

scoreAMarimbaPart = \new PianoStaff \with {
  instrumentName = "Marimba"
  shortInstrumentName = "Mar."
} <<
  \new Staff = "right" \with {
    midiInstrument = "marimba"
  } \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "marimba"
  } { \clef bass \scoreALeft }
>>

scoreATubularBellsPart = \new Staff \with {
  instrumentName = "Tubular bells"
  shortInstrumentName = "Tub."
  midiInstrument = "tubular bells"
} \scoreATubularBells

\book {
  \bookOutputName "ChefScore"
  \header {
    title = "Medley 2019-2024"
    composer = "Noa St-Onge"
    arranger = "Robin Stinat-Vincent"
    copyright = "2023"
    % Remove default LilyPond tagline
    tagline = ##f
  }
  \score {
    <<
      \scoreAChordsPart
      \scoreAFluteIPart
      \scoreAFluteIIPart
      \scoreAOboePart
      \scoreAClarinetIPart
      \scoreAClarinetIIPart
      \scoreAAltoSaxPart
      \scoreABassClarinetPart
      \scoreATrumpetBbIPart
      \scoreATrumpetBbIIPart
      \scoreAHornFIPart
      \scoreAHornFIIPart
      \scoreATromboneIPart
      \scoreATromboneIIPart
      \scoreAEuphoniumIPart
      \scoreAEuphoniumIIPart
      \scoreATubaPart
      \scoreATimpaniPart
      \scoreAXylophonePart
      \scoreAMarimbaPart
      \scoreATubularBellsPart
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