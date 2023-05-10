\version "2.24.1"

melody = \relative c' {
    \repeat segno 2 {
        \repeat volta 2 {
          d4 d d |
          d2 bes4 |
          c4 d8 d4. |
          r2 r8 ees,8 |
          d'4 d d |
          d c bes |
          c4^\< d8 ees4. |
          d2^\> c4 |
          \codaMark \default
          b8 a b a b a |
          b4. a4 r8 |
          g4 ( b ) d |
          g2 fis4 |
          \alternative {
            \volta 1 {
              e2. |
              R |
              R |
            }
            \volta 2 {
              f2. |
              R |
            }
          }
        }
      %%
      d2. ~ |
      d2 b4 |
      d4 c8 c4. |
      R2. |
      a'4. ( fis |
      d ) a |
      c4 b8 b4. |
      R2. |
      b2. |
      d |
      g ~ |
      g |
      R |
    }
  %%
  \section
  \sectionLabel "Coda"
  b,8 a b a b a |
  b4. g |
  c8 b c b c b |
  c4. a |
  d8 c d c d c |
  d4. b |
  e8 d e d e d |
  e4. c |
  d2. |
  g |
  d |
  a'
  g |
  R |
  c, ~ |
  c2 a4 |
  c4 b8 b4. |
  R2. |
  g'4. ( ees  |
  c ) a |
  c4 b8 b4. |
  R2. |
  c |
  d |
  g ~ |
  g2 r4 |
  R2. |
}

lyr = \lyricmode {
    <<
    {
      Mal -- sha -- pen face from in -- breed -- ing.
      Your pup -- py dog eyes are un -- com -- mon -- ly wide,
      And no -- bo -- dy will ev -- er love you more than I do
    }
    \new Lyrics {
      \set associatedVoice = "vox"
      Mal -- sha -- pen breast from breast -- feed -- ing.
      A wet nurse for cash and you blew your whole stash,
      Now no -- bo -- dy will ev -- er love you more than I do
    }
    \new Lyrics {
      \set associatedVoice = "vox"
      Mal -- sha -- pen heart from mis -- lead -- ing.
      You lie and you lie and you bare -- ly get by,
      Now
    }
    >>
    now.
    now.
    I am leav -- ing you.
    I am leav -- ing you.
    But you'll stay.

    no -- bo -- dy will ev -- er love you,
    No -- bo -- dy will ev -- er need you,
    No -- bo -- dy will ev -- er hold you,
    No -- bo -- dy will ev -- er feed you,
    More than I do now.

    You are beau -- ti -- ful.
    You are beau -- ti -- ful.
    You are mine.
}

rh = \relative c' {
    <f g bes>2. ~ |
    <f g bes>2 r4 |
    <c d f a>2. ~ |
    <c d f a>2 r4 |
    <f g bes>2. ~ |
    <f g bes> |
    << \new Voice { \voiceOne
      bes2. |
      a2 r4 |
      <c, fis b>2. ~ |
      <c fis b>2 r4 |
    }  \new Voice { \voiceTwo
      <ees g>2. ~ |
      <ees g>2 r4 |
      e2. |
      ees2 r4 |
    } >>
    <b d fis a>2. ~ |
    <b d fis a>2 r4 |
    << \new Voice { \voiceOne
      g'2. ~ |
      g2. ~ |
      g2 r4 |
    }  \new Voice { \voiceTwo
      <b, d>2. ~ |
      <b d>2. |
      <a cis>2 r4 |
    } >>
    r4 <c d f a> q |
    r4 <c e f a> q |
    r <b d f a> q |
    r <b d f gis> q |
    r <c e g a> q |
    r q ~ q-.
    r2 <c ees fis a>4 |
    r <c e? fis a> q |
    r <b d fis a> q |
    r q r |
    r2 q4|
    r q q |
    r <b d fis g>2 ~ |
    q2 r4 |
    <c e g b>2 r4 |
    <c e g b>2. ~ |
    q2 r4 |
    <c ees g a>2. ~ |
    q2 r4 |
    <b d fis a>2. ~ |
    q2 r4 |
    <bes cis e fis a>2. ~ |
    q2 r4 |
    <b d g a>2. ~ |
    q |
    <c ees fis a>2. ~ |
    q |
    r4 <b d fis a> q |
    r4 q q |
    r4 <c e g a> q |
    r4 <c ees g a> q |
    r4 <b d fis a> q |
    r4 q q |
    r4 <c ees g a> q |
    r4 <c ees g a> q |
    r4 <b d fis a> q |
    r4 q q |
    r4 <c e g a>2 |
    r4 <c ees fis a>2 |
    \mark \markup { \italic "rallentando" }
    r4 d\laissezVibrer b'\laissezVibrer fis\laissezVibrer cis\laissezVibrer e\laissezVibrer b\laissezVibrer a\laissezVibrer gis'\laissezVibrer |
}

lh = \relative c {
    ees2. ~ |
    ees2 r4 |
    bes2. ~ |
    bes2 r4 |
    ees2. ~ |
    ees2 d4 |
    c2. |
    a2 r4 |
    d2. ~ |
    d2 r4 |
    g,2. ~ |
    g2 r4 |
    e'2. ~ |
    e |
    a,2 r4 |
    d2. |
    d |
    b |
    e |
    a, |
    a4 b c-. |
    r4 a2 |
    d2. |
    g, |
    g4 a b-. |
    r4 g2 |
    fis2. |
    e2. ~ |
    e2 r4 |
    a2 r4 |
    d2. |
    d, |
    d' |
    d, |
    d' |
    d, |
    d' |
    d, |
    d' |
    d, |
    d' |
    d,4 e fis |
    g2. |
    g4 a b |
    c2. ~ |
    c2 r4 |
    g2. |
    g4 a b |
    c2. |
    d2 r4 |
    g,2. |
    g4 a b |
    a2. |
    d |
    g,2. ~ |
    g ~ |
    g |
}
\book {
  \header {
    % The following fields are centered
    % dedication = "Dedication"
    title = "Nobody Will Ever Love You"
    subtitle = "More than I do Now"
    % subsubtitle = "Subsubtitle"

    % The following fields are evenly spread on one line;
    % the field "instrument" also appears on following pages
    % instrument = \markup \with-color #green "Instrument"
    % poet = "Poet"
    composer = "Mike Solomon"

    % The following fields are placed at opposite ends
    %of the same line
    % meter = "Meter"
    % arranger = "Arranger"

    % The following fields are centered at the bottom
    % tagline = "The tagline goes at the bottom of the last page"
    % copyright = "The copyright goes at the bottom of the first page"
  }
  \score {
      <<
          \new Staff = "vox" {
                  \clef "treble_8"
                  \time 3/4
                  \key g \major
                  \new Voice = "vox" \melody \bar "|."
          }
          \new Lyrics \lyricsto "vox" \lyr
          \new PianoStaff <<
              \new Staff = "upper" {
                  \clef "treble"
                  \time 3/4
                  \key g \major
                  \rh
              }
              \new Staff = "lower" {
                  \clef "bass"
                  \time 3/4
                  \key g \major
                  \lh
              }
          >>
      >>
  }
}