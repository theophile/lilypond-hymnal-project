\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "Hark! a Thrilling Voice is Sounding"

Writer = "6th Century Latin Hymn"

Translator = "Trans. Edward Caswall, 1849"

Composer = "William Henry Monk, 1850"

Arranger = ""

Tune = "MERTON"

Meter = " 8.7.8.7."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key ees \major
	\tempo 4 = 96
	
}

soprano = {	
	e'4 gis' b' b' a' cis'' cis'' b' gis' ais' b' b' cis'' cis'' b'2
	b'4 a' gis' b' a' gis' fis' e' fis' gis' a' gis' fis' fis' e'2
}

alto = {
	b4 b b dis' e' e' e' e' e' e' dis' fis' gis' fis'8 (e') dis'2
	dis'4 e'8 (fis') e'4 fis' e' e' dis' e' cis' eis' fis' e' e' dis' e'2
}

tenor = {
	gis4 b fis fis e a a gis b e fis b b ais b2
	dis'4 cis'8 (b) b4 b cis' b b8 (a) gis4 a b cis' b cis' b8 (a) gis2
}

bass = {
	e4 e dis b, cis a,8 (b,) cis (dis) e4 e cis b, dis e fis b,2
	b,4 cis8 (dis) e4 dis cis e b, cis a, gis, fis, gis, a, b, <e e,>2
}

sopWords = \lyricmode
{
        Hark! a thrill -- ing voice is sound -- ing;
	"\"Christ" is "nigh,\"" it seems to say,
	"\"Cast" a -- way the works of dark -- ness,
	O ye child -- ren of the "day.\""
}

sopWordsTwo = \lyricmode
{
	Wak -- ened by the so -- lemn warn -- ing
	Let the earth -- bound soul a -- rise;
	Christ, her Sun, all ill dis -- pell -- ing,
	Shines up -- on the mor -- ning skies.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Lo, the Lamb, so long ex -- pect -- ed,
	Comes with par -- don down from Heav'n;
	Let us haste, with tears of sor -- row,
	One and all to be for -- giv'n.
}

sopWordsFour = \lyricmode
{
	That when next He comes in glo -- ry,
	And the world is wrapped in fear,
	With His mer -- cy He may shield us,
	And with words of love draw near.
}

sopWordsFive = \lyricmode
{
 	Hon -- or, glo -- ry, might, and bless -- ing
	Be to God: the Fa -- ther, Son
	And the ev -- er -- last -- ing Spir -- it,
	While e -- ter -- nal a -- ges run.
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
		%bes4 bes:/d bes ees c:m f:/a f:7 bes2 ees4:/g bes f d:m bes c f2
		%bes4:/d f:7/c bes ees c:m7 bes:/d f bes bes:/d ees bes:/d g:m ees:6 f bes
		}
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \transpose e ees \soprano }
      \context Voice = "two" { \global \voiceTwo \transpose e ees \alto }
    >>

	\include "lyrics-midstaff.ly"

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree \transpose e ees \tenor }
      \context Voice = "two" { \global \voiceFour \transpose e ees \bass }
     >>
	
	\include "lyrics-understaff.ly"

  >>
	
\include "standard-layout.ly"
\include "tag.ly"
