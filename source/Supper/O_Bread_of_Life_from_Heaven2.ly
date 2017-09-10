\version "2.10.29"

Title = "O Bread of Life from Heaven"

Writer = "Latin Hymn, 1661"

Translator = ""

Composer = "Heinrich Isaac, 1450-1517"

Arranger = ""

Tune = "O WELT, ICH MUSS DICH LASSEN"

Meter = " 7.7.6.7.7.8"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	%\override Staff.TimeSignature #'style = #'()
	%#(set-accidental-style 'modern-cautionary)
  	%\override Staff.TimeSignature #'transparent = ##t
	\time 4/4
	\key f \major
	\tempo 4 = 86	
}

soprano = \relative c {	
	\partial4
	a''4 |
  % 2
  f g a8 (bes) c4 |
  % 3
  bes2 a4 a8 (bes) |
  % 4
  c4 c g a |
  % 5
  f2 e4 c |
  % 6
  f g a a |
  % 7
  g2. a4 |
  % 8
  f g a8 (bes) c4 |
  % 9
  bes2 a4 a8 (bes) |
  % 10
  c4 c g a |
  % 11
  f2 e4 c |
  % 12
  f g a bes |
  % 13
  a g f2 |
  % 14

\bar "|." 
}

alto = \relative c {
	f'4 |
  % 2
  d e f8 g a4 |
  % 3
  a (g) f f |
  % 4
  f8 e f d e d c4 |
  % 5
  c b c g |
  % 6
  c bes a8 bes c4 |
  % 7
  c2. e4 |
  % 8
  d c c d |
  % 9
  d8 c d e fis4 f |
  % 10
  g f8 e d4 e |
  % 11
  e (d) cis c |
  % 12
  c8 d c bes a c d e |
  % 13
  f4 e c2 |
  % 14
}

tenor = \relative c {
	c'4 |
  % 2
  bes bes c8 bes a g |
  % 3
  f4 (c') c d |
  % 4
  c c c e, |
  % 5
  f8 (e f4) g e8 d |
  % 6
  c4 d8 e f4 f |
  % 7
  e2. a4 |
  % 8
  a8 bes a g f g a4 |
  % 9
  g8 (a bes c) d4 d |
  % 10
  c8 bes a4 b e, |
  % 11
  a2 a4 a |
  % 12
  a8 bes a g f4 f |
  % 13
  d' g,8 (a16 bes) a2 |
  % 14
}

bass = \relative c {
	f4 |
  % 2
  bes8 a g4 f4. e8 |
  % 3
  d4 (e) f d |
  % 4
  a8 g a bes c bes a4 |
  % 5
  d2 c4 bes |
  % 6
  a g f8 g a bes |
  % 7
  c2. cis4 |
  % 8
  d e f fis |
  % 9
  g g, d' d |
  % 10
  e f f8 e d cis |
  % 11
  d e f g a4 a, |
  % 12
  d e f8 e d c |
  % 13
  bes4 c <f f, >2 |
  % 14
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
       	O Bread of life from Heav -- en,
	O Food to pil -- grims giv -- en,
	O Man -- na from a -- bove:
	Feed with the bless -- èd sweet -- ness
	Of Your div -- ine com -- plete -- ness
	The souls that want and need Your love.
}

sopWordsTwo = \lyricmode
{
	O Fount of grace re -- deem -- ing,
	O Riv -- er ev -- er stream -- ing,
	From Je -- sus’ wound -- ed side:
	Come now, Your love be -- stow -- ing
	On thirst -- ing souls, and flow -- ing
	Till all are ful -- ly sat -- is -- fied.
}

sopWordsThree = \lyricmode
{
	We love You, Je -- sus, ten -- der,
	In all Your hid -- den splen -- dor
	With -- in these means of grace.
	Oh, let the veil be riv -- en,
	And our clear eye in Heav -- en
	Be -- hold Your glo -- ry face to face.
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
