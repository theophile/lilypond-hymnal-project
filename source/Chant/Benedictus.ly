%\include "anglican-init.ly"

\version "2.10.29"

Title = "Benedictus"

Writer = ""

Translator = ""

Composer = " "

Arranger = ""

Tune = "J. Turle"

Meter = ""

\include "header.ly"
\header { 	title = \Title 
		composer = \Tune }

global = {
	\set Staff.whichBar = #""
  	%\set Score.timing = ##f
  	#(set-accidental-style 'modern-voice)
  	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  	\override Score.PaperColumn #'keep-inside-line = ##t
	\key g \major	
}


soprano = {	
  \textLengthOn s4^\markup {\box {"A"}} \noBreak
  \cadenzaOn b'2
  \divisioMinima
  a'4 g'
  \divisioMinima
  e'2
  \divisioMaior
  fis'2
  \divisioMinima
  g'4 g'
  \divisioMinima
  c'' b'
  \divisioMinima
  a'2 \break
  \divisioMaxima

  \textLengthOn s4^\markup {\box {"B"}} \noBreak
  c''2
  \divisioMinima
  b'4 a'
  \divisioMinima
  fis'2
  \divisioMaior
  d'2
  \divisioMinima
  e'4 g'
  \divisioMinima
  b' a'
  \divisioMinima
  g'2
  \cadenzaOff \set Staff.whichBar = "|."
}

alto = {
  \textLengthOn s4^"" \noBreak
  b2
  \divisioMinima
  c'4 d'
  \divisioMinima
  e'2
  \divisioMaior
  c'2
  \divisioMinima
  d'4 b
  \divisioMinima
  d' d'
  \divisioMinima
  d'2
  \divisioMaxima

  \textLengthOn s4^"" \noBreak
  c'2
  \divisioMinima
  d'4 e'
  \divisioMinima
  d'2
  \divisioMaior
  d'2
  \divisioMinima
  d'4 c'
  \divisioMinima
  d' c'
  \divisioMinima
  b2
}

%tenor = { }

bass = {
  s4 <g, d>2
  \divisioMinima
  <a, fis>4 <b, g>
  \divisioMinima
  <c g>2
  \divisioMaior
  <a, a>2
  \divisioMinima
  <b, g>4 <e g>
  \divisioMinima
  <a fis> g
  \divisioMinima
  <d fis>2 
  \divisioMaxima
 
 
  s4 <a, e>2
  \divisioMinima
  <b, gis>4 <c a>
  \divisioMinima
  <d a>2
  \divisioMaior
  <b, g>2
  \divisioMinima
  <g c>4 <e g>
  \divisioMinima
  <d g> <d fis>
  \divisioMinima
  <g, g>2
  \set Staff.whichBar = "|."
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
  "Blessed be the Lord" God of Israel;
  "for He hath visited" and re -- deemed His people;

  "And hath raised up a mighty sal" -- vation for us,
  "in the house" of His ser -- vant David;
}
sopWordsTwo = \lyricmode
{
  "As He spake by the mouth of His" ho -- ly prophets,
  "which have been" since the world be -- gan.

  "That we should be saved from our" e -- ne -- mies,
  "and from the" hand of all that "hate us."

}
sopWordsThree = \lyricmode
{
  "To perform the mercy promised" to our forefathers,
  "and to remember His" ho -- ly co -- ve -- nant;

  "To perform the oath which He swore to our forefather" A -- bra -- ham,
  that He __ \skip 1 would give us.
}
sopWordsFour = \lyricmode
{
  "That we being delivered out of the hand of our" e -- ne -- mies
  might serve Him with -- out fear

  "In holiness and righteousness" be -- fore Him,
  all the days of our life.
}
sopWordsFive = \lyricmode
{
 
}
sopWordsSix = \lyricmode
{
 
}


musicScore = \context StaffGroup <<
   \include "insertchords.ly"
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \soprano }
      \context Voice = "two" { \global \voiceTwo \alto }
    >>

	\lyricsto "one" \new Lyrics { \set stanza = "1." \sopWords }
	\lyricsto "one" \new Lyrics { \set stanza = "2." \sopWordsTwo }
	\lyricsto "one" \new Lyrics { \set stanza = "3." \sopWordsThree }
	\lyricsto "one" \new Lyrics { \set stanza = "4." \sopWordsFour }
	%\lyricsto "one" \new Lyrics { \set stanza = "5." \sopWordsFive }
	%\lyricsto "one" \new Lyrics { \set stanza = "6." \sopWordsSix }
	%\lyricsto "one" \new Lyrics { \set stanza = "7." \sopWordsSeven }
	%\lyricsto "one" \new Lyrics { \set stanza = "8." \sopWordsEight }

    \context Staff = "lower" <<
      \clef bass
      %\context Voice = "one" { \global \voiceThree \tenor }
      \context Voice = "two" { \global \voiceFour \bass }
    >>

  >>

\include "chant-layout.ly"

\markup {
  \normalsize {
      \hspace #3.0
      \line {
        "5. "
        \column {
          "And thou, child, shalt be called the prophet | of the | Highest:"
          "for thou shalt go before the face of the | Lord to pre|pare His | ways;"
          "To give knowledge of salvation un|to His | people"
	  "for the re|miss-ion | of their | sins."
      }
      \hspace #3.0
    }
  }
}

\markup {
  \normalsize {
      \hspace #3.0
      \line {
        "6. "
        \column {
        "Through the tender mercy | of our | God;"
        "whereby the dayspring from on | high hath | visit-ed | us;"
        "To give light to them that sit in darkness, and in the | shadow of | death,"
        "and to guide our feet in|to the | way of | peace."
      }
      \hspace #3.0
    }
  }
}
 
\markup {
  \normalsize {
      \hspace #3.0
      \line {
        "R. "
        \column {
	"Glory to the Father and | to the | Son,"
	"And | to the | Ho-ly | Spirit;"
	"As it was in the beginning, is now, and | e-ver | shall be,"
	"Age after | age_ | A_|men!"
      }
      \hspace #3.0
    }
  }
}


