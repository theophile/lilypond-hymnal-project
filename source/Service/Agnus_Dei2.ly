\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "Agnus Dei"

Writer = ""

Translator = ""

Composer = ""

Arranger = ""

Tune = "Healey Willan, 1928"

Meter = ""

\include "header.ly"
\header {	title = \Title 	
		subtitle = \markup { \italic "(First Setting)" }
		composer = \Tune }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key g \major	
	\tempo 2 = 82
	\time 3/2
}

melody = {	
	\clef "treble_8" R1. e2^\markup { \box { "Men Only" } } e fis a (g) e f g a b (a) g fis e fis b,1. r1 
	d2 g a b a4 (g a2 fis) e1. R1.
	\clef treble e'2^\markup { \box { "Women Only" } } e' fis' a' (g') e' f' g' a' b' (a') g' fis' e' fis' b1. r2 r2
	d'2 g' a' b' a'4 (g' a'2 fis') e'1. R1.

	e'2^\markup { \box { "All" } } e' fis' a' (g') e' f' g' a' b' (a') g' fis' e' fis' \key e \major b1. R1.
	e'1.~ (e'2 fis') gis' fis'4 (e' fis'1) e'1. \bar "|."
	 
}

soprano = {	
	b2 c' d' e' e' fis' a' g' e' f' g' a' b' a' g' fis' e' fis' fis'1 
	b'2 c'' b'4 a' g' fis' g'2 a' b' a'4 g' a'2 fis' e' g' a' b' c'' d''
	e''4 b' c'' e'' d''2 c''4 d'' e''2 g'' f''4 e'' d'' e'' c''2 b' c''2. b'4~ b'4 ais' cis'' b' ais'2 b'1
	b'2 c'' b'4 a' g' fis' g'2 a' b' a'4 g' a'2 fis' e' g' a' b' a'4 g' fis'2 
	e'1 fis'2 a' g' e' f' g' a' b' a' g' fis' e' fis' \key e \major
	fis'1 b'2 cis'' b'4 a' gis' fis' b'2 a' gis'4 fis' e'2 fis' gis' fis'4 e' fis'1 e'1.
}

alto = {
 	g1 a4 b8 c' b2 c' d' e'1 c'!2 d' e'1 g'2 fis' d' d' cis'1 dis' e'2 c'1 d'2 d' e'4 fis' g'2 e' fis'4 e' dis'2 e'1 fis'2 g'1 fis'2 g'1 a'4 d' e' fis' g' b' c'' b' a'2 b' a'4 fis' g' fis' e' dis' e'2 fis' cis' fis'4 e' dis'1 e'2 c'1 d'2 d' e'4 fis' g' fis' e'2 fis'4 e' dis'2 e'1. e'1 dis'2 b2 c' d' e'2. d'4 c'!2 d'2 e'2. fis'4 g'2 fis'4 e' d'2 d' cis'1

	dis'1 e'2 e'1 dis'2 e'1~ e'4 dis' cis'2 dis' e' cis'2. e'4 dis'2 b1. 

}

tenor = {
	e1 fis2 g1 b2 cis' b a a c'1 e'2 cis' b~ b gis ais b1 b2 e1 a2 b c' d' cis'1 b4 a 
	<< {g2 b c' b a4 b c'2 s1} \\ { <e e,>1.~ e1.~ e1} >> fis2 a g e f g a b a g fis e fis2~ fis1 b2 e1
	a2 b c' d' cis'1 b4 a g2 c'1 b2 c' a g1 b2 cis' b a~ a c'1 e'4 d' cis'2 b~ b4 a gis2 ais \key e \major
	b1 b2 a1 b2~ b1. cis'1 b2 a1 b4 a gis1.
	
}

bass = {
	e2 c4 b, a,2 e c b, a, e a, d c a, e, fis, g, b, cis fis, b, a, g, a,1 c2 b, a, g, a, fis, b, s1.
	R1. R1. R1. R1. R1. R1. b,2 a, g, a,1 c2 b, a, g, a, fis, b, e c4 b, a,2 g, a, b, e c b, a, e a, d c4 b, a,2 c, fis, g, b, cis fis,

	b, a, gis, a, cis b,4 a, gis,2 fis, e, a,1 gis,2 a, fis, b, e,1.  
}

sopWords = \lyricmode
{
	O Lamb of God, __ that ta -- kest a -- way __ the sins of the world
	have mer -- cy up -- on __ us.
	O Lamb of God, __ that ta -- kest a -- way __ the sins of the world
	have mer -- cy up -- on __ us.
	O Lamb of God, __ that ta -- kest a -- way __ the sins of the world
	grant __ us Thy __ peace.
	
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

musicScore = <<
		\new ChordNames \chordmode
                {
                \set majorSevenSymbol = "maj7"
 
                }
    \new Voice = "mel" { \global \melody }
	\new Lyrics = sopranos { s1 }
        %\new Lyrics = sopranosTwo { s1 }
        %\new Lyrics = sopranosThree { s1 }
        %\new Lyrics = sopranosFour { s1 }
        %\new Lyrics = sopranosFive { s1 }
        %\new Lyrics = sopranosSix { s1 }
        %\new Lyrics = sopranosSeven { s1 }
        %\new Lyrics = sopranosEight { s1 }

    	\new Lyrics \lyricsto mel \sopWords    
    	%\new Lyrics \lyricsto mel \sopWordsTwo
	%\new Lyrics \lyricsto mel \sopWordsThree
	%\new Lyrics \lyricsto mel \sopWordsFour
	%\new Lyrics \lyricsto mel \sopWordsFive
	%\new Lyrics \lyricsto mel \sopWordsSix

    \new PianoStaff <<
      \new Staff = "upper" <<
		\clef treble
		\context Voice = "one" { \global \voiceOne  \soprano }
      		\context Voice = "two" { \global \voiceTwo \alto } >>
			
      \new Staff = "lower" <<
      		\clef bass
      		\context Voice = "one" { \global \voiceThree \tenor }
      		\context Voice = "two" { \global \voiceFour \bass } >>
    >>
  >>

\include "standard-layout.ly"
