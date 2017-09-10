\version "2.10.29"

\paper
{
        %page-count = 1
}

Title = \markup{ O Shout For Joy Unto The \smallCaps "Lord" }

Writer = "Based on Psalm 100"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 100B)"

Composer = "Thomas Moore, 1756"

Arranger = ""

Tune = "GLASGOW"

Meter = " C.M."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 100" }


global = {
	\time 3/4
	\key g \major
	\tempo 4 = 120
}

soprano = {
	\partial 4
	d'4 g'2 a'4 b'8. (a'16 g'4) b' d''8. (e''16 d''4) c''4 b'2 b'4 a'2 c''4 b'8. (a'16 g'4) fis'4 g'2
	d''4 d''2 b'4 c''2 e''4 d''4 (c'') b' a'2 d''4 g'4 (a') b' c'' (b') a' g'2 \bar "|."
}

alto = {
	b4 d'2 fis'4 g'2 g'4 g'2 fis'4 g'2 g'4 e'2 a'4 g'8. (e'16 d'4) d'4 d'2
	g'4 b'8. (a'16 g'4) g' g'8. (f'16 e'4) c'4 d'8. (e'16 fis'4) g'4 fis'2 fis'4 g' (d') d' g'2 fis'4 g'2
}

tenor = {
	g4 d'2 d'4 d'8. (c'16 b4) d' b8. (c'16 b4) a g2 d'4 c'2 e'4 d'8. (c'16 b4) a b2
	b4 d'8. (c'16) b4 d' c'2 g4 g (a) b8 c' d'2 d'8 c' b4 (d') d' e' (d') d'8 c' b2 
}

bass = {
	g,4 b,2 d4 g2 g4 d2 d4 g,2 g4 c2 a,4 b,8. (c16 d4) d g,2
	g4 g2 f4 e8. (d16 c4) c b, (a,) g, d2 d4 e (fis) g c (d) d g,2
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	O shout for joy un -- to the  \markup { \smallCaps "Lord," }
	Earth's peo -- ple far __ and near;
	With glad -- ness serve the  \markup { \smallCaps "Lord;" } O come
	To Him with songs of cheer.
}
sopWordsTwo = \lyricmode
{
	Know that the \markup { \smallCaps "Lord" } is God in -- deed;
	He made us; we __ are His.
	We are His peo -- ple, and the sheep
	Kept where His pas -- ture is.
}
sopWordsThree = \lyricmode
{
	O en -- ter then His gates with thanks,
	His courts with voice __ of praise;
	Give thanks to Him with joy -- ful ness.
	And bless His name al -- ways.
}
sopWordsFour = \lyricmode
{
	Be -- cause Je -- ho -- vah is most good,
	His mer -- cy nev -- er ends;
	And un -- to gen -- er -- a -- tions all
	His faith -- ful -- ness ex -- tends
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
