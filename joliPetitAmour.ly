\version "2.24.0"

\include "LilyJAZZ.ily"
#(set-global-staff-size 19)

\header {
  title = \markup \override #'(font-name . "LilyJAZZ Text") "C'était un joli petit amour"
  composer = \markup \override #'(font-name . "LilyJAZZ Text") "Mike SOLOMON"
  poet = \markup \override #'(font-name . "LilyJAZZ Text") "Paul FOURNEL"
% tagline = \markup {
%   \pad-to-box #'(0 . 0) #'(0 . 3)
%   {  \with-url

%     "http://lilypond.org/"
%     \override #'(font-name . "LilyJAZZ Text") \line {

%       %% 2014 = em dash.

%       #(format #f "Music engraving by LilyPond ~a~awww.lilypond.org"
%          (lilypond-version)
%          (ly:wide-char->utf-8 #x2014)
%          )
%     }
%   }
% }

}

\paper {
  %ragged-last-bottom = ##f
  system-system-spacing = #'((basic-distance . 20))
  markup-markup-spacing = #'((basic-distance . 10))
}

railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph "scripts.caesura.straight"
  \breathe
}

melodyRefrain = \relative c' {
  \tempo "Carnaval brésilien"
  %\autoBeamOff
  \key fis \minor
  \time 4/4
  % \jazzOn
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
  s1 |
  s1 |
  gis2:5-m7
  cis2:7
  fis1:m
  gis2:5-m7
  cis2:7
  fis1:m
  b2:m
  e:13
  a2:maj7
  a2:6
  gis2:5-m7
  cis2:7
  fis1:m
}

\markup \override #'(font-name . "LilyJAZZ Text") \override #'(font-size . 3) "Refrain"

\score {
  <<
    \new ChordNames { \guitarRefrain }
    \new Staff \new Voice = "melody" { \melodyRefrain }
    \new Lyrics \lyricsto "melody" { \textRefrain }
  >>
}

\markup \override #'(font-name . "LilyJAZZ Text") \override #'(font-size . 3) "1er verre"

melodyVA = \relative c'' {
  \tempo "Carnaval"
  %\autoBeamOff
  \key b \minor
  \time 4/4
  % \jazzOn
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
  cis:5-m7
  fis:7.10-
  a:m7
  d:7
  g:maj7
  cis4:5-m7
  fis:7
  b1:m7
}

\score {
  <<
    \new ChordNames { \guitarVA }
    \new Staff \new Voice = "melody" { \melodyVA }
    \new Lyrics \lyricsto "melody" { \textVA } 
  >>
}

\markup \override #'(font-name . "LilyJAZZ Text") \override #'(font-size . 3) "(Refrain)"

\markup \override #'(font-name . "LilyJAZZ Text") \override #'(font-size . 3) "2nd vert"

melodyVB = \relative c'' {
  \tempo "Carnaval"
  %\autoBeamOff
  \key b \minor
  \time 4/4
  % \jazzOn
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
  cis:5-m7
  fis:7.10-
  a:m7
  d:7
  g:maj7
  cis4:5-m7
  fis:7
  b1:m7
}

\score {
  <<
    \new ChordNames { \guitarVB }
    \new Staff \new Voice = "melody" { \melodyVB }
    \new Lyrics \lyricsto "melody" { \textVB } 
  >>
}

\markup \override #'(font-name . "LilyJAZZ Text") \override #'(font-size . 3) "(Refrain)"

\markup \override #'(font-name . "LilyJAZZ Text") \override #'(font-size . 3) "3ème ver - plu cour"

melodyVC = \relative c'' {
  \tempo "Carnaval"
  %\autoBeamOff
  \key b \minor
  \time 4/4
  % \jazzOn
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
  cis:5-m7
  fis:7.10-
  a:m7
  d:7
  g:maj7
  cis4:5-m7
  fis:7
  b1:m7
}

\score {
  <<
    \new ChordNames { \guitarVC }
    \new Staff \new Voice = "melody" { \melodyVC }
    \new Lyrics \lyricsto "melody" { \textVC } 
  >>
}

\markup \override #'(font-name . "LilyJAZZ Text") \override #'(font-size . 3) "(Refrain ad lib.)"

\layout {
  \context {
    \Voice
    \override Tie.thickness = #3.0
    \override Flag.X-offset = #(lambda (grob) (+ 0.16 (ly:flag::calc-x-offset grob)))
  }
}