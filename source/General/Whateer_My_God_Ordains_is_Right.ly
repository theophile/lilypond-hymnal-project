\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "Whate'er My God Ordains Is Right"

Writer = "Samuel Rodigast, 1675"

Translator = "Trans. Catherine Winkworth, 1863 (alt. 1961)"

Composer = "Attr. Severus Gastorius, 1675"

Arranger = ""

Tune = "WAS GOTT TUT"

Meter = " 8.7.8.7.4.4.8.8."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key f \major
	\tempo 4 = 100
	\autoBeamOff
}

soprano = {	
	\partial 4
	c'4 f' g' a' bes' c''4. bes'8 a'4 d'' c'' bes' a' bes'8 [a'] g'2 f'4 \bar ""
	c'4 f' g' a' bes' c''4. bes'8 a'4 d'' c'' bes' a' bes'8 [a'] g'2 f'4 \bar ""
	c''4 d'' d'' g' g' c'' c'' f' a' g' f' e' f'8 [e'] d'4 d' c' \bar "" c'' d'' c'' bes' a' g' g' f' \bar "|."
}

alto = {
	c'4 d' e' f' f' e' g' f' f' f' f'8 [e'] f'4 f' f' (e') c'
	c'4 d' e' f' f' e' g' f' f' f' f'8 [e'] f'4 f' f' (e') c'
	f' f' g'8 [f'] e'4 e' e' f'8 [ees'] d'4 c' c' c'8 [b] c'4 c' c' b c' f' f' e' d' c'8 [f'] f'4 e' f'
}

tenor = {
	a4 a c' c' bes g c' c' bes a bes c' bes8 [c'] d'4 (c') a
	a4 a c' c' bes g c' c' bes a bes c' bes8 [c'] d'4 (c') a
	a bes g g g a f f f e f g f8 [g] a4 g8 [f] e4 c' bes g f8 [g] a [bes] c'4. bes8 a4
}

bass = {
	f4 d c f d c e f bes f g f8 [e] d [c] bes,4 (c) f
	f4 d c f d c e f bes f g f8 [e] d [c] bes,4 (c) f
	f bes, b, c c8 [bes,] a,4 a, bes, f, c d c8 [b,] a, [g,] f,4 g, c a, bes, c d8 [e] f4 c c f,
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	f4 d:m c f bes:/d c c:7/e f bes f c:7/g f bes:/d bes:6 c f2
	d4:m c f bes:/d c c:7/e f bes f c:7/g f bes:/d bes:6 c f2
	bes4 g:/b c c:7 a:m f:7/a bes f c g:7/d c c:/g d:m7/f g c f:/a bes c d:m d:m7/f c:sus4 c:7 f
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
	What -- e’er my God or -- dains is right:
	His ho -- ly will a -- bid -- eth;
	I will be still what -- e’er He doth;
	And fol -- low where He guid -- eth;
	He is my God; though dark my road,
	He holds me that I shall not fall:
	Where -- fore to Him I leave it all.
}
sopWordsTwo = \lyricmode
{
        What -- e’er my God or -- dains is right:
	He ne -- ver will de -- ceive me;
	He leads me by the pro -- per path:
	I know He will not leave me.
	I take, con -- tent, what He hath sent;
	His hand can turn my griefs a -- way,
	And pa -- tient -- ly I wait His day.
}
sopWordsThree = \lyricmode
{
	What -- e’er my God or -- dains is right:
	Though now this cup, in drink -- ing,
	May bit -- ter seem to my faint heart,
	I take it, all un -- shrink -- ing.
	My God is true; each morn a -- new
	Sweet com -- fort yet shall fill my heart,
	And pain and sor -- row shall de -- part.
}
sopWordsFour = \lyricmode
{
	What -- e’er my God or -- dains is right:
	Here shall my stand be ta -- ken;
	Though sor -- row, need, or death be mine,
	Yet I am not for -- sa -- ken.
	My Fa -- ther’s care is round me there;
	He holds me that I shall not fall:
	And so to Him I leave it all.
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
