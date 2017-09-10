\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Easter Anthem"

Writer = "William Billings, 1787"

Translator = ""

Composer = "Edward Young"

Arranger = ""

Tune = ""

Meter = " "

\include "header.ly"
\header {       title = \Title
                subtitle = "" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 2/4
	\key a \major
	\tempo 4 = 120
	\autoBeamOff
}

soprano = {	
	\oneVoice R2 R2 R2 R2 \voiceOne e''16 [d'' cis'' d'' e''8] d'' e''4 e'' \oneVoice r4 \voiceOne a'4 cis''8. [b'16 cis''8] d'' cis''8. [d''16 e''8] fis'' e''2 fis''8 [e'' d''] cis'' b'2
	a'2 \oneVoice R2 R2 R2 R2 R2 R2 R2 R2 R2 \voiceOne cis''8. [d''16 e''8] d'' e''2 e''8 fis'' e'' d'' c''4 b'8 a'
	e''4 d'' cis'' d''8 cis'' b'4. b'8 a'2 R2 R2 cis''4 d'' cis'' b' cis'' d''8 [cis''] b'4 a' \oneVoice R2 R2 \voiceOne e''4 cis''8 d'' e''2
	R2 e''4 cis''8 d'' e''2 ~e'' \oneVoice r4 \voiceOne e''8 e'' fis''2 e''4 cis''8. d''16 e''4 e'' e''8 fis'' e'' d'' e''2 R2 r4 cis''4 e'' fis''
	e''4. e''8 fis'' e'' d'' cis'' d''4 r4 R2 r4 r8 e''8 e''d'' cis'' d'' e''4 d'' cis'' d''8 [cis''] b'4. b'8 a'2 R2 a'4 \oneVoice r4 \voiceOne cis''4 \oneVoice r4 \voiceOne
	cis''8. [d''16 e''8] fis'' e''2 R2 R2 cis''8. [d''16 e''8] fis'' e''2 fis''4 e''8 [dis''] e''2 cis''4 cis''8 cis'' cis'' cis'' cis'' cis'' cis'' cis'' cis'' cis''
	cis'' d'' cis'' b' cis''4. b'8 cis''8. [d''16 e''8] cis'' d'' [cis''] b'4 a2 \oneVoice R2 R2 R2 R2 R2 R2
	R2 R2 R2 \voiceOne e''4 cis''8. d''16 e''4 d'' cis''8. d''16 b'8 b' a'8. [b'16 cis''8] r8 e''4 cis''8. d''16 e''4 d'' cis''8. d''16 b'8 b' a'2 \bar "|."
}

alto = {
	s2 s2 s2 s2 cis''16 [d'' e'' d'' cis''8] b'8 b'4 b' s4 e''4 a'8. [gis'16 a'8] b'8 a'8. [b'16 cis''8] d''8 cis''2 d''8 [cis'' b'] a' gis'2
	a'2 s2 s2 s2 s2 s2 s2 s2 s2 s2 e''8. [d''16 cis''8] b' b'2 R2
	r4 a'4 a' b'8 a' gis'4. gis'8 a'2 cis''4 d'' cis'' b' R2 a'4 b'8 [a'] gis'2 a' s2 s2 R1 e''4 cis''8 d''
	e''2 cis''4 a''8 d'' cis''2 ~cis'' s4 cis''8 cis'' d''2 cis''4 a'8. cis''16 b'4 cis'' b'8 cis'' b' b' b'2 r4 cis''4 e'' fis'' e''2 R1
	R1 R1 r4 r8 cis''8 d'' cis'' b' a' b'4. b'8 cis''8 b' cis'' b' b'4 a' a' b'8 [a'] gis'4. gis'8 a'2 s2 cis''4 s4 a'4 s4
	R11 R1 cis''8. [d''16 e''8] fis'' e''2 R1 R1 cis''4 b' b'2 a'4 a'8 a' a' a' a' a' a' a' a' a'
	a' a' a' b' cis''8. [d''16 e''8] e'' e''8. [d''16 cis''8] a' b'[ a'] gis'4 a'2 s2 s2 s2 s2 s2 s2 
	s2 s2 s2 R4 cis''4 a'8. cis''16 b'4 a' e''8. e''16 e''8 d'' cis''2
	
}

tenor = {
}

bass = {
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	\set chordNameExceptions = #chExceptions
	g2^3 g4:m d:m/f g:m d:m c:m bes d1 d4:m bes f ees:/g d1 g2.^3 s4 s1 s1
	c2:m c4:m7 d:m bes2. c4:m7 d2.^3 d4:m g2:m d4:m/f g:m d1 g1^3 
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
   \include "insertchords.ly"
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
