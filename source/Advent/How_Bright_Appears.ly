\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "How Bright Appears the Morning Star"

Writer = "Philipp Nicolai, 1597"

Translator = "Trans. Wil­liam Mer­cer (1811-1873)"

Composer = "Phil­ipp Nicolai, 1599"

Arranger = ""

Tune = "WIE SCHÖN LEUCHTET"

Meter = " 8.8.7.8.8.7.4.8.4.8"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Staff.TimeSignature #'stencil = ##f
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key d \major
    	\time 6/4
	\tempo 4 = 96	
}

soprano =  \relative c' {
    \partial 4 d4 |
    a'4 fis4 d4 a'4 b4 b4 |
    \time 4/4
    a2. \breathe a4 |
    \time 6/4
    b4 cis4 d4 cis4 b4 b4 |
    \time 3/4
    a2. | \break
    \time 1/4
    fis4 |
    \time 4/4
    b4 a4 g4 fis4 |
    e2 d2 \bar "||" |
    \time 1/4
    d4 |
    \time 6/4
    a'4 fis4 d4 a'4 b4 b4 |
    \time 3/4
    a2. | \break
    \time 1/4 
    a4 |
    \time 6/4
    b4 cis4 d4 cis4 b4 b4 |
    \time 4/4
    a2. \breathe fis4 |
    b4 a4 g4 fis4 | 
    e2 d2 | \break
    a'2 fis2 |
    \time 6/4
    a2 fis2 fis4 fis4 |
    \time 4/4
    e4 e4 fis4 fis4 |
    \time 2/4
    e4 fis4 | \break
    g4 fis4 |
    \time 6/4
    e2 d2 d'4 cis4 |
    \time 4/4
    b4 a4 g4 fis4 |
    e2 d2 \bar "|." |
}

alto = \relative c' {
    \partial 4 d4 |
    e4 cis4 d4 d4 d4 d4 |
    d2. d4 |
    d4 e4 fis4 e4 fis4 e8[ d8] |
    cis2. d4 |
    d4 d4 b4 d4 |
    d4( cis4) d2 |
    d4 |
    e4 cis4 d4 d4 d4 d4 |
    d2. d4 |
    d4 e4 fis4 e4 fis4 e8[ d8] |
    cis2. d4 |
    d4 d4 b4 d4 |
    d4( cis4) d2 |
    e2 d2 |
    e2 d2 d4 d4 |
    b4 cis4 d4 d4 |
    cis4 d4 d4 d4 |
    d4( cis4) d2 fis4 fis4 |
    d4 d4 b4 d4 |
    d4( cis4) d2 |
}

tenor = \relative c {
    \partial 4 fis4 |
    a4 a4 fis4 a4 g4 g4 |
    fis2. a4 |
    g4 g4 a4 a4 a4 gis4 |
    a2. a4 |
    g4 fis4 g4 b4 |
    b4( a8[ g8]) fis2 \bar "||" |
    fis4 |
    a4 a4 fis4 a4 g4 g4 |
    fis2. a4 |
    g4 g4 a4 a4 a4 gis4 |
    a2. a4 |
    g4 fis4 g4 b4 |
    b4( a8[ g8]) fis2 |
    a2 a2 |
    cis2 a2 b4 b4 |
    g4 a4 a4 a4 |
    a4 a4 b4 a4 |
    b4( a4) fis2 b4 a4 |
    g4 fis4 g4 b4 |
    b4( a8[ g8]) fis2 \bar "|." |
}

bass = \relative c  {
    \partial 4 d4 |
    cis4 a4 b4 fis4 g4 b4 |
    d2. fis4 |
    g8[ fis8] e4 d4 a4 d4 e4 |
    a,2. d4 |
    g,4 d'4 e4 b4 |
    g4( a4) d2 |
    d4 |
    cis4 a4 b4 fis4 g4 b4 |
    d2. fis4 |
    g8[ fis8] e4 d4 a4 d4 e4 |
    a,2. d4 |
    g,4 d'4 e4 b4 |
    g4( a4) d2 |
    cis2 d2 |
    a2 d2 b4 b4 |
    e4 a,4 d4 fis8[ g8] |
    a4 d,4 b8[ cis8] d4 |
    g,4( a4) d2 b4 fis'4 |
    g4 d4 e4 b4 |
    g4( a4) d2 |
}

sopWords = \lyricmode
{
        How bright ap -- pears the Morn -- ing Star,
    	With mer -- cy beam -- ing from a -- far!
    	The host of heav'n re -- joic -- es!
    	O right -- ous branch! O Jes -- se's rod!
    	O Son of Man and Son of God! 
    	We too will lift our voic -- es.
    	Je -- sus! Je -- sus!
    	Ho -- ly, ho -- ly, yet most low -- ly!
    	Lord, be near us;
    	Great Im -- man -- uel! come and hear us.
}

sopWordsTwo = \lyricmode
{
	Though cir -- cled by the hosts on high,
	He deigned to cast a pit -- ying eye
	up -- on His help -- less crea -- ture;
	the whole cre -- a -- tion's Head and Lord,
	by high -- est ser -- a -- phim a -- dored,
	as -- sumed our ve -- ry na -- ture;
	Je -- sus, grant us,
	through Thy mer -- it, to in -- her -- it
	Thy sal -- va -- tion;
	hear, O hear our sup -- pli -- ca -- tion.
	
}

sopWordsThree = \lyricmode
{
 	Re -- joice, O heav'ns, and earth, re -- ply!
    	With praise, you sin -- ners, fill the sky!
    	For this His in -- car -- na -- tion!
    	In -- car -- nate God, put forth Your pow'r;
    	Ride on, ride on, great Con -- quer -- or,
    	Till all know Your sal -- va -- tion.
    	A -- men, a -- men!
    	Al -- le -- lu -- ia, al -- le -- lu -- ia!
    	Praise be giv -- en
    	Ev -- er -- more by earth and hea -- ven.
}

sopWordsFour = \lyricmode
{
 
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
