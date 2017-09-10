\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Lord, Keep Us Steadfast in Thy Word"

Writer = "Martin Luther, 1541"

Translator = "Trans. Catherine Winkworth, 1863"

Composer = "Joseph Klug, 1543"

Arranger = "Geist­liche Lieder"

Tune = "ERHALT UNS, HERR"

Meter = " L.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key g \major
	\tempo 4 = 96
}

soprano = {	
	e'2 g'4 e' d' e' g' fis' e'2 g' a'4 a' b' g' a' a' b'2
	b'2 c''4 b' d'' b' a' a' g'2 b' g'4 a' g' fis' e' d' e'2 \bar "|."
}

alto = {
	b2 e'4 a b c' e' d' b2 e' g'4 fis' d' e' fis' e' dis'2
	d'?2 e'4 d' d' g' g' fis' d'2 d' e'4 e' d' d' b b b2
}

tenor = {
	g2 b4 e fis a b b g2 b e'4 d' b b d' a fis2 
	g2 g4 g a d' e' d' b2 g g4 c' b a g fis g2
}

bass = {
	e2 e4 c b, a, g, b, e2 e c4 d g e d c b,2 
	g, c4 g fis g c d g,2 g c4 a, b, d e b, e2
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	Lord, keep us stead -- fast in Thy Word;
	Curb those who fain by craft and sword
	Would wrest the king -- dom from Thy Son
	And set at naught all He hath done.
}
sopWordsTwo = \lyricmode
{
        Lord Je -- sus Christ, Thy pow'r make known,
	For Thou art Lord of lords a -- lone;
	De -- fend Thy Chris -- ten -- dom that we
	May ev -- er -- more sing praise to Thee.
}
sopWordsThree = \lyricmode
{
	O Com -- fort -- er of price -- less worth,
	Send peace and u -- ni -- ty on earth.
	Sup -- port us in our fin -- al strife
	And lead us out of death to life.
}
sopWordsFour = \lyricmode
{
 
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
