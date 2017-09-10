\version "2.10.29"

Title = "Amazing Grace"

Writer = "John Newton, 1779"

Translator = ""

Composer = "Anonymous, 1829"

Arranger = "Arr. C. Meredith, 2010"

Tune = "NEW BRITAIN"

Meter = "8.6.8.6"

\include "header.ly"

swing = \mark \markup { 
  \line \general-align #Y #DOWN { \score { 
  \new Staff \with {
    fontSize = #-2
    \override StaffSymbol #'line-count = #0 
    \override VerticalAxisGroup #'Y-extent = #'(0 . 0)
  }
  \relative { 
    \stemUp 
    \override Score.SpacingSpanner 
      #'common-shortest-duration = #(ly:make-moment 3 16) 
    \override Beam #'positions = #'(2.5 . 2.5)
    b'8[ b8] 
  }
  \layout {
    ragged-right= ##t
    indent = 0
    \context { 
    \Staff \remove "Clef_engraver" 
    \remove "Time_signature_engraver" }
  }} " ="
  \score { \new Staff \with {
    fontSize = #-2
    \override StaffSymbol #'line-count = #0 
    \override VerticalAxisGroup #'Y-extent = #'(0 . 0)
  }
  \relative { 
    \stemUp 
    \override Score.SpacingSpanner 
      #'common-shortest-duration = #(ly:make-moment 3 16)
    \override Stem #'length = #4.6
    \times 2/3 { b'4 b8 } 
  }
  \layout {
    ragged-right= ##t
    indent = 0
    \context { 
      \Staff 
      \remove "Clef_engraver" 
      \remove "Time_signature_engraver" }
    }}
  }
}

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key aes \major		
	\tempo 4 = 78
	\autoBeamOff
}

soprano = {	
	\partial 4
	\override Score.RehearsalMark #'X-offset = #9
	\override Score.RehearsalMark #'outside-staff-padding = #1.5
	\swing
	ees'4 aes'2 c''8 [aes'] c''2 bes'4 aes'2 f'4 ees'2 \bar "" \break
	ees'4 aes'2 c''8 [aes'] c''2 bes'4 ees''2.~ ees''2 \bar "" \break
	c''4 ees''4. (c''8) ees'' [c''] aes'2 ees'4 f'4. (aes'8) aes' [f'] ees'2 \bar "" \break
	ees'4 aes'2 c''8 [aes'] c''2 bes'4 aes'2.~ aes'2~ \bar ":|" aes'4^\markup { \italic fine} <aes bes c' ees'>2\fermata \bar "|."
}

alto = {
	ees'4 c'2 ees'4 ees'2 ees'4 ees'4 (des'4) ees'4 c'8 ([des'] c'4) ees'4
	c'2 ees'4 f'2 f'4 ees'2 (d'4 des'2) des'4
	c'2 c'4 ees'2 bes4 des'2 f'4 ees'8 ([f'] ees'4) c'4 c'2 c'4 bes2 des'4 c'2. (des'2)~ des'4
}

tenor = {
	ees4 ees2 aes4 ges2 ges4 f2 f4 ees8 ([f] ees4) ees4 ees2 aes4 aes2 aes4 bes2.~ bes2
	bes4 bes2 bes4 g?2 g4 aes2 des'4 c'8 ([des'] c'4) bes4 aes2 aes4 aes2 aes4 ees2. (f2)~ f4
}

bass = {
	ees4 aes,2 aes,8 [bes,] c2 c4 des2 des4 aes,2 ees4 aes,2 aes,4 bes,2 d4 ees2 (f4
<<
      {
        \voiceTwo
        g2) g4
      }
      \new Voice {
        \voiceFour \shiftOff \parenthesize
        ees,4 \parenthesize f, \parenthesize g,
      }
    >>
    \oneVoice
\voiceTwo aes,2 aes,8 [bes,] c2 c4 des2 des4 aes2 g4 f2 f4 ees2 ees4 aes,2. (ees2)~ ees4 <aes, ees>2^\fermata
}

% modify add2 chords
% Exception music is chords with markups
chExceptionMusic = {
  <c e g bes d'>1-\markup { " (add2)" }
}

% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	\set chordNameExceptions = #chExceptions
	s4 aes2 s4 aes2:7/c c4:m7.5- des4:sus2 des4 des4:9 aes8 des:/aes aes4 ees4 aes2 s4 bes2:7sus2 bes4:7/d ees2 ees4:sus4/f ees2:7/g
	ees4:7/g aes2:9 s4 aes2:maj7/c ees4:6/c des2 s4 aes8 des:/aes aes4 c4:m7/g f2:m s4 aes2:9/ees aes4:9sus4/ees aes2. des2.:/ees aes2:9 
}

sopWords = \lyricmode
{
	A -- ma -- zing Grace, how sweet the sound,
	That saved a wretch like me. 
	I once was lost but now am found,
	Was blind, but now I see.
}
sopWordsTwo = \lyricmode
{
	\set stanza = "2. "
	T'was Grace that taught my heart to fear.
	And Grace, my fears re -- lieved.
	How pre -- cious did that Grace ap -- pear
	The hour I "first" be -- lieved.
}
sopWordsThree = \lyricmode
{
	\set stanza = "3. "
	\override LyricText #'font-shape = #'italic
	Through ma -- ny dan -- gers, toils and snares
	I have al -- rea -- dy come;
	'Tis Grace that brought me safe thus far
	and Grace will lead me home.
}
sopWordsFour = \lyricmode
{
	\set stanza = "4. "
	\override LyricText #'font-shape = #'italic
	The Lord has pro -- mised good to me.
	His word my hope se -- cures.
	He will my shield and por -- tion be,
	As long as life en -- dures.
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

sopWordsSeven = \lyricmode
{
 
}

sopWordsEight = \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \include "insertchords.ly"
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
