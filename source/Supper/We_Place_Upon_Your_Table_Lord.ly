\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "We Place Upon Your Table, Lord"

Writer = "M.F.C. Wilson, 1884-1944"

Translator = ""

Composer = "W. Walker, 1835"

Arranger = "Arr. C. Meredith, 2010"

Tune = "DISTRESS"

Meter = " L.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key d \minor
	\tempo 4 = 90	
}

soprano = {	
	\partial 2
	d'2 f'4 g' a'2	g' f'4 d'8 (c') d'1 
	g'2 a'4 c'' \break d''2 d'' c''4 a' g'2~ g'
	f' a'4 c'' d''2 c'' a'4 f' \break c''2 d' f'4 g' a'2 g' f'4 d'8 (c') d'1~ d'2
	 \bar "|."
}

alto = {
	d'2 d'4 d' c' (d') d'2 c'4 bes~ (bes a8 g a2) 
	e'2 f'4 g' f'2 g'2 c'4 f'4 f' (e'8 d' e'2) 
	f'2 f'4 f' f'2 f' f'4 d' e'2 a d'4 d' c' (d') d'2 c'4 bes4~ (bes a8 g a2~ a)
}

tenor = {
	d'4 (c') bes a a2 bes a4 g f1 
	c'2 c'4 c' bes2 bes a4. bes8 c'2~ c'4 bes2 a4 c'4 c'2 bes4 a2 c'4 bes g2 d'4 (c') bes a a2 b a4 g f1~ f2
}

bass = {
	d2 d4 e f2 g a4 bes, d1 
	c2 f4 e d f g2 a4 f c2~ c2 f f,4 a, bes,2 f4 g a4 d c2 d d4 e f2 g a,4 bes, d1~ d2
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
	We place up -- on Your ta -- ble, Lord,
	The food of life, the bread and wine,
	As sym -- bols of our Dai -- ly work,
	Ac -- cord -- ing to Your grand de -- sign.
}
sopWordsTwo = \lyricmode
{
	With -- in these sim -- ple things there lie
	The height and depth of hu -- man life:
	Our pain and tears, our thoughts and toils,
	Our hopes and fears, our joy and strife.
}
sopWordsThree = \lyricmode
{
	Ac -- cept them, Lord; they come from You;
	We take them hum -- bly from Your hand.
	These gifts of Yours for high -- er use
	We of -- fer up as You com -- mand.
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
