\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "Only-Begotten, Word of God Eternal"

Writer = "Latin, ninth century"

Translator = "Trans. Maxwell Julius Blacker, 1884"

Composer = "Rouen church melody"

Arranger = "Arr. Healey Willan, 1880-1968"

Tune = "ISTE CONFESSOR"

Meter = " 11.11.11.5"

\include "header.ly"



global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\autoBeamOff
	\time 4/4
	\key d \minor	
	\tempo 4 = 90
}

soprano = {	
	d'2 a'4 f' g'2 a' d'4. e'8 f'4 g' f' (e') d'2
	d'2 a'4 f' g'2 a' a'4. g'8 a'4 b' c'' (b') a'2
	d''2 c''4 d'' c'' (bes') a'2 c''4. bes'8 a'4 bes' a' (g') f'2
	a'2 d'4 e' f'2 (e') d'1 \bar "|."
}

alto = {
	a2 e'4 d' e'2 e' bes2 c'4 d' c'2 a
	bes2 c'4 d' e'2 f' f'4. c'8 c'4 f' e'2 e'
	f'2 g'4 f'~ f' d' e'2 f'4. e'8 f'4 g' f' (e') d'2
	e'2 bes c'4 (d'~ d' c'8[ bes]) a1

}

tenor = {
 	f2 a4 a c'2 c' f4. g8 f4 bes a (g) f2
	f2 f4 a c'2 c' d'4. g8 f4 f g2 c'
	a2 g4 a~ a d'~ d' c' a4. bes8 c'4 d' c'2 a
	c'2 f4 g a (bes4 g2~ g) f
}

bass = {
 	d2 c4 d c2 a, bes,4. g,8 a,4 bes, c2 d4 (c)
	bes,2 f,4 d c2 f4 (e) d4. e8 f4 d c (e) a,2
	d2 e4 d4 f, g, a,2 f,4. g,8 a,4 g, a, (c) d2
	a,2 bes,4 g, f, (bes, c c,) d,1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	On -- ly -- Be -- got -- ten, Word of God e -- ter -- nal,
	Lord of Cre -- a -- tion, mer -- ci -- ful and might -- y,
	hear now Thy ser -- vants, when their joy -- ful voic -- es
	rise to Thy pres -- ence.
}
sopWordsTwo = \lyricmode
{
	This is Thy tem -- ple; here Thy pres -- ence cham -- ber;
	here may Thy ser -- vants, at the mys -- tic ban -- quet,
	hum -- bly a -- dor -- ing, take Thy Bo -- dy bro -- ken,
	drink of Thy chal -- ice.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Here in our sick -- ness heal -- ing grace a -- bound -- eth,
	light in our blind -- ness, in our toil re -- fresh -- ment;
	sin is for -- giv -- en, hope o'er fear pre -- vail -- eth,
	joy o -- ver sor -- row.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Hal -- lowed this dwell -- ing where the Lord a -- bid -- eth,
	this is none oth -- er than the gate of heav -- en;
	stran -- gers and pil -- grims, seek -- ing homes e -- ter -- nal,
	pass through its por -- tals.
}
sopWordsFive = \lyricmode
{
	Lord, we be -- seech Thee, as we throng Thy tem -- ple,
	by Thy past bless -- ings, by Thy pres -- ent boun -- ty,
	fa -- vor Thy chil -- dren, and with ten -- der mer -- cy
	hear our pe -- ti -- tions.
}
sopWordsSix = \lyricmode
{
	God in three Per -- sons, Fa -- ther ev -- er -- last -- ing,
	Son co -- e -- ter -- nal, ev -- er -- bless -- èd Spir -- it,
	Thine be the glo -- ry, praise and a -- do -- ra -- tion,
	now and for -- ev -- er.
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
