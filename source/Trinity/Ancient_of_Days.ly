\version "2.10.29"

Title = "Ancient of Days"

Writer = "William Croswell Doane, 1832-1913"

Translator = ""

Composer = "John Albert Jeffery, 1855-1929"

Arranger = ""

Tune = "ANCIENT OF DAYS"

Meter = " 11.10.11.10"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key c \major
	\tempo 4 = 76	
	\autoBeamOff
}

soprano = {	
	g'4 g'8. g'16 g'4. a'8 g' c'' b' e' a'4 g' g' a'8. a'16 b'4 c'' d''8 b' b'8. a'16 g'2
	a'4 a'8. a'16 d''4. a'8 a' gis' a' b' d''4 c'' c'' c''8. c''16 c''8 g' e' g' g'4 d'' c''2 \bar "|."
}

alto = {
	e'4 e'8. e'16 f'4. f'8 e' e' e' e' f'4 f' e' e'8. e'16 e'4 e'8 (c') b d' fis'8. fis'16 g'2
	e'4 e'8. e'16 d'4. d'8 e' e' e' e' e'4 e' f' fis'8. fis'16 g'8 g' e' e' f'4 f' e'2
}

tenor = {
	g4 a8. ais16 b4. b8 c'8 c' c' c' b4 b c' a8. a16 g4 a g8 b d'8. c'16 b2
	c'4 cis'8. cis'16 d'4. d'8 b b b b b4 a c' c'8. c'16 e'8 g e g b4 b c'2
}

bass = {
	c4 cis8. cis16 d4. g,8 g c e g g4 g c c8. c16 b,4 a, d8 d d8. d16 g2
	g4 g8. g16 f4. f8 e e fis gis gis4 a a aes8. aes16 g8 g e g g4 g c2
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        An -- cient of Days, who sits
	en -- throned in glo -- ry;
	To thee all knees are bent, 
	all voic -- es pray;
	Thy love has blessed 
	the wide world's won -- drous sto -- ry,
	With light and life 
	since E -- den's dawn -- ing day.
}

sopWordsTwo = \lyricmode
{
	O Ho -- ly Fa -- ther, 
	who hast led thy child -- ren
	In all the a -- ges, 
	with the Fire and Cloud,
	Through seas dry -- shod, 
	through wea -- ry wastes be -- wild -- 'ring,
	To thee, in rev -- 'rent love, 
	our hearts are bowed.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	O Ho -- ly Je -- sus, 
	Prince of Peace and Sav -- ior,
	To thee we owe the peace 
	that still pre -- vails,
	Still -- ing the rude wills 
	of men's wild be -- hav -- ior,
	And calm -- ing pas -- sion's fierce 
	and storm -- y gales.
}

sopWordsFour = \lyricmode
{
	O Ho -- ly Ghost, the Lord 
	and the Life -- giv -- er,
	Thine is the quick -- 'ning power 
	that gives in -- crease.
	From thee have flowed, 
	as from a pleas -- ant ri -- ver
	Our plen -- ty, wealth, 
	pros -- per -- i -- ty, and peace.

}

sopWordsFive = \lyricmode
{
 	O Tri -- une God, with heart 
	and voice a -- dor -- ing,
	Praise we the good -- ness 
	that doth crown our days
	Pray we that thou wilt hear us, 
	still im -- plor -- ing
	Thy love and fa -- vor, 
	kept to us al -- ways.
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
