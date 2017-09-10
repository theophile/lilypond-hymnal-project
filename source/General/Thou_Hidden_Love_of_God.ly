\version "2.10.29"

Title = "Thou Hidden Love of God"

Writer = "Gerhard Testeegen, 1729"

Translator = "Trans. John Wesley, 1749"

Composer = "From Geistliche Lieder, 1539"

Arranger = "Arr. C. Meredith, 2012"

Tune = "VATER UNSER"

Meter = " 8.8.8.8.8.8"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\autoBeamOff
	\time 4/4
	\key c \minor
	\tempo 4 = 72	
}

soprano = {	
	\partial 4 g'4 g' ees' f' g' ees' d' c' g' g' f' bes' g' ees' f' g'\fermata \bar "" \break
	g' bes' c''8 [d''] ees''4 d'' c'' b' c'' c'' d'' c'' bes' a' g' fis' g'\fermata  \bar "" \break
	c'' bes' a' bes' g' g' f' ees' g' aes' g'8 [f'] ees'4 f' ees' d' c' \bar "|."
}

alto = {
	ees'4 d' ees' c' bes c' b c' ees' ees' d' f' ees' c' c' b
	c' d' aes' g' f' ees' f' g' a' f' fis' g' g'8 [fis'] g'4 d' d'
	f' f' ees' d' c' c' c' bes c' c' dis'8 [d'] c'4 d' c' b c'
}

tenor = {
	g4 g g f g g g ees g bes aes bes bes c' d' g\fermata
	ees bes c' bes b c' d' e' c' d' d' d' c' c' a bes\fermata
	a bes g f ees ees aes g g f b c' c' g4. f8 e4
}

bass = {
	c4 b, c aes, ees g g, c c g, bes, d ees aes aes, g,
	c g f ees g aes g c f bes, a, g, c8 [d] ees4 d g,
	f d c bes, c aes, bes, ees e f g aes aes g g, c
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	Thou hid -- den love of God, whose height, whose depth un -- fath -- omed no one knows,
	I see from far Thy beau -- teous light, and in -- ly sigh for Thy re -- pose;
	my heart is pained, nor can it be at rest, till it finds rest in Thee.
}
sopWordsTwo = \lyricmode
{
        "'Tis" mer -- cy all that Thou hast brought my mind to seek its peace in Thee;
	yet while I seek, but find Thee not, no peace my wan -- "d'ring" soul shall see.
	O when shall all my wan -- "d'rings" end, and all my steps to Thee -- ward tend?
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
        Is there a thing be -- neath the sun that strives with Thee my heart to share?
	Ah, tear it thence and reign a -- lone, the Lord of ev -- "'ry" mo -- tion there;
	then shall my heart from earth be free, when it hath found re -- pose in Thee.
}
sopWordsFour = \lyricmode
{
	O Love, Thy sov -- ereign aid im -- part to save me from low -- thought -- ed care;
	chase this self -- will from all my heart, from all its hid -- den maz -- es there;
	make me Thy du -- teous child that I cease -- less may "\"Ab" -- ba, Fa -- "ther\"" cry.
}
sopWordsFive = \lyricmode
{
	Each mo -- ment draw from earth a -- way my heart that low -- ly waits Thy call;
	speak to my in -- most soul and say, "\"I" am thy love, thy God, thy "all!\""
	To feel Thy pow'r, to hear Thy voice, to taste Thy love, be all my choice.
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
