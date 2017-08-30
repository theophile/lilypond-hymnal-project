\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "The King of Love, My Shepherd Is"

Writer = "Henry W. Baker, 1868"

Translator = "Based on Psalm 23"

Composer = "R. H. Williams, 1823"

Arranger = ""

Tune = "DYMUNIAD"

Meter = " 8.7.8.7."

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 23" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key g \minor
	\tempo 4 = 76	
}

soprano = {	
	\partial 4
	g'4 bes' a' g' d'' c'' bes' a' a' bes' c'' d'' c''8 (bes') a'2 g'4 \bar "" \break
	a' bes' bes' c'' c'' d'' d'' c'' d'' bes' a' g' c''8 (bes') a'2 g'4  \bar "|."
}

alto = {
	d'4 d' fis' g' g' fis' g' fis' d' d' f' f' ees'8 (d') d'4 (c') bes
	d'4 d' d' f' f' f' f' f' fis' d' d' bes ees' ees' (d'8 c') bes4
}

tenor = {
	bes4 d' c' bes g d' d' d' fis g a bes8 (a) g4 g (fis) g
	fis! g g a a bes bes a a g fis g g g (fis) g
}

bass = {
	g4 g d g, bes, a, g, d d g f bes, c d2 g,4
	d g g f f8 (ees) d (c) bes,4 f d g d ees c d2 g,4
}

sopWords = \lyricmode
{
	The King of love my Shep -- herd is,
	Whose good -- ness fail -- eth nev -- er;
	I noth -- ing lack if I am His
	And He is mine for -- ev -- er.
}
sopWordsTwo = \lyricmode
{
       	Where streams of liv -- ing wa -- ter flow
	My ran -- somed soul He lead -- eth,
	And, where the ver -- dant pas -- tures grow,
	With food ce -- les -- tial feed -- eth.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
        Per -- verse and fool -- ish oft I stray,
	But yet in love He sought me,
	And on His shoul -- der gent -- ly laid,
	And home, re -- joic -- ing, brought me.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	In death's dark vale I fear no ill
	With Thee, dear Lord, be -- side me;
	Thy rod and staff my com -- fort still,
	Thy Cross be -- fore to guide me.
}
sopWordsFive = \lyricmode
{
	Thou spread'st a ta -- ble in my sight,
	Thy unc -- tion grace be -- stow -- eth,
	And O the trans -- port of de -- light
	with which my cup o'er -- flow -- eth! 
}
sopWordsSix = \lyricmode
{
	And so, through all the length of days
	Thy good -- ness fail -- eth nev -- er:
	Good Shep -- herd, may I sing Thy praise
	With -- in Thy house for -- ev -- er! 
}
sopWordsSeven = \lyricmode
{
 
}
sopWordsEight= \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \new ChordNames \chordmode { \set majorSevenSymbol = "maj7"
	
		}
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
