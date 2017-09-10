\version "2.10.29"

Title = "Savior of the Nations, Come"

Writer = "St. Ambrose, 397"

Translator = "German: Martin Luther, 1524 - English: William M. Reynolds, 1860"

Composer = "Johann Walter, 1524"

Arranger = ""

Tune = "NUN KOMM, DER HEIDEN HEILAND"

Meter = " 7.7.7.7"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key g \minor		
	\tempo 4=96
}

soprano = {	
	g'4 g' f' bes' a'8 (g') a'4 g'2 g'4 bes' c''4. bes'8 c''4 d'' bes'2 \break
	bes'4 c'' d'' bes' c'' bes'8 (a') g'2 g'4 g' f' bes' a'8 (g') a'4 g'2 \bar "|." 
}

alto = {
	d'4 d' d' d' ees'8 (g') fis'4 g'2 d'4 d' ees'4. d'8 f'4 f' f'2 \break
	d'4 f' f' g' g' g'8 (fis') g'2 ees'4 ees' d' f' fis'8 (g') fis'4 g'2 \bar "|."
}

tenor = {
	bes4 bes a d' c'8 (bes) a4 bes2 bes4 bes g4. bes8 a4 bes d'2 \break
	f4 a bes bes ees' d' bes2 bes4 c' a d' d'8 (bes) a4 b2 \bar "|."
}

bass = {
	g,4 g d bes, c d g,2 g4 g c4. g8 f4 bes, bes,2 \break
	bes,4 f bes, ees c d g,2 ees4 c d bes, d2 g,2 \bar "|."
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	g2:m d4:m g4:m/bes c4:m6 d4 g2:m
	g2:m c4.:m g8:m f4 bes2.
	bes4 f4 bes4 ees4 c4:m g8:m/d d8 g2:m
	ees4 c4:m d4:m bes4 d8 g8:m/d d4 g2 
}

sopWords = \lyricmode
{
        Sav -- ior of the na -- tions, come;
	Vir -- gin's Son, here make Thy home!
	Mar -- vel now, O heaven and earth,
	That the Lord chose such a birth.
}

sopWordsTwo = \lyricmode
{
	Not by hu -- man flesh and blood;
	By the Spir -- it of our God
	Was the Word of God made flesh,
	Wom -- an's off -- spring, pure and fresh.
}

sopWordsThree = \lyricmode
{
	%\override LyricText #'font-shape = #'italic
	Won -- drous birth! O won -- drous Child
	Of the vir -- gin, un -- de -- filed!
	Though by all the world dis -- owned,
	Still to be in heaven en -- throned.
}

sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	From the Fa -- ther forth He came
	And re -- turn -- eth to the same,
	Cap -- tive lead -- ing death and hell
	High the song of tri -- umph swell!
}

sopWordsFive = \lyricmode
{
	%\override LyricText #'font-shape = #'italic
	Thou, the Fa -- ther's on -- ly Son,
	Hast o'er sin the vic -- t'ry won.
	Bound -- less shall Thy king -- dom be;
	When shall we its glo -- ries see?
}

sopWordsSix = \lyricmode
{
	Bright -- ly doth Thy man -- ger shine,
	Glor -- ious is its light div -- ine.
	Let not sin o'er -- cloud this light;
	Ev -- er be our faith thus bright.
}

sopWordsSeven = \lyricmode
{
	Praise to God the Fa -- ther sing,
	Praise to God the Son, our King,
	Praise to God the Spir -- it be
	Ev -- er and e -- ter -- nal -- ly.
}

sopWordsEight = \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \include "insertchords.ly
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
