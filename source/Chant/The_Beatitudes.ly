%﻿\include "anglican-init.ly"

\version "2.10.29"

Title = "The Beatitudes"

Writer = "Matthew 5:3-12"

Translator = ""

Composer = ""

Arranger = ""

Tune = "E.J. Hopkins"

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
	\key bes \major	
}


soprano = {	
  \textLengthOn s4^"A" \noBreak
  \cadenzaOn f'2
  \divisioMinima
  g'4 f'
  \divisioMinima
  ees'2
  \divisioMaior
  f'2
  \divisioMinima
  d'4 f'
  \divisioMinima
  g' bes'
  \divisioMinima
  bes'4 ( a' ) \bar "" \break
  \divisioMaxima

  \textLengthOn s4^"B" \noBreak
  bes'2
  \divisioMinima
  a'4 fis'
  \divisioMinima
  g'2
  \divisioMaior
  g'2
  \divisioMinima
  <f' ees'>4 bes'
  \divisioMinima
  bes' a'
  \divisioMinima
  bes'2
  \cadenzaOff \set Staff.whichBar = "|."
}

alto = {
  \textLengthOn s4^"" \noBreak
  d'2
  \divisioMinima
  d'4 d'
  \divisioMinima
  c'2
  \divisioMaior
  c'2
  \divisioMinima
  bes4 c'
  \divisioMinima
  bes c'
  \divisioMinima
  c'2
  \divisioMaxima

  \textLengthOn s4^"" \noBreak
  bes2
  \divisioMinima
  c'4 c'
  \divisioMinima
  bes2
  \divisioMaior
  ees'2
  \divisioMinima
  s4 d'
  \divisioMinima
  c' d'8 \glissando ( ees' )
  \divisioMinima
  d'2
}

%tenor = { }

bass = {
  s4 <bes, bes>2
  \divisioMinima
  <bes, g>4 <bes, g>
  \divisioMinima
  <c g>2
  \divisioMaior
  <a, f>2
  \divisioMinima
  <bes, f>4 <a, f>
  \divisioMinima
  <g, f> <g, e>
  \divisioMinima
  <f, f>2
  \divisioMaxima
 
  s4 <d f>2
  \divisioMinima
  <d fis>4 <d a>
  \divisioMinima
  <ees g>2
  \divisioMaior
  <c g>2
  \divisioMinima
  <a, c'>4 <bes, f>
  \divisioMinima
  <f, f> <f, f>
  \divisioMinima
  <bes, f>2
  \set Staff.whichBar = "|."
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
  Blessed_are_the poor in Spirit;
  for theirs_is the kingdom of heaven.

  Blessed_are they who mourn,
  for they __ \skip 4 shall be comforted.
}
sopWordsTwo = \lyricmode
{
  Blessed are the meek;
  for they_shall in -- herit the earth.

  Blessed_are_they_who_hunger_and thirst for righteousness,
  for they __ \skip 4 shall be filled.
}
sopWordsThree = \lyricmode
{
  Blessed are the merciful;
  for they_shall ob -- tain __ \skip 4 mercy.

  Blessed_are_the pure in heart,
  for they shall see __ \skip 4 God.
}
sopWordsFour = \lyricmode
{
  Blessed are the peacemakers;
  for_they_shall_be called the children of God.

  Blessed_are_they_who_are_presecuted_for righteous -- ness' sake,
  for theirs_is the kingdom of heaven.
}
sopWordsFive = \lyricmode
{
	\set stanza = "5. "
	Yea, when this flesh and heart shall fail,
	And mor -- tal life shall cease,
	I shall pos -- sess with -- in the veil,
	A life of joy and peace.
}
sopWordsSix = \lyricmode
{
	\set stanza = "6. "
	When we've been here ten thou -- sand years
	Bright shi -- ning as the sun.
	We've no less days to sing God's praise
	Than when we've first be -- gun.
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
	%\lyricsto "one" \new Lyrics { \set stanza = "4." \sopWordsFour }
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
        "4. "
        \column {
          "Blessed | are the | peacemakers,"
          "For they shall be | called the | children of | God."
          "Blessed are they who are persecuted for | righteous-ness' | sake,"
	  "For | theirs is the | kingdom of | heaven."
      }
      \hspace #3.0
    }
  }
}

\markup {
  \normalsize {
      \hspace #3.0
      \line {
        "5. "
        \column {
      "Blessed are you when they shall revile you and | prese-cute | you,"
      "And say all manner of evil against you | false-ly | for My | sake."
        "Rejoice and be exceedingly glad! For great if your re- | ward in | heaven,"
        "For so they persecuted the | prophets who | were be- | fore you."
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
	"Age after | age_ | A_- | men!"
      }
      \hspace #3.0
    }
  }
}


