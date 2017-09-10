\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "Dear Father, Who hast Made Us All"

Writer = "Albert Knapp, 1841"

Translator = "Trans. William Czamanske, 1939"

Composer = "Cantionale Germanicum (Dresden, 1628)"

Arranger = ""

Tune = "HERR JESU CHRIST, DICH"

Meter = " L.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 6/4
	\key f \major
	\tempo 2 = 80	
}

soprano = {	
	\partial 2 f'2 a' c''4 a'2 g'4 a' b' c''2 \bar "dashed"	d'' c'' a'4 g'2 f'4 f' e' f'2 \bar "dashed"
	g'2 a' a'4 g'2 c''4 c'' b' c''2 \bar "dashed"
	a'2 bes' a'4 g'2 f'4 f' e' f'2 \bar "|."
}

alto = {
	\partial 2 c'2 f' g'4 f'2 e'4 f' f' e'2 f' f' f'4 e'2 c'4 d'4 c' c'2 e' f' f'4 e'2 e'4 d' d' e'2 c' d' c'4 c'2 a4 d' c' c'2
}

tenor = {
	\partial 2 a2 c' c'4 c'2 c'4 c' f g2 bes2 a c'4 c'2 f4 bes g a2 c' c' c'4 c'2 g4 g g g2 f f f4 e2 f4 bes8 (a) g4 a2
}

bass = {
	\partial 2 f2 f e4 f2 c4 f d c2 bes, f f4 c2 a,4 bes, c f,2 c f, a,4 c2 c4 g g, c2 f bes, f,4 c2 d4 bes, c f,2
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

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	Dear Fa -- ther, who hast made us all,
	To Thee Thy chil -- dren hum -- bly pray:
	Look on this babe who at Thy call
	Now en -- ters on life's nar -- row way.
}
sopWordsTwo = \lyricmode
{
	Dear Sav -- ior, for Thy love un -- told 
	We bring this lit -- tle child to Thee.
	Re -- ceive it, Shep -- herd, to Thy fold
	And keep it Thine e -- ter -- nal -- ly.
}
sopWordsThree = \lyricmode
{
	Dear Spir -- it, rest up -- on this child
	As Thou didst brood up -- on the sea,
	And make it pure and un -- de -- filed,
	A ho -- ly tem -- ple un -- to Thee.
}
sopWordsFour = \lyricmode
{
	O Tri -- une God, we hum -- bly pray
	That all Thy bless -- ings be con -- ferred
	Up -- on this child here cleansed to -- day
	By means of wa -- ter and the Word.
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
