\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = \markup{O \smallCaps{Lord,} Our King Rejoices}

Writer = "Douglas Wilson, 2001"

Translator = "Based on Psalm 21"

Composer = "Heinrich Schütz, 1661"

Arranger = ""

Tune = "HOCH FREUET SICH DER KÖNIG"

Meter = " 7.6.7.6.7.7.6."

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 21" }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key f \major
	\tempo 2 = 92
}

soprano = {	
	\time 12/4 \partial 4
	a'4 f'2 g'4 a'2 bes'4 c''2. g'2 \bar "" \breathe
	c''4 bes'2 a'4 g' g'2 f'2.~ f'2 \bar "" \breathe
	c'4 d'2 e'4 f'2 g'4 a'2. e'2 \bar "" \breathe
	a'4 g'2 f'4 e' e'2 d'2.~ d'2 \bar "" \breathe
	a'4 g'2 f'4 g'2 a'4 bes'2. g'2 \bar "" \breathe
	g'4 f'2 e'4 f'2 g'4 a'2. f'2 \bar "" \breathe
	c''4 d''2 c''4 bes'4 g'2 f'2.~ f'2 \bar "|."
}

alto = {
	c'4 c'2 c'4 c'2 f'4 e'2. e'2
	f'4 bes2 c'4 d' c'2 c'2.~ c'2
	a4 a2 a4 a2 d'4 cis'2. cis'2
	d'4 g2 a4 bes a2 a2.~ a2
	a4 c'2 a4 c'2 c'4 d'2. c'2
	c'4 a2 a4 a2 c'4 c'2. c'2
	f'4 f'2 f'4 d' c'2 c'2.~ c'2
}

tenor = {
	f4 a2 g4 f2 f4 g2. c'2
	a4 g2 f4 f e2 f2.~ f2
	f4 f2 e4 d2 d4 e2. a2
	f4 e2 d4 d cis2 d2.~ d2
	c4 e2 d4 e2 f4 f2. e2
	e4 d2 cis4 d2 e4 f2. a2
	a4 bes2 f4 f e2 f2.~ f2
}

bass = {
	f4 f2 e4 f2 d4 c2. c2
	f,4 g,2 a,4 bes, c2 f,2.~ f,2
	f4 d2 cis4 d2 bes,4 a,2. a,2
	<d, d>4 <e, e>2 f,4 g, a,2 <d, d>2.~ <d, d>2
	f,4 c2 d4 c2 f,4 bes,2. c2
	c4 d2 a,4 d2 c4 f2. f2
	f4 bes,2 a,4 bes, c2 f,2.~ f,2
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	O \markup { \smallCaps "Lord," } our king re -- joic -- es 
	Be -- cause Your strength is great,
	And in sal -- va -- tion, voic -- es
	Shall Your great strength re -- late.
	In good -- ness he is plant -- ed,
	What he de -- sired You grant -- ed;
	You gave a crown of gold.
}
sopWordsTwo = \lyricmode
{
        He asked for life, You gave it.
	He prayed for length of days,
	His glo -- ry stands, You save it
	In ma -- jes -- ty and praise.
	You blessed Your king for -- ev -- er
	And shall for -- sake him nev -- er,
	His glad -- ness now as -- cends.
}
sopWordsThree = \lyricmode
{
	Our king in God has trust -- ed,
	Your mer -- cy holds him fast.
	His en -- e -- mies have lust -- ed
	For blood— their hour is past.
	You take them with great burn -- ing,
	Your wrath is here re -- turn -- ing
	And You de -- stroy them all.
}
sopWordsFour = \lyricmode
{
	Their fruit shall all be ta -- ken,
	You shall de -- stroy their seed.
	The arm they sought is sha -- ken,
	Your wrath is wrath in -- deed.
	They turn to flee Your ar -- rows,
	And face e -- ter -- nal sor -- rows,
	We sing Your strength, O God.
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
