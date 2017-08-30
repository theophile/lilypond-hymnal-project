\version "2.10.29"

Title = "Most Ancient of all Mysteries"

Writer = "Frederick William Faber, 1814-63"

Translator = ""

Composer = "John Day's Psalter, 1562"

Arranger = ""

Tune = "ST. FLAVIAN"

Meter = " C.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key f \major
	\tempo 4 = 76	
}

soprano = {	
	\partial 4 f'4 f' e' f' a' g' g' f' f' bes' a' f' g' a'2. \bar "" \break
	a'4 a' bes' c'' a' f' g' a' a' g' f' f' e' f'2. \bar "|."
}

alto = {
	c'4 c' c' c' f' f' e' f' c' f' f' f' d' e'2.
	f'4 f' f' g' e' d' e' f' f' e' f' d' c' c'2.
}

tenor = {
	a4 g g a c' d' c' a a bes c' d' d' cis'2.
	c'4 c' bes g c' a c' c' c' c' a bes g a2.
}

bass = {
	f4 c c f a, bes, a, f, f d f bes bes a2.
	f4 f d e c d c f f c d bes, c f,2.
}

sopWords = \lyricmode
{
        Most an -- cient of all mys -- ter -- ies,
	be -- fore thy throne we lie;
	have mer -- cy now, most mer -- ci -- ful, 
	most ho -- ly Tri -- ni -- ty.
}

sopWordsTwo = \lyricmode
{
	When heav'n and earth were yet un -- made,
	when time was yet un -- known,
	thou in thy bliss and ma -- jes -- ty
	didst live and love a -- lone.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Thou wast not born; there was no fount
	from which thy be -- ing flowed;
	there is no end which thou canst reach:
	but thou art sim -- ply God.
}

sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	How won -- der -- ful cre -- a -- tion is,
	the work which thou didst bless!
	And O what then must thou be -- like,
	e -- ter -- nal Love -- li -- ness!

}

sopWordsFive = \lyricmode
{
 	O lis -- ten then, most pit -- i -- ful,
	to thy poor crea -- ture's heart:
	It bles -- ses thee that thou art God,
	That thou art what thou art.
}

sopWordsSix = \lyricmode
{
 	Most an -- cient of all mys -- ter -- ies,
	low at thy throne we lie;
	have mer -- cy now, most mer -- ci -- ful, 
	most ho -- ly Tri -- ni -- ty.
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
