\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Agnus Dei"

Writer = ""

Translator = " "

Composer = ""

Arranger = ""

Tune = "John Merbecke, 1549"

Meter = ""

\include "header.ly"
\header {	title = \Title 	
		subtitle = \markup { \italic "(Second Setting)" }
		composer = \Tune }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key e \minor
	\tempo 8 = 112	
	\autoBeamOff
}

soprano = {	
	\cadenzaOn
	e'8 e' fis' g'4 \divisioMinima \bar ""
	e'8 a' a' g' g' a' b' a' a' g'4 \divisioMaior \bar ""
	a'8 b' g' g' fis'4 e' \bar "||" 
	e'8 g' a' b'4 \divisioMinima \bar ""
	b'8 d'' d'' b' b' a' b' a' a' g'4 \divisioMaior \bar ""
	a'8 b' g' g' fis'4 e' \bar "||"
	e'8 e' fis' g'4 \divisioMinima \bar ""
	e'8 a' a' g' g' a' b' a' a' g'4 \divisioMaior \bar ""
	e'4 a' fis' e'1 \bar "|."

}

alto = {
	e'8 e'4~ e' b8 d'4 b8 c'4 d'4. b4 d'8~ d'4.~ d'4 b4
	e'8~ e'4~ e' e'8 d'4. e'4 d'4. b4 e'8 d'4.~ d'4 cis'4
	cis'8 <b e'>4~ <b e'> b8 d'4 b8 c'4 d'4. b4
	cis'4 cis' d' b1
}

tenor = {
	e8 e fis g4 \divisioMinima g8 fis4 e8~ e4 fis4. g4 \divisioMaior fis8 g b4 a g
	b8~ b4~ b \divisioMinima g8~ g4.~ g8 a fis4. g4 \divisioMaior e8 fis g4 a2
	a8 g fis e4 \divisioMinima g8 fis4 e8~ e4 fis4. g4 \divisioMaior
	a4 a a a4 (g2.)
}

bass = {
	e8~ e4~ e e8 d4 e8 c4 d4. e4 d8 g4. d4 e
	e8 e fis g4 e8 b,4. c4 d4. e4 c8 b,4. d4 a,
	a,8 g, fis, e,4 e8 d4 e8 c4 b,8 d4 e
	a,4 a, d e1
}

sopWords = \lyricmode
{
	O Lamb of God, that ta -- kest a -- way the sins of the world, have mer -- cy up -- on us.
	O Lamb of God, that ta -- kest a -- way the sins of the world, have mer -- cy up -- on us.
	O Lamb of God, that ta -- kest a -- way the sins of the world, grant us thy peace.
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
