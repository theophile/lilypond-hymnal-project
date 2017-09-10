\version "2.10.29"

Title = "All Praise to Thee, Eternal Lord"

Writer = "Martin Luther, 1483-1546"

Translator = "Trans. Anonymous, 1858"

Composer = "Thomas Tallis, c. 1505-85"

Arranger = ""

Tune = "TALLIS' CANON"

Meter = " L.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/2
	\key g \major
	\tempo 2 = 60	
}

soprano = \relative c'' {
  \partial 2
  g2  
  g fis g g 
  a a b g 
  c c b b 
  a a g \bar "" \break d' 
  c a b b 
  a a g d 
  e fis g b 
  a a g1 \bar "|."
}


alto = \relative c' {
  d2 
  d d b d 
  e d d g 
  e fis g d 
  e d d g 
  e d d d 
  e fis g g, 
  e' d b d 
  c a b1 
}

tenor = \relative c' {
  b2 
  a a g g 
  g fis g g 
  a a b g 
  c c b b 
  a a g d' 
  c a b b 
  a a g d 
  e fis g1 \bar "|."
}

bass = \relative c' {
  g2 
  d d e b 
  c d g, b 
  a a g g' 
  g fis g g 
  a fis g g, 
  c d g, b 
  c d e b 
  c d g,1 
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	g2 d:sus4 d e:m g:/b c d g g:/b a:m7 d:7/a g1 a2:m/g
	d:/fis g g:/b a:m/c d g1 a2:m d:/fis g g:/b a:m/c d:7/a e:m g:/b c d g1
 }

sopWords = \lyricmode
{
        All praise to Thee, E -- ter -- nal Lord,
	Clothed in a garb of flesh and blood;
	Choos -- ing a man -- ger for Thy throne,
	While worlds on worlds are Thine a -- lone.
}

sopWordsTwo = \lyricmode
{
	Once did the skies be -- fore Thee bow;
	A vir -- gin's arms con -- tain Thee now,
	While an -- gels, who in Thee re -- joice,
	Now lis -- ten for Thine in -- fant voice.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	A lit -- tle Child, Thou art our Guest,
	That wea -- ry ones in Thee may rest;
	For -- lorn and low -- ly is Thy birth;
	That we may rise to heav'n from earth.
}

sopWordsFour = \lyricmode
{
	Thou com -- est in the dark -- some night
	To make us child -- ren of the light;
	To make us, in the realms di -- vine,
	Like Thine own an -- gels round Thee shine.

}

sopWordsFive = \lyricmode
{
 	All this for us Thy love hath done;
	By this to Thee our love is won;
	For this we tune our cheer -- ful lays,
	And sing our thanks in cease -- less praise.
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
