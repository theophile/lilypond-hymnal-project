\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = \markup { O Sing a New Song to the \smallCaps "Lord" }

Writer = "Based on Psalm 98"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 98A)"

Composer = "Thomas Jarman, 1803"

Arranger = ""

Tune = "LYNGHAM"

Meter = " C.M."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 98" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 2/2
	\key g \major
	\tempo 2 = 90
}

soprano = {	
	g'2 b'4. c''8 d''8 (e'' d'' c'' b'4) c'' b' (g') a' (fis') g'2.
	b'4 c'' b' a' g' a'2. \bar "" \break a'4 b'8 (a' b' c'' d''4) e'' d''2 cis'' d''1
	d''2 d''4 d'' b'4. (a'8 g'4) b' c'' (b') a' (g') a'2. \bar "" \break r4
	r2 r4 g'4 c'' c'' c'' c'' b'2. b'4 a' a' a' a' \break d''2. d''4 e'' (d'' c'') b' a'2. a'4 g'1 \bar "|."
}

alto = {
	d'2 g'4. g'8 g'2. g'4 g' (d') d'2 d'2. 
	g'4 fis' g' d' g' fis'2. fis'4 g'2. g'4 fis'2 g' fis'1
	g'2 a'4 fis' g'2. g'4 g'2 fis'4 (g') fis'2. s4
	R1 r2 r4 e'4 d' d' d' g' fis'2. fis'4 g' (fis' g'2~ g' fis'4) g' g'2 fis' g'1
}

tenor = {
	b2 d'4. c'8 b2. e'4 d' (b) c' (a) b2. d'4 d' d' d' cis' a2. d'4 d'2 (b4) b a2 a a1
	b2 a4 d' d'4. (c'8 b4) d'4 e' (d' c') b d'2. r4
	\override MultiMeasureRest #'staff-position = #8
	R1 R1 r2 r4 d'4 d' d' d' d' b (c' d') b c' (d'2) d'4 d'2. c'4 b1
}

bass = {
	g2 g4. g8 g2. c4 d2 d g,2. g4 a g fis e d2. d4 g2. e4 a2 a, d1
	g2 fis4 d g2. g4 g2. g4 d2.
	d4 g a b g e2. c4 g g g g d2. d4 g (a b g c' b a) g d2 d g1
}

sopWords = \lyricmode
{
	O sing a new __ song to the \markup { \smallCaps "Lord" }
	For won -- ders He has done,
	For won -- ders He has done;
	His right hand and __ His ho -- ly arm
}
sopWordsTwo = \lyricmode
{
	\repeat unfold 28 \skip 1
	\set stanza = "(Bass)"
	The vic -- to -- ry have won,
	The vic -- to -- ry have won,
	The vic -- to -- ry have won.
}
sopWordsThree = \lyricmode
{
	\repeat unfold 28 \skip 1
	\set stanza = "(Tenor)"
	The vic -- to -- ry have won,
        The vic -- to -- ry have won.
}
sopWordsFour = \lyricmode
{
	\repeat unfold 28 \skip 1
	\set stanza = "(Soprano)"
	The vic -- to -- ry have won,
        The vic -- to -- ry have won,
        The vic -- to -- ry have won.
}
sopWordsFive = \lyricmode
{
	\repeat unfold 28 \skip 1
	\set stanza = "(Alto)"
	The vic -- to -- ry have won,
        The vic -- to -- ry have won.
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

% modify maj9 and 6(add9)
% Exception music is chords with markups
chExceptionMusic = {
  <c g>1-\markup { " (no3)" }
}

% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

musicScore = \context StaffGroup <<
   \new ChordNames \chordmode { \set majorSevenSymbol = "maj7"
		\set chordNameExceptions = #chExceptions
		g2. c4:/g g2. c4 g2:/d d2 g1 d4:7/a g d:7/fis a:7/e d1 g2. e4:m d2:/a a:7 d1
		g2 d4:/fis d g1 c4:/g g d:7/g g d1 s1 s2.
		c4 g1 d g4 d:7/a g:/b g c g:/b d:7/a g d2:sus4 d4 d:7 g1
		}
	\new Lyrics = "aboveOne" { s4 }
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \soprano }
      \context Voice = "two" { \global \voiceTwo \alto }
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
      \context Voice = "three" { \global \voiceThree \tenor }
      \context Voice = "four" { \global \voiceFour \bass }
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
        "The great salvation wrought by Him"
        "Jehovah has made known."
        "His justice in the nations' sight"
        "He openly has shown."
     }
   }
  }
  \column { \line {
     "5. "
     \column {
        \line { With harp make music to the \smallCaps "Lord;" }
        "With harp a psalm O sing!"
        "With horn and trumpet raise a shout"
        \line { Before the \smallCaps "Lord," the King. }
     }
   }
  }
  }
 \vspace #1
}

\markup { \hspace #10
 \columns  {
  \column { \line {
     "3. "
     \column {
        "He mindful of His grace and truth"
        "To Isr'el's house has been."
        "The great salvation of our God"
        "All ends of earth have seen."
     }
   }
  }
  \column { \line {
     "6. "
     \column {
        "Let seas in all their vastness roar,"
        "The world, its living horde."
        "Let rivers clap, let mountains sing"
        \line { Their joy before the \smallCaps "Lord!" }
     }
   }
  }
  }
 \vspace #1
}

\markup { \hspace #10
 \columns  {
  \column { \line {
     "4. "
     \column {
        \line { O all the earth, sing to the \smallCaps "Lord" }
        "And make a joyful sound."
        "Lift up your voice aloud to Him;"
        "Sing psalms! Let joy resound!"
     }
   }
  }
  \column { \line {
     "7. "
     \column {
        "Because He come, He surely comes,"
        "The judge of earth to be!"
        "With justice He will judge the world,"
        "All men with equity."
     }
   }
  }
  }
 $\vspace #1
}

\include "tag.ly"
