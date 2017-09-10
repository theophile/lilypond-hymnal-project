\version "2.10.29"

Title = "The King Shall Come When Morning Dawns"

Writer = "John Brownlie, 1859-1925"

Translator = ""

Composer = "Richard Farrant, c. 1530-80"

Arranger = ""

Tune = "FARRANT"

Meter = " C.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key g \major
	\tempo 4 = 90	
}

soprano = {	
	\partial 4 g'4 g'4. a'8 b'4 a' g' c'' a' a' b'8 (cis'') d''4 d'' cis'' d''2. \bar "" \break
	g'4 c'' c'' b' a' g' a' fis' b' e'8 (fis') g'4 g' fis' g'2. \bar "|." 
}

alto = {
	d'4 e'4. fis'8 g'4 fis' e' g' fis' fis' g' fis'8 (g') a'4 a'8 (g') fis'2. \break
	g'4 a' a' g' fis' e' e' d' d' c' b8 (c') d'4 d' d'2.
}

tenor = {
	b4 b4. d'8 d'4 d' b e' d' d' d' d' e' e' d'2. \break
	b4 e'4 d' d' d' b c' a g g g a a b2.
}

bass = {
	g4 e4. d8 g4 d e c d d g b a a d2. \break
	g4 g fis g d e a, d g, c e d d g,2.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        The King shall come when morn -- ing dawns 
	And light tri -- um -- phant breaks, 
	When beau -- ty gilds the east -- ern hills 
	And life to joy a -- wakes.
}

sopWordsTwo = \lyricmode
{
	Not as of old a lit -- tle child, 
	To bear and fight and die, 
	But crowned with glo -- ry like the sun 
	That lights the morn -- ing sky.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Oh, bright -- er than the ris -- ing morn 
	When Christ, vic -- tor -- ious, rose 
	And left the lone -- some place of death 
	Des -- pite the rage of foes.
}

sopWordsFour = \lyricmode
{
	Oh, bright -- er than that glor -- ious morn 
	Shall dawn up -- on our race 
	The day when Christ in splen -- dor comes 
	And we shall see his face.
}

sopWordsFive = \lyricmode
{
	The King shall come when morn -- ing dawns 
	And light and beau -- ty brings.
	Hail, Christ the Lord! Your peo -- ple pray: 
	Come quick -- ly, King of kings.
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
