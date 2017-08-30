\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Alleluia! Let Praises Ring!"

Writer = "Geistreiches Gesangbuch, 1698"

Translator = ""

Composer = "Philipp Nicolai, 1599"

Arranger = ""

Tune = "WIE SCHÖN LEUCHTET"

Meter = " 8.8.7.8.8.7.4.8.4.8"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key ees \major
	\tempo 4 = 60
	\autoBeamOff
}

soprano = {	
	ees'4 bes' g' ees' bes' c''8 c'' bes'4. 
	bes'8 c'' d'' ees'' d'' c''4 c'' bes'4.
	bes'8 c''4 bes' aes'8 g' f'4 ees'2
	ees'4 bes' g' ees' bes' c''8 c'' bes'4.
	bes'8 c'' d'' ees'' d'' c''4 c'' bes'4.
	bes'8 c''4 bes' aes'8 g' f'4 ees'2
	bes'4 g' bes' g' g'8 g' f' f' g' g' f' f' g' g' f'4 ees'2 
	ees''4 bes' c'' bes' aes'8 g' f'4 ees'2  \bar "|."
}

alto = {
	bes4 bes bes c' f' g'8 f' d'4. 
	ees'8 ees' f' g' f' f'4 f' d'4.
	ees'8 ees'4 ees' c'8 bes bes4 bes2
	bes4 bes bes c' f' g'8 f' d'4.
	ees'8 ees' f' g' f' f'4 f' d'4.
	ees'8 ees'4 ees' c'8 bes bes4 bes2 
	d'4 ees' f' ees' bes8 ees' ees' d' bes ees' ees' d' ees' ees' d'4 ees'2 
	ees'4 ees' ees' d' ees'8 ees' ees'[ d'] bes2
}

tenor = {
	g4 f g g bes bes8 a bes4.
	g8 g bes bes bes bes4 a bes4.
	g8 aes4 bes ees8 ees ees[ d] g2
	g4 f g g bes bes8 a bes4.
	g8 g bes bes bes bes4 a bes4.
	g8 aes4 bes ees8 ees ees[ d] g2 
	bes4 bes bes bes ees8 bes bes f ees bes bes bes bes bes bes4 g2 
	g4 bes aes f c'8 bes bes4 g2
}

bass = {
	ees4 d ees c d ees8 f bes,4.
	ees8 c bes, ees bes, f4 f bes,4.
	ees8 aes,4 g, aes,8 ees bes,4 ees2
	ees4 d ees c d ees8 f bes,4.
	ees8 c bes, ees bes, f4 f bes,4.
	ees8 aes,4 g, aes,8 ees bes,4 ees2 
	g4 ees d ees ees8 g, bes, bes, ees g, bes, bes, ees g, bes,4 ees2 
	c4 g, aes, bes, c8 ees bes,4 ees2
}



sopWords = \lyricmode
{
	Al -- le -- lu -- ia! Let prais -- es ring!
	To God the Fa -- ther let us bring
	Our songs of a -- do -- ra -- tion.
	To Him through ev -- er -- last -- ing days
	Be wor -- ship, hon -- or, pow'r and praise
	Whose hand sus -- tains cre -- a -- tion.
	Sing -- ing, Ring -- ing: 
	Ho -- ly, ho -- ly, 
	God is ho -- ly; 
	Spread the sto -- ry 
	Of our God, the Lord of glo -- ry.
}
sopWordsTwo = \lyricmode
{
        Al -- le -- lu -- ia! Let prais -- es ring!
	Un -- to the Lamb of God we sing,
	In whom we are e -- lect -- ed.
	He bought His Church with His own blood,
	He cleansed her in that bless -- èd flood,
	And as His Bride se -- lect -- ed.
	Ho -- ly, Ho -- ly 
	Is our un -- ion
	And com -- mun -- ion.
	His be -- friend -- ing 
	Gives us joy and peace un -- end -- ing.
}
sopWordsThree = \lyricmode
{
	Al -- le -- lu -- ia! Let prais -- es ring!
	Un -- to the Ho -- ly Ghost we sing,
	For our re -- gen -- er -- a -- tion.
	The sav -- ing faith in us he wrought
	And us un -- to the Bride -- groom brought.
	Made us His cho -- sen na -- tion.
	Glo -- ry! Glo -- ry!
	Joy e -- ter -- nal,
	Bliss su -- per -- nal;
	There is man -- na
	And an end -- less, glad ho -- san -- na.
}
sopWordsFour = \lyricmode
{
	Al -- le -- lu -- ia! Let prais -- es ring!
	Un -- to our Tri -- une God we sing,
	Blest be His name for -- ev -- er!
	With an -- gel hosts let us a -- dore
	And sing His prais -- es more and more
	For all His grace and fa -- vor.
	Sing -- ing, Ring -- ing:
	Ho -- ly, ho -- ly, God is ho -- ly
	Spread the sto -- ry 
	Of our God, the Lord of glo -- ry!
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
