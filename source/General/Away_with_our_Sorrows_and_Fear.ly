\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Away With Our Sorrow and Fear!"

Writer = "Charles Wesley, 1746"

Translator = ""

Composer = "Thomas A. Arne, 1755"

Arranger = ""

Tune = "UXBRIDGE"

Meter = " 8.8.8.8.D"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key d \major
	\tempo 4 = 112
}

soprano = \relative c'' {
	\autoBeamOff
	\partial 4
	a4 |
	fis4. e8 d4 |
	d'4. cis8 b4 |
	b(  a)   a8[( g)] |
	fis4. g8 a4 |
	b4  d8[( b)]  a[( fis)] |
	fis4( e)

	a4 |
	fis4. e8 d4 |
%8
	d'4. cis8 b4 |
	cis2
	d4 |
	e4 a, d |
	cis4. d8 b4 |
	a2 \bar "||" \break

	a4 |
	a4. g8 fis4 |
	a4. b8 c4 |
	b2

	b4 |
%16
	gis4. fis8 e4 |
	b'4. cis8 d4 |
	cis2

	a4 |
	fis4. e8 d4 |
	c'4. b8 a4 |
	b2

	cis4 |
	d d, g |
	fis4. g8 e4 |
	d2 \bar "|."
}

alto = \relative c' {
	d4 |
	d4. cis8 d4 |
	d4. d8 d4 |
	d2

	e4 |
	d4. d8 d4 |
	d4 d d |
	d ( cis)

	e |
	d4. cis8 d4 | %8
	e e e |
	e2
	a4 |
	a a fis |
	e fis d |
	cis2

	e4 |
	fis4. d8 d4 |
	d4. d8 d4 |
	d2

	fis4|	   %16
	e4. dis8 e4 |
	e4. e8 e4 |
	e2

	e4 |
	d4. cis8 d4 |
	d4. d8 d4 |
	d2
	g4 |
	fis d d |
	d4. e8 cis4 |
	d2
}

tenor = \relative c {
	fis4 |
	a4. g8 fis4 |
	b4. a8 g4 |
	g ( fis)
	a |
	a4. b8 fis4 |
	g4 g fis |
	a2

	a4 |
	a4. g8 a4 | %8
	b a gis |
	a2

	a4 |
	a a a |
	a a gis |
	a2

	a4 |
	a4. b8 a4 |
	fis4. g8 a4 |
	g2

	b4 |    %16
	b4. a8 gis4 |
	gis4. a8 b4 |
	a2

	a4 |
	a4. g8 fis4 |
	a4. g8 fis4 |
	g2

	a4 |
	a a b |
	a b g |
	fis2
}

bass = \relative c {
	d4 |
	d4. d8 d4 |
	g,4. a8 b[ (cis)] |
	d2

	cis4 |
	d4. d8 d4 |
	g b, d |
	a2

	cis4 |
	d4. e8 fis4 | %8
	gis a e |
	a2

	fis4 |
	cis cis d |
	e d e |
	a,2

	cis4 |
	d4. d8 d4 |
	d4. d8 d4 |
	g2

	dis4 | %16
	e4. e8 e4 | 
	e4. e8 e4 |
	a2

	cis,4 |
	d4. d8 d4 |
	d4. d8 d4 |
	g2

	e4 |
	d fis, g |
	a g a |
	d2
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
	A -- way with our sor -- row and fear!
	We soon shall re -- co -- ver our home,
	The ci -- ty of saints shall ap -- pear
	The day of e -- ter -- ni -- ty come:
	From earth we shall quick -- ly re -- move,
	And mount to our na -- tive a -- bode,
	The house of our Fa -- ther a -- bove,
	The pa -- lace of an -- gels and God.
}
sopWordsTwo = \lyricmode
{
        Our mourn -- ing is all at an end,
	When, raised by the life -- gi -- ving word,
	We see the new ci -- ty de -- scend,
	A -- dorned as a bride for her Lord;
	The ci -- ty so ho -- ly and clean,
	No sor -- row can breathe in the air;
	No gloom of af -- flic -- tion or sin,
	No sha -- dow of e -- vil is there.
}
sopWordsThree = \lyricmode
{
	By faith we al -- rea -- dy be -- hold
	That love -- ly Je -- ru -- sa -- lem here:
	Her walls are of jas -- per and gold,
	As cry -- stal her build -- ings are clear:
	Im -- mov -- ab -- ly found -- ed in grace,
	She stands as she e -- ver hath stood,
	And bright -- ly her Build -- er dis -- plays,
	And flames with the glo -- ry of God.
}
sopWordsFour = \lyricmode
{
	No need of the sun in that day,
	Which ne -- ver is fol -- lowed by night,
	Where Je -- sus's _ beau -- ties dis -- play
	A pure and a per -- ma -- nent light:
	The Lamb is their light ands their Sun,
	And lo, by re -- flec -- tion they shine,
	With Je -- sus in -- ef -- fa -- bly one,
	And bright in ef -- ful -- gence di -- vine.
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
