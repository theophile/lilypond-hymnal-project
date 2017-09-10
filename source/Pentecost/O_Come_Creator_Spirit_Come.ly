\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "O Come, Creator Spirit, Come"

Writer = "9th Century Latin Hymn"

Translator = ""

Composer = "Ignaz J. Pleyel, 1815"

Arranger = ""

Tune = "GRACE CHURCH"

Meter = " L.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key f \major
	\tempo 4 = 112
	
}

soprano = {	
	a'4 a' g' f'2 e'4 f'2 g'4 a'2.
	c''4 c'' bes' a'2 g'4 f'2 e'4 f'2.
	g'4 g' a' bes'2 a'4 g'2 fis'4 g'2.
	bes'4 bes' a' d''2 c''4 bes' (a') g' f'2. \bar "|."
}

alto = {
	f'4 f' d' c'2 c'4 c' (b) c' c'2.
	c'4 f' e' f' (e') d' c'2 c'4 c'2.
	e'4 d' d' bes2 ees'4 d'2 d'4 d'2.
	c'4 g' f' f'2 f'4 g'4 (f') e' f'2.
}

tenor = {
	c'4 c' bes a2 g4 f2 e4 f2.
	a4 c' c' c'2 bes4 a2 g8 (bes) a2.
	g4 g fis g (d') c' bes2 a4 bes2.
	g4 c' c' bes2 c'4 d' (c') c'8 (bes) a2.
}

bass = {
	f4 f bes, c2 c4 d2 c4 f,2.
	f4 a g f2 bes,4 c2 c4 f2.
	c4 bes, a, g,2 c4 d2 d4 g,2.
	e4 e f bes,2 a,4 bes, (c) c f2.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        O come, Cre -- a -- tor Spir -- it, come,
	Vouch -- safe to make our minds Thy home
	And with Thy heav'n -- ly grace ful -- fil
	The hearts Thou mad -- est at Thy will.
}

sopWordsTwo = \lyricmode
{
	Thou that are named the Pa -- ra -- clete,
	The Gift of God, His Spir -- it sweet;
	The liv -- ing Foun -- tain, Fire, and Love,
	And gra -- cious unc -- tion from a -- bove.
}

sopWordsThree = \lyricmode
{
	The sev'n -- fold grace Thou dost ex -- pand,
	O Fin -- ger of the Fa -- ther's Hand;
	True pro -- mise of the Fa -- ther, rich
	In gifts of tongues and var -- ious speech.
}

sopWordsFour = \lyricmode
{
	To God the Fa -- ther let us raise
	And to His on -- ly Son, our praise,
	Praise to the Ho -- ly Spir -- it be
	Now, and for all e -- ter -- ni -- ty.
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
