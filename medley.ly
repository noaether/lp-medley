\version "2.24.2"

\include "components/header.ly"

\include "parts/flute.ly"
\include "parts/oboe.ly"
\include "parts/clarinet.ly"
\include "parts/bassclarinet.ly"
\include "parts/altosax.ly"
\include "parts/trumpet.ly"

\headerSnippet

#(set-global-staff-size 20)

global = {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
}

scoreAChordNames = \chordmode {
  \global
  % Chords follow here.
}

scoreAFluteI = \relative c'' {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \fluteI_COTNT

  \section
}

scoreAFluteII = \relative c'' {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \fluteII_COTNT

  \section
}

scoreAOboe = \relative c'' {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \oboe_COTNT

  \section
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

scoreAClarinetII = \relative c'' {
  \transposition bes
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \clarII_COTNT

  \section
}

scoreAAltoSax = \relative c'' {
  \transposition es
  \key g \major
  \numericTimeSignature
  \time 4/4
  \tempo "Adante"
  \altoSax_COTNT

  \section
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

scoreAHornFI = \relative c'' {
  \global
  \transposition f
  % Music follows here.
}

scoreAHornFII = \relative c'' {
  \global
  \transposition f
  % Music follows here.
}

scoreATromboneI = \relative c {
  \global
  % Music follows here.
}

scoreATromboneII = \relative c {
  \global
  % Music follows here.
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

scoreAFluteIPart = \new Staff \with {
  instrumentName = "Flute I"
  shortInstrumentName = "Fl. I"
  midiInstrument = "flute"
} \scoreAFluteI

scoreAFluteIIPart = \new Staff \with {
  instrumentName = "Flute II"
  shortInstrumentName = "Fl. II"
  midiInstrument = "flute"
} \scoreAFluteII

scoreAOboePart = \new Staff \with {
  instrumentName = "Oboe"
  shortInstrumentName = "Ob."
  midiInstrument = "oboe"
} \scoreAOboe

scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  shortInstrumentName = "Cl. I"
  midiInstrument = "clarinet"
} \scoreAClarinetI

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  shortInstrumentName = "Cl. II"
  midiInstrument = "clarinet"
} \scoreAClarinetII

scoreAAltoSaxPart = \new Staff \with {
  instrumentName = "Alto Sax"
  shortInstrumentName = "ASx."
  midiInstrument = "alto sax"
} \scoreAAltoSax

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

scoreAHornFIPart = \new Staff \with {
  instrumentName = "Horn in F I"
  shortInstrumentName = "Hn.F. I"
  midiInstrument = "french horn"
} \scoreAHornFI

scoreAHornFIIPart = \new Staff \with {
  instrumentName = "Horn in F II"
  shortInstrumentName = "Hn.F. II"
  midiInstrument = "french horn"
} \scoreAHornFII

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
