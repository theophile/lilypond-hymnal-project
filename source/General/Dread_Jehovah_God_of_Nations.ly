\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Dread Jehovah, God of Nations"

Writer = "Edward Henry Bickersteth, 1833"

Translator = ""

Composer = "Traditional Russian Folk Melody"

Arranger = ""

Tune = "RUSSIAN SONG"

Meter = " 8.7.8.7."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key d \minor
    	\time 4/4
	\tempo 4 = 92
	\autoBeamOff
}

soprano = \relative c' {
    d2 bes'4( g4) |
    a2 g4( f4) |
    e4( g4) f4( e4) |
    d2 a2 |
    d2 bes'4( g4) |
    a2 g4( f4) |
    e4( g4) f4( e4) |
    d4( f4 a2) |
    \repeat volta 2 {
        d2. c4 |
        bes2. g4 |
        c2. bes4 |
        a2 g4( f4) |
        e2 g4 ( bes4) |
        a2 g4 ( f4) |
        e4 ( g4) f4 ( e4) 
    }
    \alternative { 
        { d4( f4 a2) }
        { d,1 }
    } \bar "|." |
}

alto = \relative c' {
    a4( d4) d2 |
    d2 cis4( d4) |
    d2 cis2 |
    d2 a2 |
    bes2 d2 |
    d2 cis4( d4) |
    d2 cis2 |
    d2( f2) |
    \repeat volta 2 {
    	f2 fis2 |
    	g2. e4 |
    	f2 e2 |
    	c2 d2 |
    	d2 e2 |
    	f2 d2 |
    	d2 cis2 |
    }
    \alternative { 
    	{ d2( f2) }
    	{ d1 }
    }
}

tenor = \relative c {
    f4( a4) g2 |
    f4( a4) a2 |
    bes2 a4( g4) |
    f2 f2 |
    f2 g2 |
    f4( a4) a2 |
    bes2 a4( g4) |
    f4( a4 d4 ees4) |
    \repeat volta 2 {
    	d2 d2 |
    	d2 c2 |
    	c2 c2 |
    	c2 bes4( a4) |
    	g2 d'2 |
    	d2 a2 |
    	bes2 a4( g4) |
    }
    \alternative {
    	{ f4( a4 d4 ees4) }
    	{ f,1 }
    } \bar "|." 
}

bass = \relative c  {
    d4( f,4) g4( bes4) |
    d4( f4) e4( d4) |
    g,2 a2 |
    d2 d4( c4) |
    bes4( a4) g4( bes4) |
    d4( f4) e4( d4) |
    g,2 a2 |
    d2.( c4) |
    \repeat volta 2 {
    	bes4( bes'4) a2 |
    	g4( f4) e4( c4) |
    	a4( a'4) g2 |
    	f4( e4) d2 |
    	bes2. g4 |
    	f2 d'2 |
    	g,2 a2 |
    }
    \alternative {
    	{ d2.( c4) }
    	{ d1 }
    }
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	Dread Je -- ho -- vah, God of Na -- tions,
	From Thy tem -- ple in the skies, __
	Hear Thy peo -- ple's sup -- pli -- ca -- tions.
	Now for their de -- li -- v'rance rise: rise:
}
sopWordsTwo = \lyricmode
{
        Lo, with deep con -- tri -- tion turn -- ing,
	Hum -- bly at Thy feet we bend; __
	Hear us, fast -- ing, pray -- ing, mourn -- ing;
	Hear us, spare us, and de -- fend. fend.
}
sopWordsThree = \lyricmode
{
	Though our sins, our hearts con -- found -- ing,
	Long and loud for ven -- geance call, __
	Thou hast mer -- cy more a -- bound -- ing,
	Je -- sus' blood can cleanse them all. all.
}
sopWordsFour = \lyricmode
{
	Let that love veil our trans -- gres -- sion;
	Let that blood our guilt ef -- face: __
	Save Thy peo -- ple from op -- pres -- sion,
	Save from spoil Thy ho -- ly place. place.
}
sopWordsFive = \lyricmode
{

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
