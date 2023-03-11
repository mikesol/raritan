\version "2.24.1"

rh = \relative c' {
    <a b cis e gis>4.
    <a cis dis fis>4.
    <bes d fis a>4.
    <cis fis b>4.
    <e gis cis>4.
    <d fis bes>4.
    <cis fis b>4.
    <d g c>4.
    <b dis fis>4.
    <c e fis bes>4.
    <d fis g>4.
    <des f g c>4.
    <cis f a>4.
    <c e b'>4.
    <cis e gis>4.
    <c ees g>4.
    <b dis fis ais>4.
    <bes d e a>4.
    <e gis cis>4.
    <b' cis dis gis>4.
    <e, fis b dis>4.
    <des fis bes>4.
    << { \voiceOne fes4. ~ fes8 ees4 ~ ees4. ~ ees4 r8 | fes4. ~ fes8 ees4 ~ ees4 r8 b <des fes> <cis fis a> } \new Voice { \voiceTwo <g bes des>4. ~ <g bes des>4. ~ <g bes des>4. ~ <g bes des>4 r8 <g bes des>4. ~ <g bes des>4. ~ <g bes des>4 fis8 ~ fis bes8 b } >>
}

lh = \relative c, {
    <d fis'>4.
    b'4.
    <e, g'>4.
    <a g'>4.
    <fis a'>4.
    <c e'>4.
    <g' a'>4.
    <e gis'>4.
    <a g'>4.
    <d, a''>4.
    <b' a'>4.
    <bes aes'>4.
    <ees, g'>4.
    <d fis'>4.
    <fis a'>4.
    <a f'>4. % this chord was cancelled in the original jpg, but I really like it. the alternative feels too safe - it works in a milder context but here we can take a risk.
    <gis e'>4.
    <g f'>4.
    <fis a'>4.
    <f a'>4.
    <b gis'>4.
    <c, e' g>4.
    ees4. ~ |
    ees8 r ees8 |
    aes8 des a |
    e' g, d' |
    ees,4. ~ |
    ees8 r ees8 |
    aes8 des a |
    e' g, d' |
    ees,4. ~ |
    ees4. |
}

lyr = \lyricmode {
    now I'm fal -- ling down
    I am fal -- ling down
    I am fal -- ling down
    I am fal -- ling down
    I am
    Have you seen her
}

\score {
    <<
        \new Staff = "vox" {
                \clef "treble_8"
                \time 3/8
                \key aes \major
                \new Voice = "vox" \relative c'' { gis4. fis fis e d e d c b a d c b a b a gis fis b a gis fis fes4 fes8 fes8 ees4 }
        }
        \new Lyrics \lyricsto "vox" \lyr
        \new PianoStaff <<
            \new Staff = "upper" {
                \clef "treble"
                \time 3/8
                \key aes \major
                \rh
            }
            \new Staff = "lower" {
                \clef "bass"
                \time 3/8
                \key aes \major
                \lh
            }
        >>
    >>
}