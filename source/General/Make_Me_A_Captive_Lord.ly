\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Make Me a Captive, Lord"

Writer = "George Matheson, 1890"

Translator = ""

Composer = "Anonymous"

Arranger = "The Wesleyan Sacred Harp, 1856"

Tune = "AMERICA"

Meter = " 6.6.8.6."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key f \minor
	\tempo 4 = 96
	\autoBeamOff
}

soprano = {	
	\partial 2
	d''2 bes'4 d'' c'' bes' a'2. d''4 bes' g' fis' d'8 [fis'] g'2. 
	\oneVoice r4 r1 r2 r4 \voiceOne r4 r2 r4 bes'4 d'' d'' d'' f'' d'' c''8 [bes'] a'4 a' bes' g' fis' fis' g'1  \bar "|."
}

alto = {
	d'2 d'4 d' fis' d' fis'2. fis'4 f'! ees' d' d' d'2.
	s4 s1 s2 s4 d'4 g' g' g' d' d' d' f'2~ f'2. f'4 f' ees' c' d' d'1
}

tenor = {
	g2 g4 bes a g d'2. fis'4 d' c'8 [bes] a4 g8 [fis] g2.
	r4 r2 r4 bes4 c' c' c' f'4 d' d' d' bes a g bes c' d'2. d'4 d' c'8 [bes] a4 g8 [fis] g1
}

bass = {
	g2 g4 g fis g d2. d4 bes, c d d g,2.
	g,4 d d d bes, f f f d g g g bes8 [g] fis4 d d2~ d2. d4 bes, c d d g,1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	Make me a cap -- tive, Lord, 
	and then I shall be free; 
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
	
}
sopWordsTwo = \lyricmode
{
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
	\set stanza = "(Bass)"
   	force me to ren -- der up my sword, 
	force me to ren -- der up my sword, __
	and I shall conqu -- 'ror be.
}
sopWordsThree = \lyricmode
{
   	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
	\set stanza = "(Tenor)"
   	force me to ren -- der up my sword, 
	and I shall conqu -- 'ror be;
}
sopWordsFour = \lyricmode
{
 	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
	\set stanza = "(Soprano)"
	force me to ren -- der up my sword,
}
sopWordsFive = \lyricmode
{
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
	\set stanza = "(Alto)"
	force me to ren -- der up my sword, __
	and I shall conqu -- 'ror be.
}
sopWordsSix = \lyricmode
{
  
}
sopWordsSeven = \lyricmode
{
 
}
sopWordsEight= \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \include "insertchords.ly"
	\new Lyrics = "aboveOne" { s4 }
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \transpose g f \soprano }
      \context Voice = "two" { \global \voiceTwo \transpose g f \alto }
    >>
	\context Lyrics = "aboveOne" \lyricsto "one" \sopWordsFour
	\lyricsto "one" \new Lyrics { \set stanza = "1." \sopWords }
	%\lyricsto "one" \new Lyrics { \set stanza = "2." \sopWordsTwo }
	%lyricsto "one" \new Lyrics { \set stanza = "3." \sopWordsThree }
	\lyricsto "two" \new Lyrics { \sopWordsFive }
	%\lyricsto "one" \new Lyrics { \set stanza = "5." \sopWordsFive }
	%\lyricsto "one" \new Lyrics { \set stanza = "6." \sopWordsSix }
	%\lyricsto "one" \new Lyrics { \set stanza = "7." \sopWordsSeven }
	%\lyricsto "one" \new Lyrics { \set stanza = "8." \sopWordsEight }

	\new Lyrics = "aboveTwo" { s4 }
    \context Staff = "lower" <<
      \clef bass
      \context Voice = "three" { \global \voiceThree \transpose g f \tenor }
      \context Voice = "four" { \global \voiceFour \transpose g f \bass }
    >>

	\context Lyrics = "aboveTwo" \lyricsto "three" \sopWordsThree
	\lyricsto "four" \new Lyrics { \sopWordsTwo }
	
  >>
	
\include "standard-layout.ly"
\markup { \hspace #10 
 \columns  { 
  \column { \line {
     "2. "
     \column {
       	"I sink in life's alarms"
	"when by myself I stand;"
	"imprison me within Thine arms,"
	"and strong shall be my hand."
     }
   } 
  } 
  \column { \line {
     "3. "
     \column {
       	"My will is not my own"
	"till Thou hast made it Thine;"
	"if it would reach a monarch's throne,"
	"it must its crown resign."
     }
   } 
  }
  }
 \vspace #1
}

\markup { \vspace #2 \hspace #42 
 \columns  { 
  \column { \line {
     "4. "
     \column {
       	"I only stand unbent"
	"amid the clashing strife"
	"when on Thy bosom I have leaned"
	"and found in Thee my life."
     }
   } 
  } 
 }
}



\include "tag.ly"
