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
	\cadenzaOn
	\key c \major
	\tempo 4 = 96	
}

soprano = {	
	d'2 a' a'4 (g' a') d' f' f' f'2 (e') d'2 \bar ""
	f'4 f' f' d' f'2 g' a'4. (g'8 f'4 e') d'1 \bar ""
	f'4 f' f' d' f'2 g' a'4. (g'8 f'2) \bar ""
	c''4 d'' c'' (a') f'2 g' a'4. (g'8 f'4) e'4 d'1 \bar "|."
}

alto = {
	a2 c'4. (d'8) e'2 (c'4) d' c' c' c' (d'2 cis'4) d'2
	d'4 d' d' d' d' (a) c'2 c'2. (cis'4) d'1
	d'4 d' d' a d' (c') bes2 a4. (bes8 c'2)
	f'4 f' e' (f') d' (c') d' (c') c'2~ (c'8 d'4) cis'8 d'1
}

tenor = {
	f2 a4. (b8) c'4 (b a) f a a a1 fis2
	a4 a a bes a8[ (g] f4) f4 (e) f4. (g8 a2) fis1
	a4 a bes f d8[ (e] f4) f (e) f4. (g8 a2)
	a4 bes g (f) f2 d4 (e) f4. (g8 a4) a4 fis1
}

bass = {
	d2 a, a,4 (e a,) bes, f, f, f,4. (g,8 a,2) d2
	d4 d d g, d2 c f4. (e8 d4 a,) d1
	d4 d8[ c] bes,[ c] d[ c] bes,4 (a,) g,2 f,1
	f4 bes, c (f,) bes, (a,) bes, (c) f,2. a,4 d1
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
