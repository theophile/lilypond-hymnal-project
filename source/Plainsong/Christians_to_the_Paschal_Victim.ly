\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "Christians, to the Paschal Victim"

Writer = "Wipo of Burgundy, c. 1030"

Translator = "Trans. The English Hymnal, 1906"

Composer = "Wipo of Burgundy, c. 1030"

Arranger = "Plainsong Sequence, Mode I"

Tune = "VICTIMAE PASCHALI"

Meter = ""

\include "header.ly"

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key d \major	
	\tempo 8 = 96
}

melody = {	
	\cadenzaOn 
	\autoBeamOff
	e'8 d'4 e'8 g' a' g' fis' e'4 \divisioMinima \bar ""
	b'8 a' fis' a' g' fis'4 e' \bar "||" 

	b'8^\markup { \box { "Women Only" } } d'' e'' b' a' b' b'4 \divisioMaior \bar ""
	b'4 a'8 b' a' g' fis' e'4 \divisioMinima \bar ""
	g'8 a' e' fis' e' d' fis' g' fis'4 e' \bar "||" 

	b'8^\markup { \box { "All" } } d'' e'' b' a' b' b'4 \divisioMinima \bar ""
	b'8 a' b' a' g' fis' e'4 \divisioMaior \bar ""
	g'8 a' e' fis' e' d'4 fis'8 g' fis'4 e' \bar "||" 

	b8^\markup { \box { "Men Only" } } d' e' \divisioMinima \bar ""
	g'8 a'[ g'] fis' (e'4) \divisioMinima \bar ""
	d'8 g' fis' e' fis' d' e'4 \bar "||"

	g'8^\markup { \box { "Women Only" } } b' a' b' g' a' g'[ fis'] e'4 \divisioMaior \bar ""
	e'8 a' g' a' b' a' g' a' g'[ fis'] e'4 \bar "||" 
	
	b8 d' e' g' a'[ g'] fis' (e'4) \divisioMinima \bar ""
	d'8 g' fis' e' fis' d'4 e' \bar "||" 

	g'8 b' a' b' g' a' g'[ fis'] e'4 \divisioMaior \bar ""
	e'8 a' g' a' b' g' a' g'[ fis'] e'4 \bar "||" 

	b'8^\markup { \box { "All" } } d'' e'' b' b' a' b' b'4 \divisioMinima \bar ""
	b'8 d'' a'[ fis'] g' fis'4 e' \divisioMaior  \bar ""
	d'8 fis' e' a' b' b'4 \divisioMinima  \bar ""
	a'8^\markup \bold \italic {rit. }[ fis'] g' fis'4 e' \bar "||" d'2 e' \bar "|."
}

soprano = {	
	\cadenzaOn 
	\autoBeamOff
	e'8 d'4 e'8[ g'] a'[ g'] fis' e'4  \divisioMinima
	b'8[ a' fis'] a'[ g'] fis'4 e' 

	b'8[ d'' e''] b'[ a'] b' b'4  \divisioMaior
	b'4 a'8 b'[ a' g'] fis' e'4 \divisioMinima
	g'8[ a' e' fis'] e'[ d' fis' g'] fis'4 e' 

	b'8[ d''] e''[ b' a'] b' b'4 \divisioMinima
	b'8[ a'] b'[ a' g'] fis' e'4  \divisioMaior
	g'8 a'[ e' fis' e'] d'4 fis'8[ g'] fis'4 e' 

	b8 d'[ e'] \divisioMinima
	g'8 a'[ g'] fis' (e'4) \divisioMinima
	d'8[ g'] fis'[ e'] fis'[ d'] e'4 

	g'8 b'[ a'] b'[ g' a'] g'[ fis'] e'4 \divisioMaior
	e'8 a'[ g' a'] b'[ a' g' a'] g'[ fis'] e'4 
	
	b8 d'[ e' g'] a'[ g'] fis' (e'4) \divisioMinima
	d'8 g'[ fis' e' fis'] d'4 e'

	g'8 b'[ a'] b'[ g' a'] g'[ fis'] e'4 \divisioMaior
	e'8 a'[ g' a' b'] g'[ a'] g'[ fis'] e'4 

	b'8[ d''] e''[ b'] b'[ a'] b' b'4 \divisioMinima
	b'8[ d''] a'[ fis' g'] fis'4 e' \divisioMaior
	d'8 fis'[ e'] a'[ b'] b'4 \divisioMinima
	a'8[ fis' g'] fis'4 e'

	d'2 e'
}

alto = {
 	b4.~ b4 d' b4. d'4. e'4 d' b
	g'4. fis'4 a'8 g'4 d'4. d'4 b8 cis'!4. b2 s1
	fis'4 <e' b'> a' g' <fis' d'> <e' b>4.~ b4. d'8 c'!2 d'4  d'2 b4
	b2~ b4~ b4. d'4 c'!4. s4.
	e'8 <fis' d'>4~ d'4.~ d'4 e' e'8~ e'4. d'2~ d'4 b
	s1 s1 s4
	e'8 d'4~ d'4.~ d'4 e' e'8~ e'2. d'4 e'
	g'2 <fis' d'>4 <d' g'>4. d'4~ d'4. b2 b4. e'4 d' d' e'8 d'4 b
	d'2 b

}

tenor = {
	g4.~ g4 fis8 g a g4 fis a8 c'4 a g 
	g8 b c'! d'4~ d'4. \divisioMaior s1 s2 s8 a4~ a8 b a4 g
	d' b4.~ b4. s2 s8 g4. \divisioMaior g8 e4 a fis b a g
	d2 e4 g4.~ g4 a4~ a8 g~ g4 
	s4. g8 b4~ b4 c'! \divisioMaior c'!8~ c'4 e8 fis4 g a g
	b2~ b4 cis'!4. b4.~ b4 a g
	c'!8 g4~ g4.~ g4~ g4 \divisioMaior c'8~ c'2. a4 g
	b8 d' e' b~ b a g4. fis4~ fis8 a4~ a g \divisioMaior fis8 g4 e fis fis8^\markup \bold \italic {rit. } a c'! a4 g
	a2 g
}

bass = {
	g4. e4 d e4. b,8 d4 c d e
	s2 s8 g4. g4 fis8 g4. a e4 g fis d e2
	b4 g fis8 e4. d4 g,4.~ g,4. b,8 a,2 b,4 b, d e
	g,2~ g,4~ g,4. b,4 a,4~ a,8 b, c!4
	s1 s4. c!4. b,2 d4 e 
	g2 e4 a4. b8 g4~ g fis e
	s4. b,4.~ b,4 c! c'!8 c!2. d4 e
	g4 <e b> d g,4. b,4 d4. e2 b,8 g,4 c! b, d c!8 d4 e
	fis2 e
}

sopWords = \lyricmode
{
	Chris -- tians, to the Pas -- chal vic -- tim 
	of -- fer your thank -- ful prais -- es!

	A lamb the sheep re -- deem -- eth:
	Christ, who on -- ly is sin -- less,
	re -- con -- ci -- leth sin -- ners to the Fa -- ther.

	Death and life have con -- tend -- ed
	in that com -- bat stu -- pen -- dous:
	the Prince of life, who died,
	reigns im -- mor -- tal.

	Speak, Ma -- ry, de -- clar -- ing 
	what thou saw -- est, way -- far -- ing:

	"\"The" tomb of Christ, who is liv -- ing,
	the glo -- ry of Je -- sus' re -- sur -- rec -- tion;

	Bright an -- gels at -- test -- ing,
	the shroud and nap -- kin rest -- ing.

	Yea, Christ my hope is a -- ris -- en;
	to Gal -- i -- lee He goes be -- fore "you.\""

	Christ in -- deed from death is ris -- en,
	our new life ob -- tain -- ing;
	have mer -- cy, vic -- tor King, ev -- er reign -- ing!
	A -- men!
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
