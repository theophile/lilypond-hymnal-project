\version "2.10.29"

\paper
{
	page-count = 1
}

Title = \markup{Help, \smallCaps{Lord,} Your Law the Godly Cease to Savor}

Writer = "Douglas Wilson, 2000"

Translator = "Based on Psalm 12"

Composer = "Genevan Psalter, 1661"

Arranger = "Harm. Clause Goudimel, 1564; alt."

Tune = "DONNE SECOURS, SEIGNEUR"

Meter = " 11.10.11.10"

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 12" }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key c \major
	\tempo 2 = 72
}

barspace = #(define-music-function (parser location extent) (pair?) #{
   \once \override Staff.Clef #'extra-spacing-width = #$extent
#})

soprano = {	
	\cadenzaOn
	\barspace #'(0 . 4) 
	a'2 f'4 g' a'2 c'' a'4 f' g' f' e'2 d'2. \oneVoice r4 \voiceOne \bar "" \break
	a'2 a'4 g' a'2 d'' a'4 d'' c''2 b' a'2. \oneVoice r4 \voiceOne \bar "" \break
	d'2 f'4 f' e'2 d' a'4 a' g' e' f'2 e'2. \oneVoice r4 \voiceOne \bar "" \break
	a'2 c''4 a' f'2 g' a'4 d' f'2 e' d'1 \bar "|."
}

alto = {
	d'2 d'4 e' f'2 g' f'4 d' e' d'2 cis'4 d'2. s4
	f'2 e'4 e' fis'2 a' a'4 a' a'2 gis' a'2. s4
	a2 d'4 d' cis'!2 a f'4 f' e' e' d'2 cis'!2. s4
	e'2 e'4 e' d'2 e' f'4 a f' (d'2) cis'!4 d'1
}

tenor = {
	a2 a4 c' c'2 e' d'4 a c' a a2 a2. \oneVoice r4 \voiceOne
	d'2 c'4 b d'2 f'! c'4 f' e'2 e'4 (d') cis'!2. \oneVoice r4 \voiceOne
	f2 a4 a a2 f d'4 c' c' c' a2 a2. \oneVoice r4 \voiceOne
	c'2 a4 c' a2 c' c'4 a a2 a a1
}

bass = {
	d2 d4 c f2 c d4 d c d a,2 d2. s4
	d2 a,4 e d2 d f4 d a2 e a,2. s4
	d2 d4 d a,2 d d4 f c c d2 a,2. s4
	a,2 a,4 a, d2 c f4 f d2 a, d1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	Help, \markup { \smallCaps "Lord," } Your law the god -- ly cease to sa -- vor, 
	The faith -- ful fail a -- mong the sons of men.
	Men all speak van -- i -- ties, each to his neigh -- bor,
	With flat -- t'ring lips and dou -- ble hearts they sin.
}
sopWordsTwo = \lyricmode
{
        The \markup { \smallCaps "Lord" } will judge all tongues that love to flat -- ter,
	And He will sev -- er ev -- ery pride -- ful lip.
	Judge those who think to tri -- umph through their chat -- ter,
	Who say they have no lord and can -- not slip.
}
sopWordsThree = \lyricmode
{
	The poor are pressed and strug -- gle in their sigh -- ing.
	Our \markup { \smallCaps "Lord" } will rise and bring them safe -- ly through.
	The wick -- ed press and crowd; the poor are cry -- ing.
	Our \markup { \smallCaps "Lord" } will save; His prom -- is -- es are true.
}
sopWordsFour = \lyricmode
{
	The words of God are pure, like sil -- ver test -- ed,
	Re -- fined in fire and test -- ed sev -- en -- fold.
	You keep Your saints, they can -- not be mo -- lest -- ed.
	The wick -- ed strut when god -- li -- ness grows old.
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
