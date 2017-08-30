\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "O Lord, My God, Most Earnestly"

Writer = "Psalter, 1912"

Translator = "Based on Psalm 63"

Composer = "Thomas Tallis, 1567"

Arranger = ""

Tune = "THIRD MODE MELODY"

Meter = " C.M.D."

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 63" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key bes \major
    	\cadenzaOn
	\tempo 4 = 92
	\autoBeamOff
}

soprano = {
	d'4 f' f' f'2. f'4 g' g' a'2 a'4 a'2 a'4 a' bes' a'2. \bar "|"
	d'4 a' a' a'2. f'4 g' g' a'2 a'4 a'2 a'4 bes' g' a'2. \bar "|"
	a'4 a'4. bes'8 (c''4) d''2 c''4 bes' bes' a'2 f'4 g'2 d'4 ees' ees' d'2. \bar "|"
	g'4 bes'4. a'8 (g'4) f'2 d'4 g'4. f'8 (ees'4) d' f' ees' c' d' d' d'2. \bar "|."
}

alto = {
	d'4 d' d' d'2. d'4 bes c' a2 d'4 d'2 cis'4 d' d' d'2.
	d'4 d' d' d'2. d'4 d' c' a2 d'4 d'2 d'4 d' bes d'2.
	d'4 d' f' (ees') d'2 f'4 d' d' d'2 d'4 d'2 d'4 d' c' bes2.
	bes4 bes2 bes4 bes2 bes4 bes2 bes4 bes bes bes c' bes bes a2.
}

tenor = {
	f4 a a a2. a4 g g fis2 fis 4 fis2 e4 fis g fis2.
	f4 f f f2. a4 g g fis2 fis4 fis2 fis4 g g fis2.
	f4 f4. g8 (a4) bes2 a4 g g f2 a4 bes2 g4 g g g2.
	d4 g4. f8 (ees4) d2 f4 bes4. a8 (g4) f4 d g g g d8[ e] fis2.
}

bass = {
	d4 d d d2. f4 ees ees d2 d4 d2 a,4 d g, d2.
	d4 d d d2. f4 ees ees d2 d4 d2 d4 g, g, d2.
	d4 d2 c4 bes,2 f,4 g, g, d2 d4 g,2 bes,4 c c g,2.
	g,4 g,2 g,4 bes,2 bes,4 g, <ees, ees>2 bes,4 bes, <ees, ees> <ees, ees> g, g, d2.
}

descant = {
	\set Staff.midiInstrument = #"trombone"
	r4 r4 r4 d8[ e f g] a4 a bes ees' d'8[ a16 a] a4~ a r4 d' cis' d'8[ cis'] bes[ cis'] d'16[ c'] d'8~ d'2
	r4 r4 r4 r4 d'8[ e'] f'4 d' d' ees' fis'2 d4 d4. (e8) fis4 g2 a2.
	r4 r4 r4 r4 f2 f4 g2 a2 a4 g4. (a8) bes4 c'2 bes2.
	r4 r4 r4 g8[ a] bes4 bes8[ c'] d'4 ees'4. d'8 bes8[ c'] bes2 bes4 c' d'8[ ees'16 f'] g'4 a'2.
}	


sopWords = \lyricmode
{
	O Lord, my God, most earn -- est -- ly
	My heart would seek Thy face,
	With -- in Thy ho -- ly house once more
	To see Thy glor -- ious grace.

	A -- part from Thee I long and thirst,
	And naught can sat -- is -- fy;
	I wan -- der in a des -- ert land
	Where all the streams are dry.
}
sopWordsTwo = \lyricmode
{
        The lov -- ing -- kind -- ness of my God
	Is more than life to me;
	So I will bless Thee while I live
	And lift my prayer to Thee.

	In Thee my soul is sat -- is -- fied,
	My dark -- ness turns to light;
	And joy -- ful med -- i -- ta -- tions fill
	The wat -- ches of the night.
}
sopWordsThree = \lyricmode
{
	My Sav -- ior, 'neath Thy shelt -- 'ring wings
	My soul de -- lights to dwell;
	Still clos -- er to Thy side I press,
	For near Thee all is well.

	My en -- e -- mies shall be des -- troyed
	To earth's dark depths they go;
	But to the Lord His peo -- ple sing;
	Death He has o -- ver -- thrown.
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
    \context Staff = "descant" <<

      \clef bass
      \context Voice = "one" { \global \descant }
    >>

    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \soprano }
      \context Voice = "two" { \global \voiceTwo \alto }
    >>

%	\include "lyrics-midstaff.ly"

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree \tenor }
      \context Voice = "two" { \global \voiceFour \bass }
    >>
	
%	\include "lyrics-understaff.ly"

  >>
	
\include "standard-layout.ly"
\include "tag.ly"
