\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Rise Again, Ye Lion-Hearted"

Writer = "Unknown, ca. 1712"

Translator = "Trans. Martin Franzmann, 1940"

Composer = "Bernhard Klein, 1817"

Arranger = "Adapt. James B. Jordan"

Tune = "LÖWEN, LASST EUCH WIEDERFINDEN"

Meter = " 8.7.8.7.6.6.7.7."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key a \minor
	\tempo 4 = 108	
}

soprano = {	
	d'4 d' f' g' a' b' c'' a' a' a' d'' a' f' e' d'2
	d'4 d' f' g' a' b' c'' a' a' a' d'' a' f' e' d'2
	c''4 c'' d'' c'' b'2 a' a'4 a' c'' a' g'2 f'
	f'4 d' f' g' a' b' c''2 a'4 a' d'' a' f' e' d'2 \bar "|."
}

alto = {
	a4 a d' e' c' e' e' c' f' e' d' d' d' cis' a2
	a4 a d' e' c' e' e' c' f' e' d' d' d' cis' a2
	e'4 g' f' e' e' (d') c'2 f'4 f' e' f' f' (e') c'2
	d'4 bes c' e' c' e' e'2 f'4 e' d' d' d' cis' a2
}

tenor = {
	f4 f a c' a gis a a f a bes f a g f2
	f4 f a c' a gis a a f a bes f a g f2
	c'4 g a a a (gis) a2 c'4 d' c' c' c'2 a
	a4 g a c' a gis a2 f4 a bes f a g f2
}

bass = {
	d4 d d c f e a, a, d c bes, d f, a, d2
	d4 d d c f e a, a, d c bes, d f, a, d2
	c4 e d a, e2 f f4 d a f c2 f,
	d4 g, f, c f e a,2 d4 c bes, d f, a, d2
}

dropLyrics =
{
    \override LyricText #'extra-offset = #'(0 . -8)
    \override LyricHyphen #'extra-offset = #'(0 . -8)
    \override LyricExtender #'extra-offset = #'(0 . -8)
}

sopWords = \lyricmode
{
	Rise a -- gain, ye li -- on -- heart -- ed
	Saints of ear -- ly Chris -- ten -- dom.
	Whith -- er is your strength de -- part -- ed,
	Whith -- er gone your mar -- tyr -- dom?
	Lo, love's light is on them,
	Glo -- ry's flame up -- on them,
	And their will to die doth quell
	E'en the lord and prince of hell.
}
sopWordsTwo = \lyricmode
{
        These the saints by fear un -- shak -- en
	Fac -- ing dan -- ger daunt -- less -- ly;
	These no witch -- ing lust hath tak -- en,
	Lust that lures to van -- i -- ty.
	Mid the roar and rat -- tle
	Of tu -- mul -- tuous bat -- tle
	In de -- sire they soar a -- bove
	All that earth would have them love.
}
sopWordsThree = \lyricmode
{
	Great of heart, they know no turn -- ing,
	Hon -- or, gold, they laugh to scorn,
	Quench de -- sires with -- in them burn -- ing,
	By no earth -- ly pas -- sion torn.
	Mid the li -- ons' roar -- ing,
	Songs of praise out -- pour -- ing,
	Joy -- ous -- ly they take their stand
	On th'a -- re -- na's blood -- y sand.
}
sopWordsFour = \lyricmode
{
	Would to God that I might ev -- en 
	As the mar -- tyred saints of old,
	With the help -- ing hand of Heav -- en,
	Stead -- fast stand in bat -- tle bold! 
	O my God, I pray Thee,
	In the com -- bat stay me.
	Grant that I may ev -- er be
	Loy -- al, staunch, and true to Thee.
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
