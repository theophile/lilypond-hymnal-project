\version "2.10.29"

\paper
{
        %page-count = 1
}

Title = \markup{ Make a Joyful Noise Unto The \smallCaps "Lord," All Ye Lands }

Writer = "Based on Psalm 100"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 100C)"

Composer = "Eleanor Hutcheson, 1970"

Arranger = ""

Tune = "ENTER"

Meter = " Irregular"

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 100" }


global = {
	\time 2/4
	\key d \major
	\tempo 4 = 120
	\autoBeamOff
}

soprano = {
	fis'8. fis'16 fis'8 fis' d' a d' fis' a'4 a'8. a'16 a'2
	b'8. b'16 cis''8. cis''16 d''8 a' \oneVoice r4 \voiceOne a'8. a'16 gis'8 fis' e'4 gis'8 a' b'2 a'
	e'8 e' e' e' e'4 d'8 e' fis'2~ fis'4 fis'8 fis' fis'4 fis'8 fis' fis'4 e'8 fis' g'4 g'8 g' g'2
	gis'4 gis'8 gis' a' e'4 a'8 b'4 e'8 b' cis'' a' \oneVoice r4 \voiceOne
	d''8 d'' \times 2/3 {d'' d'' d''} d''4 a'8 a' b'4 b'~ b' b' e''8 e'' d''4 cis'' b' a'2~ a'4
	a'4 fis'8. fis'16 fis'8 fis' d' a d' fis' a'2~ a'
	a'8. a'16 a'8 a' b'4. b'8 b'8. b'16 b'8 b' cis'' a'4 a'8 d''4 d'' d''8 b' cis'' d'' e'' d'' e''4 d''2 \bar "|."
}

alto = {
	fis'8. fis'16 fis'8 fis' d' a d' fis' a'4 g'8. g'16 fis'2
	g'8. g'16 g'8. g'16 fis'8 fis' s4 fis'8. fis'16 e'8 d' e'4 cis'8 cis' fis'4 (e'8[ d']) cis'2
	cis'8 cis' cis' cis' cis'4 b8 cis' d'2~ d'4 d'8 d' dis'4 dis'8 dis' dis'4 cis'8 dis' e'4 e'8 e' e'2
	e'4 e'8 e' e' e'4 e'8 e'4 e'8 e' e' a' s4
	fis'8 fis' \times 2/3 {g' g' g'} a'4 fis'8 fis' g'4 g'~ g' g' gis'8 gis' gis'4 gis'4 gis' a'2~ a'4
	a'4 fis'8. fis'16 fis'8 fis' d' a d' fis' a'2~ a'
	fis'8. fis'16 fis'8 fis' g'4. g'8 gis'8. gis'16 gis'8 gis' g'8 g'4 a'8 a'4 fis' g'8 g' g' g' g' g' g'4 fis'2
}

tenor = {
	fis8. fis16 fis8 fis d a, d fis a4 cis'8. cis'16 d'2
	d'8. d'16 a8. a16 a8 d' \oneVoice r4 \voiceOne a8. a16 a8 a a4 a8 a a4 (gis) a2
	a8 a a a a4 a8 a a2~ a4 a8 a b4 b8 b b4 b8 b b4 b8 b b2
	b4 b8 b a a4 a8 gis4 gis8 gis a a \oneVoice r4 \voiceOne
	a8 a \times 2/3 {a a a} d'4 d'8 d' d'4 d'~ d' d'4 e'8 e' b4 e'4 d' cis'2~ cis'4
	a4 fis8. fis16 fis8 fis d a, d fis a2~ a
	d'8. d'16 d'8 d' d'4. d'8 d'8. d'16 cis'8 b a cis'4 cis'8 d'4 d' b8 d' cis' b cis' b cis'4 a2
}

bass = {
	fis8. fis16 fis8 fis d a, d fis a4 a8. a16 d2
	g8. g16 e8. e16 d8 d s4 d8. d16 d8 d cis4 fis8 fis d4 (e) a2
	a,8 a, a, a, a,4 a,8 a, d2~ d4 d8 d b,4 b,8 b, b,4 b,8 b, e4 e8 e e2
	e4 d8 d cis8 cis4 cis8 b,4 b,8 b, a, a s4
	d8 d \times 2/3 {e e e} fis4 d8 d g4 g~ g g e8 e e4 e e a2~ a4
	a4 fis8. fis16 fis8 fis d a, d fis a2~ a
	d8. d16 d8 d g,4. g8 e8. e16 e8 e a a4 g8 fis4 d g8 g e e a, a, a,4 d2 
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	\override StanzaNumber #'stencil = ##f
	Make a joy -- ful noise un -- to the \markup { \smallCaps "Lord," } all ye lands!
	Serve the \markup { \smallCaps "Lord" } with glad -- ness!
	Come be -- fore His pres -- ence with sing -- ing.
	Know ye that the \markup { \smallCaps "Lord," } He is God; __
	It is He that hath made us and not we our -- selves.
	We are His peo -- ple, the sheep of His pas -- ture.
	En -- ter in -- to His gates with thanks -- giv -- ing __
	And in -- to His courts with praise. __ 
	Be thank -- ful un -- to Him and bless His name. __
	For the \markup { \smallCaps "Lord" } is good; His mer -- cy ev -- er -- last -- ing.
	His truth en -- dur -- eth to all gen -- er -- a -- tions.
}
sopWordsTwo = \lyricmode
{
}
sopWordsThree = \lyricmode
{
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
