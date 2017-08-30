\version "2.10.29"

Title = "Wake, Awake, for Night is Flying"

Writer = "Philip Nicolai, 1597"

Translator = "Trans. Catherine Winkworth, 1858"

Composer = "Philip Nicolai, 1599"

Arranger = "Arr. J.S. Bach, 1731"

Tune = "SLEEPERS, WAKE"

Meter = " 8.9.8 8.9.8 6.6.4 4.4.8"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	%\override Staff.TimeSignature #'style = #'()
	%#(set-accidental-style 'modern-cautionary)
  	%\override Staff.TimeSignature #'transparent = ##t
	\time 2/2
	\key c \major
	\tempo 2 = 92	
}

soprano = {	
	c'2 e' g'2. g'4 g'2 g' a'1 g'1 \oneVoice r2 \voiceOne g' c'' g' c''4 (d'') e''2 d'' c'' b' (a') g'1
	\oneVoice r2 \voiceOne g' c'' g' a' e' f'4 (e') d'2 c'1 \bar "||" \break
	c'2 e' g'2. g'4 g'2 g' a'1 g'1 \oneVoice r2 \voiceOne g' c'' g' c''4 (d'') e''2 d'' c'' b' (a') g'1
	\oneVoice r2 \voiceOne g' c'' g' a' e' f'4 (e') d'2 c'1 \bar "||"  \break

	\oneVoice r2 \voiceOne g' g'2. f'4 e'2 d' c'1 \oneVoice r2 \voiceOne g'2 g'2. f'4 e'2 d' c'1 d'2 e' f'1 e' \bar "||"  \break
	\oneVoice r2 \voiceOne g' a' b' c'' c''4 (d'') e''2 d'' c''1 \bar "||"
	\oneVoice r2 \voiceOne g'2 c'' g' a' e' f'4 (e') d'2 c'1 \bar "|." 
}

alto = {
	g2 c' e' d' e' d' e' (d') d'1 s2 d' g'2. f'4 e' (f') g'2 g' a' a'4 (g'2 fis'4) d'1
	s2 e' f' e' c' c' c' b g1
	g2 c' e' d' e' d' e' (d') d'1 s2 d' g'2. f'4 e' (f') g'2 g' a' a'4 (g'2 fis'4) d'1
	s2 e' f' e' c' c' c' b g1

	s2 d'2 e'2. d'4 g (a) b2 a1 s2 b4 (c') d'2 d' d'4 (c'2) b4 g1 b2 c' c' (b) c'1
	s2 e'2 e'4 (d') d' (e') e'2 e'4 (f') g'2. f'4 e'1
	s2 e'4 (f') g' (f') g' (e') f'2 c' c' b g1
}

tenor = {
	e2 g c' b c' g g (fis) b1 \oneVoice r2 \voiceOne b c' c' g c' d' d' d'2. (a4) b1
	\oneVoice r2 \voiceOne c' c' c'4 (bes) a2 a a4 (g) f2 e1
	e2 g c' b c' g g (fis) b1 \oneVoice r2 \voiceOne b c' c' g c' d' d' d'2. (a4) b1
	\oneVoice r2 \voiceOne c' c' c'4 (bes) a2 a a4 (g) f2 e1

	\oneVoice r2 \voiceOne g2 c'4 (b) a (b) c'2 g4 (f) e1 \oneVoice r2 \voiceOne g g4 (a) b2 g4 (a2) g4 e1 g2 g a (f) g1
	\oneVoice r2 \voiceOne c'2 c' b a c' c' b c'1
	\oneVoice r2 \voiceOne c'2 g c' c'2. a4 a (g) f2 e1
}

bass = {
	c2 c c4 (e g) f e (d) c (b,) c (a, d2) g,1 s2 g4 (f) e (f) e (d) c2 c' b4 (a) g (fis) g2 d g,1
	s2 c4 (bes,) a, (b,!) c2 f4 (g) a2 d g, c1
	c2 c c4 (e g) f e (d) c (b,) c (a, d2) g,1 s2 g4 (f) e (f) e (d) c2 c' b4 (a) g (fis) g2 d g,1
	s2 c4 (bes,) a, (b,!) c2 f4 (g) a2 d g, c1

	s2 b,2 c d e4 (f) g (g,) a,1 s2 e2 b,4 (a,) g,2 c4 (a,) f, (g,) c1 g4 (f) e2 d1 c
	s2 c'2 fis gis a a e4 (f) g2 a,1
	s2 c4 (d) e (d) e (c) f, (g,) a,2 <d \parenthesize d,>2 g, <c \parenthesize c,>1
}

sopWords = \lyricmode
{
       	Wake, a -- wake, for night is fly -- ing;
	The watch -- men on the heights are cry -- ing:
	A -- wake, Je -- ru -- sa -- lem, a -- rise!
   	Mid -- night's sol -- emn hour is toll -- ing,
   	His char -- iot wheels are near -- er roll -- ing,
   	He comes; pre -- pare, ye vir -- gins wise.
   	Rise up, with will -- ing feet,
   	Go forth, the Bride -- groom meet:
   	Al -- le -- lu -- ia!
   	Bear through the night your well -- trimmed light,
   	Speed forth to join the mar -- riage rite.
}

sopWordsTwo = \lyricmode
{
	Zi -- on hears the watch -- men sing -- ing,
   	Her heart with deep de -- light is spring -- ing,
   	She wakes, she ris -- es from her gloom:
   	Forth her Bride -- groom comes, all glor -- ious,
   	In grace ar -- rayed, by truth vic -- tor -- ious;
   	Her Star is ris'n, her Light is come!
   	All hail, In -- car -- nate Lord,
   	Our crown, and our re -- ward!
   	Al -- le -- lu -- ia!
   	We haste a -- long, in pomp of song,
   	And glad -- some join the mar -- riage throng.
}

sopWordsThree = \lyricmode
{
	Lamb of God, the heav'ns a -- dore Thee,
   	And men and an -- gels sing be -- fore Thee,
   	With harp and cym -- bal's clear -- est tone.
   	By the pear -- ly gates in won -- der
   	We stand, and swell the voice of thun -- der,
   	That ech -- oes round Thy dazz -- ling throne.
   	No vis -- ion ev -- er brought,
   	No ear hath ev -- er caught,
   	Such bliss and joy:
   	To raise the song, we swell the throng,
   	To praise Thee a -- ges all a -- long.
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
		%g2:m d4:m g4:m/bes c4:m6 d4 g2:m
		%g2:m c4.:m g8:m f4 bes2.
		%bes4 f4 bes4 ees4 c4:m g8:m/d d8 g2:m
		%ees4 c4:m d4:m bes4 d8 g8:m/d d4 g2 
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
