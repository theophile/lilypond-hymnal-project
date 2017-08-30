\version "2.10.29"

\paper
{
        page-count = 1
}

Title = "O All Ye Kingdoms of the Earth"

Writer = "Based on Psalm 68:32-35"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 68E)"

Composer = "Arr. from Ludwig van Beethoven"

Arranger = ""

Tune = "MUNICH (CROYDON)"

Meter = " C.M."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 68:32-35" }


global = {
	\time 4/4
	\key ees \major
	\tempo 4 = 120
	\autoBeamOff
}

soprano = {
	\partial 2
	bes'4. (aes'8) g'4 g' g'8[ aes'] bes'[ c''] c''4 f' f' g'8[ f'] ees'4 ees' f' f' g'2 (f'4)
	bes'8[ aes'] g'4 g' g'8[ aes'] bes'[ c''] c''4 f' f' g'8[ f'] ees'[ f'] g'[ aes'] bes'4 bes' bes'2.
	d''4 ees''2 d''4 (c'') bes'2 aes' g'^\fermata \bar "|."
}

alto = {
	g'4. (f'8) ees'4 ees' ees'8[ f'] g'[ aes'] aes'4 d' d' ees'8[ d'] ees'4 ees' ees' d' ees'2 (d'4) 
	d' ees' ees' ees'8[ f'] g'[ aes'] aes'4 d' d' d' ees'8[ d'] ees'[ f'] g'4 aes' g'2 (f'4)
	aes'4 g' (aes') bes' (aes') g'2 f' ees'
}

tenor = {
	ees'2 bes4 bes bes ees' d' bes bes bes8[ aes] g4 bes bes bes bes2.
	bes4 bes bes bes ees' d' bes bes r4 r2 r4
	d'4 ees' ees' d'8[ c'] bes4 bes (ees'2) ees'4 ees' ees' bes bes bes2^\fermata
}

bass = {
	ees2 ees4 ees ees ees bes, bes, bes, bes, ees g bes bes, ees2 (bes,4) 
	bes, ees ees ees ees bes, bes, bes, s4 s2 s4
	bes,4 ees8[ f] g[ aes] bes4 bes, ees f g aes bes2 bes, ees
}

skipFour = \repeat unfold 22 { \skip 8 }

sopWords = \lyricmode
{
	O __ all ye king -- doms of the earth, Sing prais -- es un -- to God;
	And Him Who is the Lord of all With prais -- es do ye laud,
	With prais -- es do ye laud.
}
sopWordsTwo = \lyricmode
{
	To __ Him that rides on heav'n of heav'ns, Which He of old did found;
	Lo, He sends out His voice, a voice In might that doth a -- bound,
	In might that doth a -- bound.
}
sopWordsThree = \lyricmode
{
 	\skipFour
	\set stanza = "(Tenor)"
	With prais -- es do ye laud, With prais -- es do ye laud.
}
sopWordsFour = \lyricmode
{
 	\skipFour
	In might that doth a -- bound, In might that doth a -- bound.
}
sopWordsFive = \lyricmode
{
 	\skipFour
	\set stanza = "(Bass)"
	With prais -- es do ye laud, With prais -- es do ye laud.
}
sopWordsSix = \lyricmode
{
 	\skipFour
	In might that doth a -- bound, In might that doth a -- bound.
}

sopWordsSeven = \lyricmode
{
 
}

sopWordsEight = \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \new ChordNames \chordmode { \set majorSevenSymbol = "maj7"
		ees1. bes2. ees8:/bes bes:7 ees4 ees:/g bes:sus4 bes ees2 bes4 bes:7 ees1 bes2. r1
		bes4:7 ees ees:/g bes bes:7 ees ees:sus4/f g:m aes ees2:/bes bes ees2
		}
	\new Lyrics = "aboveOne" { s4 }
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \soprano }
      \context Voice = "two" { \global \voiceTwo \alto }
    >>
	%\context Lyrics = "aboveOne" \lyricsto "one" \sopWordsFour
	\lyricsto "one" \new Lyrics { \set stanza = "1." \sopWords }
	\lyricsto "one" \new Lyrics { \set stanza = "2." \sopWordsTwo }
	%lyricsto "one" \new Lyrics { \set stanza = "3." \sopWordsThree }
	%\lyricsto "two" \new Lyrics { \sopWordsFive }
	%\lyricsto "one" \new Lyrics { \set stanza = "5." \sopWordsFive }
	%\lyricsto "one" \new Lyrics { \set stanza = "6." \sopWordsSix }
	%\lyricsto "one" \new Lyrics { \set stanza = "7." \sopWordsSeven }
	%\lyricsto "one" \new Lyrics { \set stanza = "8." \sopWordsEight }

	\new Lyrics = "aboveTwo" { s4 }
    \context Staff = "lower" <<
      \clef bass
      \context Voice = "three" { \global \voiceThree \tenor }
      \context Voice = "four" { \global \voiceFour \bass }
    >>

	%\context Lyrics = "aboveTwo" \lyricsto "three" \sopWordsThree
	\new Lyrics \with { alignAboveContext = #"lower" } \lyricsto "three" { \sopWordsThree }
	\new Lyrics \with { alignAboveContext = #"lower" } \lyricsto "three" { \sopWordsFour }
	%\context Lyrics = "aboveOne" \lyricsto "three" \sopWordsFour
	\lyricsto "four" \new Lyrics { \sopWordsFive }
	\lyricsto "four" \new Lyrics { \sopWordsSix }
	
  >>
	
\include "standard-layout.ly"

\markup { \hspace #5 
 \columns  { 
  \column { \line {
     "3. "
     \column {
       	"All strength to God do ye ascribe,"
	"Because His majesty"
	"Is over Israel; His strength"
	"Is in the heavens high."
     }
   } 
  } 
  \column { \line {
     "4. "
     \column {
       	"Thou, God, art dreadful from Thy place;"
	"Isr'el's own God is He,"
	"Who gives His people strength and power;"
	"O let God blessed be."
     }
   } 
  }
  }
 \vspace #1
}

\include "tag.ly"
