\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Before Thee Let My Cry Come Near"

Writer = "Based on Psalm 119:169-176"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 119X)"

Composer = "Daniel Read, 1757-1836"

Arranger = ""

Tune = "RUSSIA"

Meter = " L.M."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 119:169-176" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key g \minor
	\tempo 4 = 132
	\autoBeamOff
}

soprano = {	
	g'2 g'4 a' bes' a' g' g' fis'2 fis' f'!4 bes' a' g' fis'2. fis'4 g'2. 
	\oneVoice r4 R1 \voiceOne R1 r2 r4 g'4 d'' d'' d'' d''8[ c''] a'4 a' a' a' bes' g' a' g' fis'2. fis'4 g'1 \bar "|."

	% d''2 bes'4 d'' c'' bes' a'2. d''4 bes' g' fis' d'8 (fis') g'2. 
	% \oneVoice r4 R1 r2 r4 \voiceOne r4 r2 r4 bes'4 d'' d'' d'' f'' d'' c''8 (bes') a'4 a' bes' g' fis' fis' g'1  \bar "|."
}

alto = {
	d'2 d'4 d' d' d' ees' d' d'2 d' f'4 f' f' ees' d'2. d'4 d'2. s4 s1
	r2 r4 d'4 g' g' g' f' f'2. ees'4 d'2. d'4 d' d' d' ees' d'2. d'4 d'1

	%d'2 d'4 d' fis' d' fis'2. fis'4 f'! ees' d' d' d'2.
	%s4 s1 s2 s4 d'4 g' g' g' d' d' d' f'2~ f'2. f'4 f' ees' c' d' d'1
}

tenor = {
	g2 bes4 a g f g bes a2 a d'4 d' c' bes a2. a4 g2.
	r4 r2 r4 g4 d' d' d'8[ c'] bes4 c' c' c'8[ bes] a4 bes bes bes8[ a] g[ bes] a4 a a8[ g] f4 g8[ a] bes[ c'] d'4 c'8[ bes] a2. a4 g1

	%g2 g4 bes a g d'2. fis'4 d' c'8 (bes) a4 g8 (fis) g2.
	%r4 r2 r4 bes4 c' c' c' f'4 d' d' d' bes a g bes c' d'2. d'4 d' c'8 (bes) a4 g8 (fis) g1
}

bass = {
	g2 g4 f g d c bes,8[ c] d2 d d4 d8[ ees] f4 g d2. d4 g,2.
	d4 g g g8[ f] ees4 d d d ees8[ d] c4 c c d8[ c] bes,2. c4 d2. d4 g g f g d2. d4 g,1

	%g2 g4 g fis g d2. d4 bes, c d d g,2.
	%g,4 d d d bes, f f f d g g g bes8 (g) fis4 d d2~ d2. d4 bes, c d d g,1
}

sopWords = \lyricmode
{
	Be -- fore Thee let my cry come near, 
	O \markup { \smallCaps "Lord;" } true to Thy word, teach me. 
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
	
}
sopWordsTwo = \lyricmode
{
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	\set stanza = "(Bass)"
   	Be -- fore Thee let my plead -- ing come;
	True to Thy prom -- ise, res -- cue me, __
	True to Thy prom -- ise, res -- cue me.
}
sopWordsThree = \lyricmode
{
   	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	\set stanza = "(Tenor)"
	Be -- fore Thee let my plead -- ing come;
	True to Thy prom -- ise, res -- cue me,
}
sopWordsFour = \lyricmode
{
 	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
	\set stanza = "(Soprano)"
	Be -- fore Thee let my plead -- ing come,
}
sopWordsFive = \lyricmode
{
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	\set stanza = "(Alto)"
	Be -- fore Thee let my plead -- ing come, __
	True to Thy prom -- ise res -- cue me.
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
		g2^3 g4:m d:m/f g:m d:m c:m bes d1 d4:m bes f ees:/g d1 g2.^3 s4 s1 s1
		c2:m c4:m7 d:m bes2. c4:m7 d2.^3 d4:m g2:m d4:m/f g:m d1 g1^3 
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
       	"Since Thou Thy statutes teachest me,"
	"O let my lips Thy praise confess."
	"Yea, of Thy word my tongue would sing,"
	"For Thy commands are righteousness."
     }
   } 
  } 
  \column { \line {
     "3. "
     \column {
       	"Be ready with Thy hand to help,"
	"Because Thy precepts are my choice."
	"I've longed for Thy salvation, Lord,"
	"And in Thy holy law rejoice."
     }
   } 
  }
  }
 \vspace #1
}

\markup { \hspace #42 
 \columns  { 
  \column { \line {
     "4. "
     \column {
       	"O let Thine ordinances help;"
	"My soul shall live and praise Thee yet."
	"A straying sheep, Thy servant, seek,"
	"For Thy commands I ne'er forget."
     }
   } 
  } 
 }
}



\include "tag.ly"
