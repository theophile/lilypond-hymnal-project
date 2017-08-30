\version "2.10.29"

%\paper { page-count = 1 }

Title = "Beneath the Blood-Stained Lintel"

Writer = "H.A. Ironside"

Translator = ""

Composer = "Hans L. Hassler, Lustgarten neuer teutscher Gesäng, 1601"

Arranger = "Arr. J.S. Bach, 1729"

Tune = "PASSION CHORALE"

Meter = "7.6.7.6."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\autoBeamOff
	\time 4/4
	\key c \major	
	\tempo 4 = 96
}

soprano = \relative e' {
    \partial 4 e4 | % 2
    a4 g4 f4 e4 | % 3
    d2 e4 b'4 | % 4
    c4 c4 b8 [a8] b4 | % 5
    a2. \bar "" \break e4 | % 7
    a4 g4 f4 e4 | % 8
    d2 e4 b'4 | % 9
    c4 c4 b8 [a8] b4 | 
    a2. \bar "" \break c4 | % 12
    b8 [a8] g4 a4 b4 | % 13
    c2 c4 g4 | % 14
    a4 g4 f4 f4 | % 15
    e2. \bar "" \break c'4 | % 17
    b8 [c8] d4 c4 b4 | % 18
    a2 b4 e,4 | % 19
    f4 e4 d4 g4 | 
    \partial 2. e2. \bar "|."
}

alto = \relative c' {
    c4 | % 2
    c8 [d8] e4 a,8 [b8] c4 | % 3
    c4 (b4) c4 e8 [d8] | % 4
    c4 e4 e4 e8 [d8] | % 5
    c2. c4 | % 7
    c8 [d8] e4 a,8 [b8] c4 | % 8
    c4 ( b4 ) c4 e8 [d8] | % 9
    c4 e4 e4 e8 [d8] |  
    c2. e4  | % 12
    d4 d8 [c8] c4 f4 | % 13
    f4 (e8  [d8]) e4 e4 | % 14
    f4 e4 e4 d4 | % 15
    cis2. d4 | % 17
    d4 g4 g4 g4 | % 18
    g4 (fis4) g4 c,8 [b8] | % 19
    a8 [b8] c4 c4 b4 | 
    c2.
}

tenor = \relative a {
    a4  | % 2
    a8 [b8] c4 d4 g,4 | % 3
    a4 (g4) g4 e4 | % 4
    e4 a4 a4 gis4 | % 5
    e2. a4 | % 7
    a8 [b8] c4 d4 g,4 | % 8
    a4 (g4) g4 e4 | % 9
    e4 a4 a4 gis4 |  
    e2. a8 [g8] | % 12
    f4 g4 g4 f8 [g8] | % 13
    a4 (g8 [f8]) g4 c4 | % 14
    c4 c8 [b8] a4 a4 | % 15
    a2. a4 | % 17
    g8 [a8] b4 c4 d4 | % 18
    e4 (d4) d4 g,4 | % 19
    f4 g4 a4 g4 | 
    g2. 
}

bass = \relative a {
    a8 [g8] | % 2
    f4 e4 d4 c4 | % 3
    f,4 (g4) c4 gis4 | % 4
    a8 [b8] c8 [d8] e4 e4 | % 5
    a,2. a'8 [g8] | % 7
    f4 e4 d4 c4 | % 8
    f,4 (g4) c4 gis4 | % 9
    a8 [b8] c8 [d8] e4 e4 | 
    a,2. a4 | % 12
    d4 e4 f8 [e8] d4 | % 13
    c2 c4 c4 | % 14
    f4 c4 d8 [e8] f8 [g8] | % 15
    a2. fis4 | % 17
    g4 g8 [fis8] e4 d4 | % 18
    c4 (d4) g,4 c4 | % 19
    d4 e4 f4 g,4 | 
    c2. 
}

sopWords = \lyricmode
{
	Be -- neath the blood -- stained lin --  tel, I with my chil -- dren stand, 
	A mes -- sen -- ger of e -- vil is pas -- sing through the land. 
	There is no o -- ther re -- fuge from the des -- troy -- er's face.
    	Be -- neath the blood -- stained lin --  tel shall be my hi -- ding place.
}
sopWordsTwo = \lyricmode
{
        The Lamb of God has suf -- fered, our guilt and sin He bore. 
	By faith, His blood is sprin --  kled a -- bove our dwell -- "ing's" door.
	The foe who seeks to en -- ter doth fear that sa -- cred sign.
	To -- night the blood -- stained lin -- tel shall shel -- ter me and mine.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	My Sa -- vior, for my dear ones, I claim Thy pro -- mise true.
	The Lamb was for the house -- hold, the chil -- dren's Sa -- vior too.
	On earth the lit -- tle chil -- dren once felt Thy touch di -- vine.
    	Be -- neath the blood -- stained lin -- tel, Thy bless -- ing give to mine. 
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	O Thou who gave them guard them, those way -- ward lit -- tle feet,
	The wil -- der -- ness be -- fore them, the ills of life to meet.
	My pa -- rent love is help -- less, I trust them to Thy care.
	Be -- neath the blood -- stained lin -- tel, O keep them e -- ver there.
}
sopWordsFive = \lyricmode
{
	The trust I place u -- pon Thee, Thou wilt not dis -- ap -- point,
	With wis -- dom Lord to train them, my shrin -- king heart a -- noint.
	For mer -- cy on my chil -- dren, O God, I seek thy face.
	I plead the blood -- stained lin -- tel, Thy co -- ve -- nant of grace.
}
sopWordsSix = \lyricmode
{
	O Won -- der -- ful Re -- dee -- mer, who suf -- fered for my sake 
	When "o'er" the guil -- ty na -- tions, Thy judg -- ment storm shall break.
	With joy from that safe shel -- ter, may we then see Thine Eye.
	Be -- neath the blood -- stained lin -- tel, my chil -- dren, Lord and I.
}
sopWordsSeven = \lyricmode
{
 
}

sopWordsEight = \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \new ChordNames \chordmode { \set majorSevenSymbol = "maj7"
		%r4 c2:m c2:m/ees c4:m g2. c2.:m r2 g4:/b c2:m g4:m c4:m d4:sus4 d4 g2.:m
		 % r4 c2:m c2:m/ees c4:m g2. c2.:m r2 g4:/b c2:m g4:m c4:m d4:sus4 d4 g2.:m
		  %ees2 c4:m ees2:/g aes4 bes2 ees4:/g f2.:m bes2. f2:m/aes f4:m c2:sus4 c4 f2.:m
		  %c2.:m g2:m/bes g4:m aes2 ees4 bes2. c2:m/ees b4:dim/d c2:m g4:/b c2:m aes4 g2.
		  %c2:m bes4:/d ees2 bes4 ees2 a4:dim/c bes2.
		  %c2:m/ees g4:/b c2:m f4:m g4:sus4 g4:sus2 g4 c2.
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
