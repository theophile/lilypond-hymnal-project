\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "Holy Ghost, Dispel Our Sadness"

Writer = "Paul Gerhardt, 1648"

Translator = "Tr. by John Christian Jacob, 1725, and August Toplady, 1776"

Composer = "Genevan Psalter, 1551"

Arranger = "Harm. Johann Crüger, 1658"

Tune = "AINSI QU'ON OIT LE CERF BRUIRE"

Meter = " 8.7.8.7.7.7.8.8"

\include "header.ly"
\header { 	title = \Title 
		subtitle = "" }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key f \major
	\tempo 2 = 92
}

soprano = {	
	\cadenzaOn
	f'2 g'4 a'2 g'4 f' e' d'2 c' \bar "|"
	f'2 g'4 a'2 bes'4 a'2 g' f'1 \bar "|"
	f'2 g'4 a'2 g'4 f' e' d'2 c' \bar "|"
	f'2 g'4 a'2 bes'4 a'2 g' f'1 \bar "|"
	a'2 a'4 c''2 bes'4 a' g' a'1 \bar "|"
	c''2 c''4 d''2 c''4 bes' a' g'1 \bar "|"
	a'2 c''4 bes'2 a'4 f' g' a'2 f' \bar "|"
	a'2 a'4 bes'2 a'4 g' f'2 e'4 f'1 \bar "|."
}

alto = {
	c'2 e'4 f'2 e'4 d' c' bes2 a
	d' e'4 f'2 f'4 f'2 e' f'1
	c'2 e'4 f'2 e'4 d' c' bes2 a
	d' e'4 f'2 f'4 f'2 e' f'1
	f'2 f'4 e'2 d'4 d' d' cis'1
	f'2 f'4 f'2 f'4 f' f' e'1
	f'2 e'4 g'2 f'4 d' e' f'2 d'
	f' f'4 d'2 c'4 c' a c'2 c'1
}

tenor = {
	a2 c'4 c'2 c'4 a a f2 f
	a c'4 c'2 d'4 c'2 c' a1
	a2 c'4 c'2 c'4 a a f2 f
	a c'4 c'2 d'4 c'2 c' a1
	c'2 f4 g2 g4 fis g e1
	a2 a4 bes2 c'4 d' c' c'1
	c'2 c'4 d'2 d'4 a c' c'2 bes
	c' c'4 f2 f4 e f g2 f1
}

bass = {
	f2 c4 f2 c4 d a, bes,2 f,
	d c4 f2 bes,4 c2 c f,1
	f2 c4 f2 c4 d a, bes,2 f,
	d c4 f2 bes,4 c2 c f,1
	f2 d4 c2 g,4 d bes, a,1
	f2 f4 bes,2 a,4 bes, f, c1
	f2 c4 g2 d4 d c f2 bes,
	f, f,4 bes,2 f,4 c d c2 f,1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	Ho -- ly Ghost, dis -- pel our sad -- ness,
	Pierce the clouds of sin -- ful night;
	Come, thou source of sweet -- est glad -- ness,
	Breathe thy life, and spread thy light.
	Lov -- ing Spir -- it, God of peace,
	Great dis -- trib -- u -- tor of grace,
	Rest up -- on this con -- gre -- ga -- tion;
	Hear, O hear our sup -- pli -- ca -- tion.
}
sopWordsTwo = \lyricmode
{
	\override LyricText #'font-shape = #'italic
        From that height which knows no mea -- sure,
	As a gra -- cious show'r de -- scend;
	Bring -- ing down the rich -- est trea -- sure
	Man can wish, or God can send.
	O thou Glo -- ry, shin -- ing down
	From the Fa -- ther and the Son,
	Grant us thine il -- lu -- min -- a -- tion;
	Rest up -- on this con -- gre -- ga -- tion.
}
sopWordsThree = \lyricmode
{
	Come, thou best of all do -- na -- tions
	God can give, or we im -- plore;
	Hav -- ing thy sweet con -- so -- la -- tions
	We need wish for noth -- ing more.
	Come with unc -- tion and with pow'r,
	On our souls thy gra -- ces show'r;
	Au -- thor of the new cre -- a -- tion,
	Make our hearts thy hab -- i -- ta -- tion.
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
