\version "2.10.29"

Title = "When Earth With All its Joys Defeats Me"

Writer = "Dorothe Engelbretsdotter, 1678"

Translator = ""

Composer = "Georg Neumark, 1657"

Arranger = ""

Tune = "NEUMARK"

Meter = " 9.8.9.8.8.8.8."

\include "header.ly"

global = {
	%\override Staff.TimeSignature #'stencil = ##f
	%\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key g \minor	
	\tempo 4 = 100
}

soprano = {	
	\partial 4 d'4 g' a' bes' a' g' a' fis' d'~ d' f' f' ees' d' g' g' fis' g'2. \bar "" \break
	d'4 g' a' bes' a' g' a' fis' d'~ d' f' f' ees' d' g' g' fis' g'2. \bar "" \break
	a'4 bes' c'' d'' d'' c'' c'' bes' d'' c'' bes' a' g'8 (a') bes'4 a' g' \fermata \bar "|."
}

alto = {
	bes4 d' d' d' d' ees' ees' d' d'~ d' d' c' c' a d' ees' d' d'2.
	bes4 d' d' d' d' ees' ees' d' d'~ d' d' c' c' c' d' ees' d' d'2.
	d'4 d' f' f' f' g' f' d' d' ees' d' c'8 (d') ees'4 d'4. c'8 bes4
}

tenor = {
	g4 g fis g a bes c' a fis~ fis bes a g fis g c' a bes2.
	g4 g fis g a bes c' a fis~ fis bes a g fis g c' a bes2.
	fis4 g a bes bes bes a bes g g g g g g fis g \fermata
}

bass = {
	g,4 bes, d g f ees c d d~ d bes, f c d bes, c d g,2.
	d8 (c) bes,4 d g f ees c d d~ d bes, f c d bes, c d g,2.
	d4 g f bes, d ees f bes, bes, c d ees8 (d) c4 d d g,
}

sopWords = \lyricmode
{
	When earth with all its joys de -- feats me 
	And for -- tune smiles at me no more,
	The cross be -- fore me turns to greet me 
	And sees in -- to my heart of woe.
	No bet -- ter coun -- sel can I take 
	Than flee to Je -- sus for His sake.
}
sopWordsTwo = \lyricmode
{
	There -- fore, my thoughts have turned to sing -- ing 
	Hymns to the high -- est heav'n a -- bove.
	Praise to the Lord of life is ring -- ing, 
	Fill -- ing my mouth with songs of love.
	When life with -- in me fails and dies, 
	My long -- ings turn to pa -- ra -- dise.
}
sopWordsThree = \lyricmode
{
	My suff -- 'ring here is brief and fleet -- ing, 
	Com -- pared to heav -- en's peace and joy.
	Here I am lost in pain and weep -- ing, 
	Filled with com -- plaints and bit -- ter sighs.
	In heav'n my song with praise will ring, 
	When with the an -- gel choirs I sing
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
