\version "2.10.29"

Title = "O Savior, Rend the Heavens Wide"

Writer = "German spiritual (Köln), 1623"

Translator = "Trans. Martin L. Seltz, 1909-67 (alt.)"

Composer = "Gesangbuch (Augsburg), 1666"

Arranger = ""

Tune = "O HEILAND, REISS DIE HIMMEL AUF"

Meter = " L.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	%\override Staff.TimeSignature #'style = #'()
	#(set-accidental-style 'piano)
  	%\override Staff.TimeSignature #'transparent = ##t
	\time 3/2
	\key c \major
	\tempo 4 = 96	
}

soprano = {	
	\partial 1 d'4 f'2 g'4 a'2 d'4 f' e'2 d'2 \oneVoice r4 \voiceOne a'4 a' b' c''2 f'4 a' g'2 f' \oneVoice r4 \voiceOne c'' c'' c'' c''2 a'4 d''2 d''4 c''2 \oneVoice r4 \voiceOne a' a' g' a'2 f'4 g' e'2 d' \bar "|." 
}

alto = {
	d'4 c'2 d'4 e'2 d'4 d' b4 (cis') d'2 s4 c'4 c'  f'4 e'2 f'4 e' f' (e') c'2 s4 c'4 c' c' c'4 f'2 f'4 (a') g' e'2 s4 d'4 d' d' d'4 (cis') d' d' c'4 (b) a2
}

tenor = {
	f4 f (a) f e (c') b a g2 f \oneVoice r4 \voiceOne f g f g (c') b c' d' (c') a2 \oneVoice r4 \voiceOne g4 f g a2 c'4 d' (c') b g2 \oneVoice r4 \voiceOne f4 f bes4 e a2 b4 g2 f
}

bass = {
	d4 a,2 b,4 c2 g,4 f, g, (a,) d2 s4 f4 e d c (a,) d c bes, (c) f2 s4 c d e f2 a4 g2 g,4 c2 s4 d c bes, a,2 d4 b, c2 d
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        O Sav -- ior, rend the heav -- ens wide:
	Come down, come down with migh -- ty stride:
	Un -- lock the gates, the doors break down;
	Un -- bar the way to heav -- en's crown.
}

sopWordsTwo = \lyricmode
{
	O Morn -- ing Star, O Rad -- iant Sun,
	When will our hearts be -- hold Your dawn?
	O Sun, a -- rise; with -- out Your light
	We grope in gloom and dark of night.
}

sopWordsThree = \lyricmode
{
	Sin's dread -- ful doom up -- on us lies:
	Grim death looms fierce be -- fore our eyes.
	O, come, lead us with migh -- ty hand
	From ex -- ile to our pro -- mised land.
}

sopWordsFour = \lyricmode
{
	There shall we all our prais -- es bring
	Ev -- er to You, our Sav -- ior King;
	There shall we laud You and a -- dore
	For -- ev -- er and for -- ev -- er -- more.

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
