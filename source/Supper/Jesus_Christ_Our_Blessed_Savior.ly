\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Jesus Christ, Our Blessed Savior"

Writer = "John Huss, 1415"

Translator = ""

Composer = "Geistliche Lieder, Wittenberg, 1535"

Arranger = ""

Tune = "JESUS CHRISTUS, UNSER HEILAND"

Meter = " 8.8.7.8."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key f \major
	\tempo 4 = 96
	\autoBeamOff
}

soprano = {	
	f'2 c'' a'4 f' g' a' bes'2 a'
	f'4 c'' a' d'' c'' bes' c''2 a'1 
	c''4 c'' bes' a' a' g' f'2 
	c'' a'4 f' c'' bes' a' g' a'1 \bar "|."
}

alto = {
	c'2 c'8[ d' e' d'] c'4 c'8[ d'] e'4 f'8[ e'] d'[ c'] bes4 c'2
	d'4 g' f' f' f' f' c'8[ d'] e'4 c'1
	e'4 f'8[ e'] d'[ e'] f'4 f' e' d'2
	c'8[ d' e' d'] c'4 c' a' bes c' c'8[ bes] c'1
}

tenor = {
	a2 g f8[ g] a[ bes] c'4 c' f2 f
	a4 g f bes a g g2 f1
	a4 c' d' c' c' bes a2
	g f4 f f f f g f1
}

bass = {
	f,4 f e8[ d] c4 f4 c c f, g, d a,8[ g,] f,4
	f e f bes, f8[ e] d4 e a, f1
	c4 f, g, a, a,8[ bes,] cis4 f8[ (e] f4) e8[ (d] c4) f f, a, d f, e f1
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
	Je -- sus Christ, our bless -- èd Sav -- ior,
	Turned a -- way God’s wrath for -- ev -- er;
	By His bit -- ter grief and woe
	He saved us from the e -- vil Foe.
}
sopWordsTwo = \lyricmode
{
       As His pledge of love un -- dy -- ing
	He, this pre -- cious food sup -- ply -- ing,
	Gives His bo -- dy with the bread
	And with the wine the blood He shed.
}
sopWordsThree = \lyricmode
{
        Who -- so to this board re -- pair -- eth
	May take heed how he pre -- par -- eth;
	For if he does not be -- lieve,
	Then death for life he shall re -- ceive.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Praise the Fa -- ther, who from Heav -- en
	Un -- to us such food hath giv -- en
	And, to mend what we have done,
	Gave in -- to death His on -- ly Son.
}
sopWordsFive = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Thou shalt hold with faith un -- shak -- en
	That this food is to be tak -- en
	By the sick who are dis -- tressed,
	By hearts that long for peace and rest.
}
sopWordsSix = \lyricmode
{
	Christ says, "\"Come," all ye that la -- bor,
	And re -- ceive My grace and fa -- vor;
	They who feel no want nor ill
	Need no phys -- i -- cian's help nor skill.
}
sopWordsSeven = \lyricmode
{
	"\"Use" -- less were for thee My Pas -- sion
	If thy works thy health could fash -- ion.
	This feast is not spread for thee
	If thine own sav -- ior thou wilt "be.\""
}
sopWordsEight= \lyricmode
{
	If thy heart this truth pro -- fess -- es,
	And thy mouth thy sin con -- fess -- es,
	His dear guest thou here shalt be,
	And Christ Him -- self shall ban -- quet thee.
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
