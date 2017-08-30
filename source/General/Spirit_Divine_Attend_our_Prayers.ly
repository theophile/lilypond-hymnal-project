\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Spirit Divine, Attend our Prayers"

Writer = "Andrew Reed, 1829"

Translator = ""

Composer = "Johann Crüger (1598-1662)"

Arranger = ""

Tune = "NUN DANKET ALL UND BRINGET EHR"

Meter = " C.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key f \major
    	\time 2/2
	\tempo 2 = 72
	\autoBeamOff
}

soprano = \relative c' {
    f2 d4 c4 |
    f2 g2 |
    a4 a4 g2 |
    a2 c4 bes4 |
    a2 g2 |
    f1 |
    c'2 a4 c4 |
    d2 c2 |
    bes4 a4 g2 |
    c2 f,4 bes4 |
    a2 g2 |
    f1 \bar "|." |
}

alto = \relative c' {
    a2 bes4 c4 |
    d2 e2 |
    f4 f4 e2 |
    f2 f4 g4 |
    f2 e2 |
    c1 |
    f2 f4 f4 |
    f2 f2 |
    e4 f4 e2 |
    e2 f4 g4 |
    f2 e2 |
    c1 |
}

tenor = \relative c {
    f2 e4 f4 |
    f2 bes2 |
    a4 c4 c2 |
    c2 c4 d4 |
    c2 c4( bes4) |
    a1 |
    a2 c4 c4 |
    bes2 a2 |
    bes4 c4 c2 |
    c2 a4 d4 |
    c2 c4( bes4) |
    a1 \bar "|." |
}

bass = \relative c,  {
    f2 g4 a4 |
    bes2 g2 |
    f4 a4 c2 |
    f2 a4 bes4 |
    c2 c,2 |
    f1 |
    f2 f4 a4 |
    bes2 a2 |
    g4 f4 c2 |
    a2 d4 g,4 |
    a4.( bes8) c2 | 
    f1 | 
}



sopWords = \lyricmode
{
	Spi -- rit di -- vine, at -- tend our prayers,
    	And make this house Thy home;
    	De -- scend with all Thy gra -- cious powers;
    	O come, great Spi -- rit, come!
}
sopWordsTwo = \lyricmode
{
        Come as the light: to us re -- veal
    	Our emp -- ti -- ness and woe;
    	And lead us in those paths of life
    	Where all the righ -- teous go.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Come as the fire: and purge our hearts
    	Like sac -- ri -- fi -- cial flame;
    	Let our whole soul an of -- fering be
    	To our Re -- deem -- er's name.
}
sopWordsFour = \lyricmode
{
	Come as the dove: and spread Thy wings,
    	The wings of peace -- ful love;
    	And let Thy Church on earth be -- come
    	Blest as the Church a -- bove.
}
sopWordsFive = \lyricmode
{
 	Spi -- rit di -- vine, at -- tend our prayers;
    	Make a lost world Thy home;
    	De -- scend with all Thy gra -- cious powers;
    	O come, great Spi -- rit, come!
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
   \new ChordNames \chordmode { \set majorSevenSymbol = "maj7"
	
		}
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
