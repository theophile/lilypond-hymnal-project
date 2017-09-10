\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "To Jordan Came Our Lord, the Christ"

Writer = "Martin Luther, 1541"

Translator = "Trans. Richard Massie, 1854"

Composer = "Martin Luther, 1524"

Arranger = "Harm. Lucas Osiander, 1586"

Tune = "CHRIST UNSER HERR ZUM JORDAN KAM"

Meter = " 8.7.8.7.8.7.8.7.7."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\cadenzaOn
	\key bes \major
	\tempo 4 = 96	
}

soprano = {	
	c'2 ees'4 f' g' f' bes' a' g' \bar "|"
	\oneVoice r8 \voiceOne g' bes'4. a'8 g'4 f' ees' ( d') c'2 \bar "|"
	c'2 ees'4 f' g' f' bes' a' g' \bar "|"
	\oneVoice r8 \voiceOne g' bes'4. a'8 g'4 f' ees' (d') c'4 \bar "|"
	\oneVoice r8 \voiceOne c' f'4 f' d' g' g' fis' g' \bar "|"
	\oneVoice r8 \voiceOne g' c''4 c'' d'' bes'8 c''4 (bes'8 a'4) g' \bar "|"
	\oneVoice r8 \voiceOne g' bes'4 a' g' f' g' ees' d' \bar "|"
	\oneVoice r8 \voiceOne c' ees'4 f' g' es'8 f'4 (ees'8 d'4) c' \bar "|"
	\oneVoice r8 \voiceOne c'' c''4 c'' d''4. c''8 bes'4 (a') g'1 \bar "|."
}

alto = {
	c'2 c'4 d' ees' d' f' f' d'
	s8 d' ees'4 c' ees' d' c'( b) g2
	c'2 c'4 d' ees' d' f' f' d'
	s8 d' ees'4 c' ees' d' c' (b) g4
	s8 a c'4 d' bes d' ees' d' d'
	s8 d' f'4 f' bes d'8 f'4 (d'8 f'4) d'
	s8 d' d'4 f' ees' d' ees'8[ d'] c'4 b
	s8 g c'4 d' ees' bes8 d'4 (c'8 b4) g
	s8 ees' f'4 f' f' f' d' (fis') d'1
}

tenor = {
	g2 g4 bes bes bes d' c' bes
	\oneVoice r8 \voiceOne bes g4 a bes bes g2 ees
	g2 g4 bes bes bes d' c' bes
	\oneVoice r8 \voiceOne bes g4 a bes bes g2 ees4
	\oneVoice r8 \voiceOne f a4 bes f bes c' a bes
	\oneVoice r8 \voiceOne bes a4 a f f8 a4 (bes8 d'4) bes
	\oneVoice r8 \voiceOne bes g4 c' c' a c'8[ g] g4 g
	\oneVoice r8 \voiceOne ees g4 bes bes g8 bes4 (g8 g4) ees4
	\oneVoice r8 \voiceOne g a4 a bes a bes8.[ (c'16] d'4) b1
}

bass = {
	c2 c4 bes, ees bes, bes, f, g,
	s8 g, <ees, ees>4 <f, f> <ees, ees> bes, c ( g,) c2
	c2 c4 bes, ees bes, bes, f, g,
	s8 g, <ees, ees>4 <f, f> <ees, ees> bes, c (g,) c4
	s8 f,8 f,4 bes, bes, g, c d g,
	s8 g, f,4 f, bes, bes,8 f4 (g8 d4) g,
	s8 g, g,4 f, c d c8[ b,] c4 g,
	s8 c c4 bes, ees ees8 bes,4 (c8 g,4) c4
	s8 c f,4 f, bes, f g (d) g,1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

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
	To Jor -- dan came our Lord the Christ,
	To do God's pleas -- ure will -- ing,
	And there was by Saint John bap -- tized,
	All right -- eous -- ness ful -- fill -- ing;
	There did He con -- se -- crate a bath
	To wash a -- way trans -- gres -- sion,
	And quench the bit -- ter -- ness of death
	By His own blood and pas -- sion;
	He would a new life give us.
}
sopWordsTwo = \lyricmode
{
	So hear ye all, and well per -- ceive
	What God doth call bap -- ti -- sm,
	And what a Chris -- tian should be -- lieve
	Who err -- or shuns and schi -- sm:
	That we should wa -- ter use, the Lord
	De -- clar -- eth it His pleas -- ure;
	Not sim -- ple wa -- ter, but the Word
	And Spir -- it with -- out meas -- ure;
	He is the true Bap -- tiz -- er.
}
sopWordsThree = \lyricmode
{
	To show us this, He hath His Word
	With signs and sym -- bols giv -- en;
	On Jor -- dan's banks was plain -- ly heard
	The Fa -- ther's voice from Heav -- en:
	"\"This" is My well -- be -- lov -- èd Son,
	In whom My soul de -- light -- eth;
	Hear "Him.\"" Yea, hear Him ev -- ery one
	Whom He Him -- self in -- vit -- eth,
	Hear and o -- bey His teach -- ing.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	In ten -- der man -- hood Je -- sus straight
	To ho -- ly Jor -- dan wen -- deth;
	The Ho -- ly Ghost from Heav -- en's gate
	In dove -- like shape de -- scend -- eth;
	That thus the truth be not de -- nied,
	Nor should our faith e'er wa -- ver,
	That the Three Per -- sons all pre -- side,
	At bap -- tism's ho -- ly la -- ver,
	And dwell with the be -- liev -- er.
}
sopWordsFive = \lyricmode
{
 	Thus Je -- sus His dis -- cip -- les sent:
	Go teach ye ev -- ery na -- tion,
	That lost in sin they must re -- pent;
	And flee from con -- dem -- na -- tion:
	He that be -- lieves and is bap -- tized,
	Ob -- tains a might -- y bless -- ing;
	A new -- born man, no more he dies,
	E -- ter -- nal life pos -- sess -- ing,
	A joy -- ful heir of Heav -- en.
}
sopWordsSix = \lyricmode
{
 	Who in this mer -- cy hath not faith,
	Nor aught there -- in dis -- cern -- eth,
	Is yet in sin, con -- demned to death,
	And fire that ev -- er burn -- eth;
	His ho -- li -- ness a -- vails him not,
	Nor aught which he is do -- ing;
	His in -- born sin brings all to naught,
	And mak -- eth sure his ru -- in;
	Him -- self he can -- not suc -- cor.
}
sopWordsSeven = \lyricmode
{
 	The eye of sense a -- lone is dim,
	And noth -- ing sees but wa -- ter;
	Faith sees Christ Je -- sus, and in Him
	The Lamb or -- dained for slaught -- er;
	She sees the cleans -- ing foun -- tain red
	With the dear blood of Je -- sus,
	Which from the sins in -- her -- it -- ed
	From fall -- en A -- dam frees us,
	And from our own mis -- do -- ings.
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
