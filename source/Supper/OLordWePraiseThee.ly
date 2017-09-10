\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "O Lord, We Praise Thee"

Writer = "Martin Luther, 1524"

Translator = ""

Composer = "German Melody, c. 1400"

Arranger = ""

Tune = "GOTT SEI GELOBET"

Meter = " 11.8.11.8.5.9.9.6.7.5."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key c \major
	\tempo 4 = 90
	\autoBeamOff
}

soprano = {	
	g'4 g'8 g' a'4 g' c''8 d'' c'' b' a'4 g' a' c'' g' e' f'8 e' d'[ fis'] g'2
	g'4 g'8 g' a'4 g' c''8 d'' c'' b' a'4 g' a' c'' g' e' f'8 e' d'[ fis'] g'2
	\time 6/4 g'4 g'8 g' a' g'[ fis'4] g'2 
	\time 4/4 g'4 g' a' b' c'' g'8 g' a'4 g' b' c'' d'' d'' \time 6/4 c''8[ b'] a'4 g' g'8[ f'] d'2 
	\time 4/4 e'4 f' g'2 e'4 f' g'2 d'4 f' e' d' e' d' c'2 g'4 g'8 g' a'[ (g'] fis'4) g'1 \bar "|." 
	g'4 (f') e'2 \bar "|."
}

alto = {
	e'4 e'8 e' f'4 e' e'8 g' e' d' d'4 b4 d' c' d' c' c'8 c' d'[ c'] d'2
	e'4 e'8 e' f'4 e' e'8 g' e' d' d'4 b4 d' c' d' c' c'8 c' d'[ c'] d'2
	e'4 e'8 d' e'4 (d') d'2
	e'4 e' fis' g' g' e'8 e' f'4 e' g' g' f' g' g' f' d' e'8[ d'] b2
	c'4 c' d'2 c'4 c' d'2 b4 d' c' b c' b c'2 e'4 e'8 d' e'4 (d') d'1
	d'2 c'2
}

tenor = {
	c'4 c'8 c' c'4 c' g8 g g g fis4 g f e g g a8 g g[ a] b2
	c'4 c'8 c' c'4 c' g8 g g g fis4 g f e g g a8 g g[ a] b2
	c'4 c'8 g c'[ (b] a4) b2
	c'4 b c' d' e' c'8 c' c'4 c' d' c' a b c' c' b c'8[ a] g2
	g4 a b2 g4 a b2 g4 a g g g g e2 c'4 c'8 g c'[ (b] a4) b1
	b2 g
}

bass = {
	c4 c8 c f4 c c8 b, c g, d4 g, d a, b, c f,8 c b,[ d] g,2
	c4 c8 c f4 c c8 b, c g, d4 g, d a, b, c f,8 c b,[ d] g,2
	c4 c8 b, a,4 (d) g,2
	c4 e a g c c8 c f4 c g e d g e f g c8[ d] g,2
	c4 a, g,2 c4 a, g,2 g4 d e g c g, c2 c4 c8 b, a,4 (d) g,1
	g,2 c
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

dropLyrics =
{
    \override LyricText #'extra-offset = #'(0 . -8)
    \override LyricHyphen #'extra-offset = #'(0 . -8)
    \override LyricExtender #'extra-offset = #'(0 . -8)
}

raiseLyrics =
{
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	O Lord, we praise Thee, bless Thee, and a -- dore Thee,
        In thanks -- giv -- ing bow be -- fore Thee.
        Thou with Thy bod -- y and Thy blood didst nour -- ish
        Our weak souls that they may flour -- ish:
        O Lord, have mer -- cy!
        May Thy bo -- dy, Lord, born of Ma -- ry,
        That our sins and sor -- rows did car -- ry,
        And Thy blood for us plead
        In all tri -- al, fear, and need:
        O Lord, have mer -- cy!
}
sopWordsTwo = \lyricmode
{
	Thy ho -- ly bod -- y in -- to death was giv -- en,
        Life to win for us in heav -- en.
        No great -- er love than this to Thee could bind us;
        May this feast there -- of re -- mind us!
        O Lord, have mer -- cy!
        Lord, Thy kind -- ness did so con -- strain Thee
        That Thy blood should bless and sus -- tain me.
        All our debt Thou hast paid;
        Peace with God once more is made:
        O Lord, have mer -- cy.
	A -- men!
}
sopWordsThree = \lyricmode
{
	May God be -- stow on us His grace and fa -- vor
        To please Him with our be -- hav -- ior
        And live as breth -- ren here in love and u -- nion
        Nor re -- pent this blest Com -- mu -- nion!
        O Lord, have mer -- cy!
        Let not Thy good Spir -- it for -- sake us;
        Grant that heav'n -- ly -- mind -- ed He make us;
        Give Thy Church, Lord, to see
        Days of peace and u -- ni -- ty:
        O Lord, have mer -- cy!
}
sopWordsFour = \lyricmode
{
 
}
sopWordsFive = \lyricmode
{
 
}
sopWordsSix = \lyricmode
{
 
}
sopWordsSeven = \lyricmode
{
 
}

sopWordsEight = \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \include "insertchords.ly"
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \soprano }
      \context Voice = "two" { \global \voiceTwo \alto }
    >>

	\include "lyrics-midstaff.ly"

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree \tenor }
      \context Voice = "two" { \global \voiceFour \bass }
    >>
	
	\include "lyrics-understaff.ly"

  >>
	
\include "standard-layout.ly"
\include "tag.ly"
