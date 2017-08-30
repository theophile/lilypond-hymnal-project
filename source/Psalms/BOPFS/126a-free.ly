\version "2.10.29"

\paper
{
	page-count = 1
}

Title = \markup { When Zion's Bondage God Turned Back }

Writer = "Based on Psalm 126"

Translator = "The Scottish Metrical Psalter, 1880"

Composer = "John Cole, 1810"

Arranger = ""

Tune = "GENEVA"

Meter = " C.M."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 126" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key ees \major
	\tempo 4 = 120
	\autoBeamOff
}

soprano = {	
	\partial 4
	ees'4 ees' (f') g' g'(aes') bes' ees''2 d''4 ees''2 \bar "" \break
	c''4 d''2 f''4 ees''4 (d'') c'' bes'2 ees''4 bes'8.[ (c''16] bes'4) bes'8[ aes'] g'8.[ (aes'16] g'4) bes'4 \break
	c''4. (bes'8) aes'[ g'] g'4 (f') \times 2/3 { ees'8[ g' bes'] } ees''2 \times 2/3 { f'8[ g' aes'] } g'8.[ (aes'16] g'4) f' ees'2 \bar "|."
}

alto = {
	r4 r r ees'4 ees' (f') g' g'8 aes' bes'[ g'] f'[ aes'] g'2
	f'4 f'2 f'4 g' (f') ees' d'2 g'4 g'8.[ (aes'16] g'4) g'8[ f'] ees'2 g'4 
	aes'4. (g'8) f'8[ ees'] ees'4 (d') ees' ees'2 ees'4 ees'8.[ (f'16] ees'4) d' ees'2
}

tenor = {
 	\oneVoice r4 R2. r2 \voiceOne bes4 bes8 bes bes bes bes bes bes2
	a4 bes2 bes4 bes2 a4 bes2 \oneVoice r4 r2 \voiceOne bes4 bes8. c'16 bes4 ees'
	ees'2 c'4 bes2 g4 g8.[ (aes16] bes4) c' bes2 bes8[ aes] g2
}

bass = {
	s4 s2. s2 ees4 ees8 f g ees bes bes, ees2
	f4 bes2 d4 ees (f) f bes,2 s4 s2 bes,4 ees8. ees16 ees4 ees
	aes,2 aes,8[ a,] bes,2 ees4 ees8.[ (f16] g4) aes4 bes2 bes,4 ees2
}

sopWords = \lyricmode
{
	%Be -- fore Thee let my cry come near, 
	%O \markup { \smallCaps "Lord;" } true to Thy word, teach me. 
	%\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
	
}
sopWordsTwo = \lyricmode
{
	% Bass line
}
sopWordsThree = \lyricmode
{
   	%\skip 1 \skip 1 \skip 1 \skip 1
	\set stanza = "(Tenor/Bass)"
	When Zi -- on's bon -- dage God turned back.
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	Then filled with laugh -- ter
}
sopWordsFour = \lyricmode
{
 	\set stanza = "(Soprano) 1."
	When Zi -- on's bon -- dage God turned back.
}
sopWordsFive = \lyricmode
{
	%\skip 1 \skip 1 \skip 1
	\set stanza = "(Alto)"
	When Zi -- on's bon -- dage God turned back.
	As men that dreamed were we.
	Then filled with laugh -- ter was our mouth,
	Our tongue with mel -- o -- dy.
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
%chExceptionMusic = {
%  <c g>1-\markup { " (no3)" }
%}

% Convert music to list and prepend to existing exceptions.
%chExceptions = #( append
%  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
%  ignatzekExceptions)

musicScore = \context StaffGroup <<
   \new ChordNames \chordmode { \set majorSevenSymbol = "maj7"
		%\set chordNameExceptions = #chExceptions
		s4 s2. s2 ees4 s8 ees8:sus/f ees:/g ees bes4 ees2
	f4 bes2 bes4:/d ees4 bes:/f f bes2 s4 s2
	bes4 ees2. aes2 a4:dim ees4:/bes bes ees ees ees:/g aes:6 ees2:/bes bes4:7 ees2
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
       	"They 'mong the heathen said, \"The Lord"
	"Great things for them hath wrought.\""
	"The Lord hath done great things for us,"
	"Whence joy to us is brought."
     }
   } 
  } 
  \column { \line {
     "3. "
     \column {
       	"As streams of water in the south,"
	"Our bondage, Lord, recall."
	"Who sow in tears, a reaping time"
	"Of joy enjoy they shall."
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
       	"The man who, bearing precious seed,"
	"In going forth doth mourn,"
	"He doubtless, bringing back his sheaves,"
	"Rejoicing shall return."
     }
   } 
  } 
 }
}



\include "tag.ly"
