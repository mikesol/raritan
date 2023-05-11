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

title = #"Ça va, Apolline ?"
composer = #"-Mike Solomon"
meter = #"(Foxtrot)"

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

theNotes = {
  \relative c'' {
    \key b \major
    \clef "treble_8"
    b2 fis |
    gis4 fis8 e4 fis r8 |
    R1 |
    r2 r8 d e fis |
    g4 r d r8 g, |
    e'4 d8 c ~ c b a b |
    a g4. ~ g4 r8 g |
    a c e g ~ g fis g a |
    fis d ~ d4 ~ d8 r g fis |
    e8 d4 c8 ~ c d4 b8 |
    r8 g a b r4 r8 g |
    a b c d r d e fis |
    %%
    g4 r d r4 |
    e4 d8 c ~ c b a b |
    a g4. ~ g4 r8 g |
    a c e g ~ g fis g a |
    fis d ~ d4 ~ d8 r g fis |
    e8 d4 c8 ~ c c d b |
    \key b \major
    r8 dis dis e fis r r4 |
    \key cis \major
    r8 eis eis fis gis r r4 |
    \key a \major
    a2 e |
    fis4 e8 d8 ~ d fis4 r8 |
    e2 cis |
    d4 cis8 a8 ~ a b4 r8 |
    \key c \major
    c'2 g |
    a4 g8 f8 ~ f a4 r8 |
  }
  \transpose g e \relative c' {
      \key g \major
      R1 |
      r2 r8 d e fis |
      g4 r d r |
      e8 d4 c8 ~ c b a b |
      a g4. ~ g4 r8 g |
      a c e g ~ g fis g a |
      fis d ~ d4 ~ d8 r g fis |
      e8 d4 c8 ~ c d4 b8 |
      r8 g a b r2 |
      a8 b c d r d e fis |
      %%
      g4 r d r4 |
      e4 d8 c ~ c b a b |
      a g4. ~ g4 r8 g |
      a c e g ~ g fis g a |
      fis d ~ d4 ~ d8 r g fis |
      e8 d4 c8 ~ c c d b |
  }
  \relative c' {
      \key aes \major
      r8 c c des ees r r4 |
      \key bes \major
      r8 d d ees f r r4 |
  }
  \transpose a fis \relative c'' {
      \key a \major
      a2 e |
      fis4 e8 d8 ~ d fis4 r8 |
      e2 cis |
      d4 cis8 a8 ~ a b4 r8 |
      \key f \major
      f''2 c |
      d4 c8 bes8 ~ bes d4 r8 |
  }
  \relative c' {
    \key fis \minor
    r4 cis8 cis eis gis4 a8 ~ |
    a fis4 e8 ~ e fis4 r8 |
    r4 cis8 cis eis gis4 a8 ~ |
    a fis4 e8 ~ e fis4 r8 |
    \key e \major
    r4 b,8 b dis fis4 gis8 ~ |
    gis e4 d8 ~ d e4 r8 |
    r4 a,8 a cis e4 fis8 ~ |
    fis d4 c8 ~ c d4 r8 |
  }
  \transpose a g \relative c'' {
      \key a \major
      a2 e |
      fis4 e8 d8 ~ d fis4 r8 |
      e2 cis |
      d4 cis8 a8 ~ a b4 r8 |
    
  }
  \transpose a bes \relative c'' {
      \key a \major
      a2 e |
      fis4 e8 d8 ~ d fis4 r8 |
      e2 cis |
      d4 cis8 a8 ~ a b4 r8 | 
  }
  \transpose a des \relative c''' {
      \key a \major
      a2 e |
      fis4 e8 d8 ~ d fis4 r8 |
      e2 cis |
      d4 cis8 a8 ~ a b4 r8 | 
  }
  \transpose a ees \relative c''' {
      \key a \major
      a2 e |
      fis4 e8 d8 ~ d fis4 r8 |
  }
  \transpose g a \relative c' {
      \key g \major
      R1 |
      r2 r8 d e fis |
      g4 r d r |
      e8 d4 c8 ~ c b a b |
      a g4. ~ g2 \bar "|." \fine
  }
}

theChords = \chordmode {
  b1 |
  s1 |
  s1 |
  s1 |
  %%
  g2 e:m7 |
  a:m7 d:7 |
  g2 e:m7 |
  a:m7 d:7 |
  b:m7 e:m7 |
  a:m7 d:7 |
  g2 e:m7 |
  a:m7 d:7 |
  %%
  g2 e:m7 |
  a:m7 d:7 |
  g2 e:m7 |
  a:m7 d:7 |
  b:m7 e:m7 |
  a:m7 d:7 |
  b2:sus b |
  cis2:sus cis |
  %%%
  a2 fis:m7 |
  b:m7 e:7 |
  a2 fis:m7 |
  b:m7 e:7 |
  c2 a:m7 |
  d:m7 g:7 |
  s1*2 |
  \transpose g e {
    g2 e:m7 |
    a:m7 d:7 |
    g2 e:m7 |
    a:m7 d:7 |
    b:m7 e:m7 |
    a:m7 d:7 |
    g2 e:m7 |
    a:m7 d:7 |
    %%
    g2 e:m7 |
    a:m7 d:7 |
    g2 e:m7 |
    a:m7 d:7 |
    b:m7 e:m7 |
    a:m7 d:7 |
  }
  aes2:sus aes |
  bes2:sus bes |
  %%
  fis2 dis:m7 |
  gis:m7 cis:7 |
  fis2 dis:m7 |
  gis:m7 cis:7 |
  d2 b:m7 |
  e:m7 a:7 |
  %%
  cis1:7 |
  fis:m |
  cis1:7 |
  fis:m |
  b1:7 |
  e |
  a |
  d |
  g2 e:m7 |
  a:m7 d:7 |
  g2 e:m7 |
  a:m7 d:7 |
  bes2 g:m7 |
  c:m7 f:7 |
  bes2 g:m7 |
  c:m7 f:7 |
  des2 bes:m7 |
  ees:m7 aes:7 |
  des2 bes:m7 |
  ees:m7 aes:7 |
  ees2 c:m7 |
  f:m7 bes:7 |
  %%%%%%
  s1*2 |
  a2 fis:m7 |
  b:m7 e:7 |
  a1 |

}

theWords = \lyricmode {
    Ça va A - pol -- "line ?"
    Mais qu'est-ce que "c'est ?"
    Bon...
    Tu fais la tête comme un hé -- ris -- son.
    Tu ren -- verses ton thé sur le gué -- ri -- don.
    Tu me traites de tous les noms y com -- pris le nom in -- ter -- dit, à sa -- voir

    Con
    Oui
    C'est ce~que~je suis, t'as tou -- jours rai -- son
    Tu cèdes fa -- cile -- ment au dé -- man -- geai -- son
    Quel mé -- pris flag -- rant pour l'aut -- rui
    Et quand je ris
    Je pleure aus -- si

    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"

    Mais qu'est que "c'est ?" "Ça ?"
    Ma mère l'Oye a la gueule de bois
    Elle ne se com -- porte plus comme aut -- re -- fois
    Vers la cu -- vette des toi -- lettes, va la pauvre.
    Moi, je reg -- rette d'a -- voir fais

    Foi
    À
    L'en -- tou -- rage que la fille cô -- toie
    Me par -- donne -- rais -tu si je m'a -- pi -- "toie ?"
    Quelle an -- douille, cet a -- mour qui rouille
    Sois pas mé -- chante
    Nan je plai -- sante

    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"

    Franche -- ment tu m'em -- balles ma fil -- le
    Tes ac -- cords tombent dans ma gril -- le
    Tu me dé -- gonfles les che -- vil -- les
    Tu oc -- cultes le sol qui bril -- le

    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"
    Ça va A - pol -- "line ?"

    Mais qu'est-ce que c'est, m'enfin
    On se quitte le Saint Va -- len -- tin

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