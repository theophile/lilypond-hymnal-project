\version "2.10.29"

Title = "The Holy Son of God Most High"

Writer = "Henry More, 1614-87"

Translator = ""

Composer = "Geistliche Lieder, Leipzig, 1539"

Arranger = "Harm. J.S. Bach, 1685-1750"

Tune = "VON HIMMEL HOCH"

Meter = " L.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key c \major
	\tempo 4 = 60	
}

soprano = {	
	\partial 4 c''4 b' a' b'8 (a') g'4 a' b' c'' c'' c'' g' g' e'8 (f') g'4 f' e' e' a' a' g'8 (a') b'4 c''8 (b') a'4 g' c'' b' a' g' a'8 (g') f' (e') d'4 c'  \bar "|." 
}

alto = {
	g'4 g'8 fis' e'4 d' e'8 d' c'4 d' e' e'8 f' g' f' e'4 d' c' c' d' c' c'8 d' e'4 d' d'8 fis' g'4 g' g'8 fis' g'4 e'8 d' d' e' e' d' d' c' c'4 c'8 a b4 c'
}

tenor = {
	e'4 d' c'8 c' b4 c'8 b a g f4 g g c' c' b bes8 a g4 g g g g fis g8 c' b a g b e' d' b4 a g8 e g f f e a b c'4 g8 f e4
}

bass = {
	c4 g4. fis8 g f e4 f8 e d4 c c8 d e4 e8 f g4 g8 f e d c b, c4 c cis d8 c b, a, g,4 d8 c c d g4 g8 fis g e c d b, c f g a f g g, c4
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        The ho -- ly Son of God most high,
	For love of A -- dam’s laps -- èd race,
	Quit the sweet pleas -- ures of the sky
	To bring us to that hap -- py place.
}

sopWordsTwo = \lyricmode
{
	His robes of light He laid a -- side,
	Which did His ma -- jes -- ty a -- dorn,
	And the frail state of mor -- tals tried,
	In hu -- man flesh and fig -- ure born.
}

sopWordsThree = \lyricmode
{
	Whole choirs of an -- gels loud -- ly sing
	The mys -- tery of His sa -- cred birth,
	And the blest news to shep -- herds bring,
	Fill -- ing their watch -- ful souls with mirth.
}

sopWordsFour = \lyricmode
{
	The Son of God thus man be -- came,
	That men the sons of God might be,
	And by their se -- cond birth re -- gain
	A like -- ness to His de -- i -- ty.

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
