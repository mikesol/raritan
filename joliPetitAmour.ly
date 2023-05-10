\version "2.24.0"
#(set-global-staff-size 18)
\include "jazzchords.ily"
\include "lilyjazz.ily"

\paper {
  #(define fonts
     (set-global-fonts
      #:music "LilyJAZZ"
      #:roman "LilyJAZZText"
      #:sans "LilyJAZZText"
      #:factor (/ staff-height pt 20)))
}

\paper {
  #(set-paper-size "letter")
  indent = 0\mm
  between-system-space = 2.5\cm
  between-system-padding = #0
  %%set to ##t if your score is less than one page:
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  markup-system-spacing = #'((basic-distance . 23)
                             (minimum-distance . 8)
                             (padding . 1))
}

title = #"Joli Petit Amour"
composer = #"-Solomon & Fournel"
meter = #"(Samba)"

realBookTitle = \markup {
  \score {
    {
      \override TextScript.extra-offset = #'(0 . -4.5)
      s4
      s^\markup {
        \fill-line {
          \fontsize #1 \lower #1 \rotate #7 \concat { " " #meter }
          \fontsize #8
          \override #'(offset . 7)
          \override #'(thickness . 6)
          \underline \sans #title
          \fontsize #1 \lower #1 \concat { #composer " " }
        }
      }
      s
    }
    \layout {
      \once \override Staff.Clef.stencil = ##f
      \once \override Staff.TimeSignature.stencil = ##f
      \once \override Staff.KeySignature.stencil = ##f
      ragged-right = ##f
      \override TextScript.font-name = #"Pea Missy with a Marker"
    }
  }
}

\header {
  title = \realBookTitle
  tagline = ##f
}

theNotes = \relative c' {
  \set Staff.midiInstrument = "flute"
  \key fis \minor
  \partial 4
    r16 d16 fis a |
  \showStartRepeatBar \bar "[|:-|"
    d8. b16 ~ b8. cis16 ~ cis4 a8. fis16 ~ |
    fis2 r2 |
    r8 b gis a b8. gis16 ~ gis8. fis16 ~ |
    fis2 r4 r16 d16 fis a |
    d8. b16 ~ b8. cis16 ~ cis4 a8. fis16 ~ |
    fis2 r2 |
    r8 b gis a b8. gis16 ~ gis8. e16 ~ |
    e2 r4 r16 d16 fis a |
    d8. b16 ~ b8. cis16 ~ cis4 a8. fis16 ~ |
    fis2. r4 |
    %\key b \minor
    r8 d'16 fis, ~ fis b8 a16 ~ a fis8 g16 b a8 fis16 ~ |
    fis8 b,16 d fis a8 gis16 ~ gis fis8 a16 ~ a fis8. |
    r8 d'16 cis b a8 g16 ~ g fis8 e16 ~ e4 |
    r16 cis cis'16 b a g8 fis16 ~ fis e8 d16 ~ d4 |
    r8 b'16 a g fis8 e16 ~ e d8 cis16 ~ cis e8 a16 ~ |
    a2. r4 |
    r8 b16 a g fis8 e16 ~ e d8 cis16 ~ cis fis8 b,16 ~ |
    b1
    r2.
  
  \bar ":|]"
}

theChords = \chordmode {
  s4 |

  b1:m7
  s1 |
  gis2:dim7
  cis2:7
  fis1:m
  gis2:dim7
  cis2:7
  fis1:m
  b2:m
  e:13
  a2:maj7
  a2:6
  gis2:dim7
  cis2:7
  fis1:m

      b1:m7
      s1
      e2:m7
      a:7
      d:maj7.9
      g:maj7.9
      cis:dim7
      fis:7.10-
      a:m7
      d:7
      g:maj7
      cis4:dim7
      fis:7
      b1:m7
  
}

theWords = \lyricmode {
    Que l'on é -- cra -- se no -- tre~a -- mour
    dans la ma -- chine des jours.
    Que l'on é -- cra -- se no -- tre~a -- mour
    dans la ma -- chine des jours.
    Que l'on é -- cra -- se no -- tre~a -- mour.

    C'é -- tait un jo -- li pe -- tit a -- mour
    Un a -- mour de deux ou trois jours
    Tout bour -- ré de jo -- lies choses
    Du cho -- co -- lat, du vin, des roses,
    Un a -- mour de jar -- din et de feuilles
    Pour -- quoi faut -- il tou -- jours que tu veuilles
}
  

\score {
  <<
    \new ChordNames \theChords
    \new Voice = vocals \theNotes
    \new Lyrics \lyricsto vocals \theWords
  >>
  \layout {
    % make only the first clef visible
    \override Score.Clef.break-visibility = #'#(#f #f #f)
    % make only the first time signature visible
    \override Score.KeySignature.break-visibility = #'#(#f #f #f)
    % allow single-staff system bars
    \override Score.SystemStartBar.collapse-height = #1
    \override LyricHyphen.thickness = #4
    \override Score.VoltaBracket.font-name = #"Pea Missy with a Marker"
  }
  
}
%%%%%
melodyVA = \relative c'' {
  \tempo "Carnaval"
  %\autoBeamOff
  \key b \minor
  \time 4/4
  \jazzOn
  r8 d16 fis, ~ fis b8 a16 ~ a fis8 g16 b a8 fis16 ~ |
  fis8 b,16 d fis a8 gis16 ~ gis fis8 a16 ~ a fis8. |
  r8 d'16 cis b a8 g16 ~ g fis8 e16 ~ e4 |
  r16 cis cis'16 b a g8 fis16 ~ fis e8 d16 ~ d4 |
  r8 b'16 a g fis8 e16 ~ e d8 cis16 ~ cis e8 a16 ~ |
  a2. r4 |
  r8 b16 a g fis8 e16 ~ e d8 cis16 ~ cis fis8 b,16 ~ |
  b1
  r2. r16 d fis a16 |
}

textVA = \lyricmode {
  \override Lyrics.LyricText.font-name = #"LilyJAZZ Text"
  C'é -- tait un jo -- li pe -- tit a -- mour
  Un a -- mour de deux ou trois jours
  Tout bour -- ré de jo -- lies choses
  Du cho -- co -- lat, du vin, des roses,
  Un a -- mour de jar -- din et de feuilles
  Pour -- quoi faut -- il tou -- jours que tu veuilles
  Que l'on é...
}

guitarVA = \chordmode {
  \override ChordNames.ChordName.font-name = #"LilyJAZZ Text"
  \override ChordNames.ChordName.font-size = #3
  b1:m7
  s1
  e2:m7
  a:7
  d:maj7.9
  g:maj7.9
  cis:dim7
  fis:7.10-
  a:m7
  d:7
  g:maj7
  cis4:dim7
  fis:7
  b1:m7
}

melodyVB = \relative c'' {
  \tempo "Carnaval"
  %\autoBeamOff
  \key b \minor
  \time 4/4
  \jazzOn
  r8 d16 fis, ~ fis b8 a16 ~ a fis8 g16 b a8 fis16 ~ |
  fis8 b,16 d fis a8 gis16 ~ gis fis8 a16 ~ a fis8. |
  r8 d'16 cis b a8 g16 ~ g fis8 e16 ~ e4 |
  r8 cis'16 b a g8 fis16 ~ fis e8 d16 ~ d4 |
  r8 b'16 a g fis8 e16 ~ e d8 cis16 ~ cis e8 a16 ~ |
  a2. r4 |
  r8 b16 a g fis8 e16 ~ e d8 cis16 ~ cis fis8 b,16 ~ |
  b1
  r2. r16 d fis a16 |
}

textVB = \lyricmode {
  \override Lyrics.LyricText.font-name = #"LilyJAZZ Text"
  C'est vrai que nous nous ai -- mions pour -- tant
  Tu é -- tais mon ga -- lant a -- mant
  Oui, j'é -- tais ta belle maît -- resse
  Ta do -- due voire ta gon -- zesse,
  A ge -- noux tu veux me ma -- ri -- er
  Tout de suite je tombe du ca -- na -- pé
  Que l'on é...
}

guitarVB = \chordmode {
  \override ChordNames.ChordName.font-name = #"LilyJAZZ Text"
  \override ChordNames.ChordName.font-size = #3
  b1:m7
  s1
  e2:m7
  a:7
  d:maj7.9
  g:maj7.9
  cis:dim7
  fis:7.10-
  a:m7
  d:7
  g:maj7
  cis4:dim7
  fis:7
  b1:m7
}

melodyVC = \relative c'' {
  \tempo "Carnaval"
  %\autoBeamOff
  \key b \minor
  \time 4/4
  \jazzOn
  r8 d16 cis b a8 g16 ~ g fis8 e16 ~ e4 |
  r8 cis'16 b a g8 fis16 ~ fis e8 d16 ~ d4 |
  r8 b'16 a g fis8 e16 ~ e d8 cis16 ~ \times 2/3 { cis8 cis8 e } |
  a2. r4 |
  r8 b16 a g fis8 e16 ~ e d8 cis16 ~ cis fis8 b,16 ~ |
  b2 r4 r16 d fis a16 |
}

textVC = \lyricmode {
  \override Lyrics.LyricText.font-name = #"LilyJAZZ Text"
  Très gê -- née, je suis fur -- ax
  O -- dieux tu pro -- poses un pacs.
  Pour -- quoi pas un py -- ja -- ma des pan -- toufles
  An -- gois -- sée et dé -- bor -- dée j'é -- touffe
  Que l'on é...
}

guitarVC = \chordmode {
  \override ChordNames.ChordName.font-name = #"LilyJAZZ Text"
  \override ChordNames.ChordName.font-size = #3
  e2:m7
  a:7
  d:maj7.9
  g:maj7.9
  cis:dim7
  fis:7.10-
  a:m7
  d:7
  g:maj7
  cis4:dim7
  fis:7
  b1:m7
}



melodyRefrain = \relative c' {
  \tempo "Carnaval brésilien"
  %\autoBeamOff
  \key fis \minor
  \time 4/4
  \jazzOn
  R1^\markup \override #'(font-name . "LilyJAZZ Text") "(guitare ad lib)" \bar ":|."
  r2. r16 d16 fis a |
  d8. b16 ~ b8. cis16 ~ cis4 a8. fis16 ~ |
  fis2 r2 |
  r8 b gis a b8. gis16 ~ gis8. fis16 ~ |
  fis2 r4 r16 d16 fis a |
  d8. b16 ~ b8. cis16 ~ cis4 a8. fis16 ~ |
  fis2 r2 |
  r8 b gis a b8. gis16 ~ gis8. e16 ~ |
  e2 r4 r16 d16 fis a |
  d8. b16 ~ b8. cis16 ~ cis4 a8. fis16 ~ |
  fis2. r4 |
}

textRefrain = \lyricmode {
  \override Lyrics.LyricText.font-name = #"LilyJAZZ Text"
  Que l'on é -- cra -- se no -- tre~a -- mour
  dans la ma -- chine des jours.
  Que l'on é -- cra -- se no -- tre~a -- mour
  dans la ma -- chine des jours.
  Que l'on é -- cra -- se no -- tre~a -- mour.
}

guitarRefrain = \chordmode {
  \override ChordNames.ChordName.font-name = #"LilyJAZZ Text"
  \override ChordNames.ChordName.font-size = #3
  b1:m7
  s1 |
  gis2:dim7
  cis2:7
  fis1:m
  gis2:dim7
  cis2:7
  fis1:m
  b2:m
  e:13
  a2:maj7
  a2:6
  gis2:dim7
  cis2:7
  fis1:m
}

\markup { 
  \fill-line {
    \center-column {
      "2ème couplet"
      \column {
        "C'est vrai que nous nous aimions pourtant"
        "Tu étais mon galant amant"
        "Oui, j'étais ta belle maîtresse"
        "Ta dodue voire ta gonzesse,"
        "A genoux tu veux me marier"
        "Tout de suite je tombe du canapé"
        "Que l'on é..."
        }
    }
    \center-column {
      "3ème couplet"
      "(à partir de la deuxième moitié)"
      \column {
        "Très gênée, je suis furax"
        "Odieux tu proposes un pacs."
        "Pourquoi pas un pyjama des pantoufles"
        "Angoissée et débordée j'étouffe"
        "Que l'on é..."
        }
    }
  }
}