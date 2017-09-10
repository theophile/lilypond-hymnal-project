\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "From the Eastern Mountains"

Writer = "Godfrey Thring, 1873"

Translator = ""

Composer = "Arthur Henry Mann, 1889"

Arranger = ""

Tune = "THE NEW YEAR"

Meter = " 6.5.6.5.D. (Refrain)"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key g \major
	\tempo 4 = 96	
}

soprano = {	
	g'4 d' g' a' g'2 fis' g'4 a' b' c'' b'2 (a')
	b'4 b' b' b' b'2 cis''4 (d'') d'' fis'8 (g') a'4 cis' d'1
	a'4 a' g' a' b'2 g' b'4 b' a' b' c''1
	b'4 fis' g' e' b' (fis') g'2 c''4 b' a' a' a'1 \bar "||" \break
	g'4^"Refrain" d' g' a' g'2 fis' g'4 a' b' c'' b'2 (a')
	d''4 b' a' g' e''2 a' d''4 b' g' a' g'1 \bar "|."
}

alto = {
	b4 c' d' e' d'2. c'4 b c' d' e' d' (g' fis' e')
	d' d' dis' dis' e'2 eis' fis'4 d' d' a a1
	c'4 c' c' c' b (e') d'2 d'4 d' d' d' e' (g' fis' e')
	dis' fis' e' b dis' (fis') e'2 e'4 e' e' e' d'2. (c'4)
	b c' d' e' d'2. c'4 b c' d' e' d' (g' fis'2)
	f'4 f' f' f' e'2 g' g'4 d' d' fis' g'1
}

tenor = {
	d4 fis g c' b2 a g4 g g g g (b d' c')
	b b a a b (d') cis' (b) d' a e8 (fis) g4 fis1
	fis4 fis g d' d' (c') b (a) gis gis a e' c' (b a g)
	fis b b g fis (b) b2 a4 gis a g g2 (fis)
	d4 fis g c' b2 a g4 g g g g (b d' c')
	b4 b c' d' e'2 e' b4 g b c' b1
}

bass = {
	g,4 a, b, c d2. dis4 e e d c d1
	g4 g fis fis g2 gis a4 a a, a, d1
	d4 d e fis g2 g4 (f) e e fis gis a2 (a,)
	b,4 dis e e b, (dis) e2 a,4 b, c cis d1
	g,4 a, b, c d2. dis4 e e d c d2. (a4)
	g g a b c'2 c d4 d d d <g, g>1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        From the east -- ern moun -- tains, press -- ing on, they come,
	Wise men in their wis -- dom, to His hum -- ble home;
	Stirred by deep de -- vo -- tion, hast -- ing from a -- far,
	Ev -- er jour -- n'ying on -- ward, guid -- ed by a star.

	Light of life that shin -- eth ere the worlds be -- gan,
	Draw Thou near, and light -- en ev -- ery heart of man.
}

sopWordsTwo = \lyricmode
{
	There their Lord and Sav -- ior meek and low -- ly lay,
	Won -- drous Light that led them on -- ward on their way,
	Ev -- er now to light -- en na -- tions from a -- far,
	As they jour -- ney home -- ward by that guid -- ing star.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Thou Who in a man -- ger once hast low -- ly lain,
	Who dost now in glo -- ry o'er all king -- doms reign,
	Ga -- ther in the hea -- then who in lands a -- far
	Ne'er have seen the bright -- ness of Thy guid -- ing star.
}

sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Ga -- ther in the out -- casts, all who've gone a -- stray,
	Throw Thy ra -- diance o'er them, guide them on their way.
	Those who nev -- er knew Thee, those who've wan -- dered far,
	Guide them by the bright -- ness of Thy guid -- ing star.
}

sopWordsFive = \lyricmode
{
 	On -- ward through the dark -- ness of the lone -- ly night,
	Shin -- ing still be -- fore them with Thy kind -- ly light.
	Guide them, Jew and Gen -- tile, home -- ward from a -- far,
	Young and old to -- geth -- er, by Thy guid -- ing Star.
}

sopWordsSix = \lyricmode
{
 	Un -- til ev -- ery na -- tion, whe -- ther bond or free,
	'Neath Thy star -- lit ban -- ner, Je -- sus, fol -- lows Thee.
	O'er the dis -- tant moun -- tains to that heav'n -- ly home,
	Where nor sin nor sor -- row ev -- er -- more shall come. 
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
