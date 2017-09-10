\version "2.10.29"

\paper
{
        page-count = 1
}

Title = \markup { The \smallCaps "Lord's" Law is Complete }

Writer = "Based on Psalm 19:7-14"

Translator = "The Scottish Metrical Psalter, 1880"

Composer = "Traditional English Melody (1826)"

Arranger = ""

Tune = "MILLENIUM"

Meter = " 6.6.6.6.8.8."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 19:7-14" }


global = {
	\time 4/4
	\key a \major
	\tempo 4 = 132
	\autoBeamOff
}

soprano = {
	\partial 4
	e'4 a' a' a' gis'8[ fis'] e'2. e'4 fis' a' gis' b' a'2.
	a'8[ b'] cis''4 cis'' cis'' cis'' e''2. cis''4 b' a' gis' fis' e'2.
	e'4 b'2 cis''4. (b'8) a'2 e' d'' e''4. (d''8) cis''2.
	e'4 fis' (gis') a' (b') cis''2 e''4 (d'') cis''2 b' a'2. \bar "|."
}

alto = {
	e'8[ d'] cis'4 cis' e' e'8[ d'] cis'2. e'4 d' fis' e' d' cis'2.
	cis'8[ e'] e'4 e' e' e' e'2. a'4 gis' fis' e' dis' e'2.
	e'4 d'2 e'4. (d'8) cis'2 e' e' e' e'2.
	e'4 d'2 cis'4 (e') e'2 e'4 (fis') e'2 e'4 (d') cis'2.
}

tenor = {
	gis4 a a a a a2. cis'4 a d' b gis a2.
	a8[ gis] a4 a a a cis'2. e'4 e' cis'8[ dis'] e'4 b8[ a] gis2.
	gis4 gis2 gis a a b4 (a) gis2 a2.
	a4 a (gis) cis' (b) a2 a a gis a2.
}

bass = {
	e4 a, a, cis d a,2. a,4 d b, e e a,2.
	e4 a, a, a, a, a, (cis e) a b b b b, e2.
	e4 e2 e a4 (e) cis (e) gis (fis) e2 a2.
	cis4 d (e) fis (gis) a2 cis4 (d) e2 e a,2.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	e4 a2 a4:/cis d a1 d4 d:6/b e2 a2.
	e4 a1 a1 e4:/b b:7 e:/b b:7 e1
	e2:7 cis4.:m/e e8:7 a1 e:7 a
	d4 e fis:m e:/gis a2 a4:/cis d a2:/e e:7 a2.
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	The \markup { \smallCaps "Lord's" } law is com -- plete; It makes the soul a -- rise:
	The \markup { \smallCaps "Lord's" } de -- cree is sure; It makes the sim -- ple wise
	The stat -- utes of the \markup { \smallCaps "Lord" } are right,
	Im -- part -- ing to the heart de -- light.
}
sopWordsTwo = \lyricmode
{
	The \markup { \smallCaps "Lord's" } com -- mand is pure; Light on the eyes it pours:
	The \markup { \smallCaps "Lord's" } fear is un -- stained; For -- ev -- er it en -- dures:
	The judg -- ments of the \markup { \smallCaps "Lord" } are true,
	And al -- to -- geth -- er right -- eous, too.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
 	More to be prized than gold, Yea, much fine gold, they are;
	Than hon -- ey from the comb That drop -- peth, sweet -- er far.
	They al -- so warn Thy ser -- vant, Lord;
	In keep -- ing them is great re -- ward.
}
sopWordsFour = \lyricmode
{
 	Who can His err -- ors know? From sec -- ret faults me cleanse:
	Keep Thou Thy ser -- vant back From all pre -- sump -- tuous sins:
	Let them not tri -- umph ov -- er me;
	Then shall I pure and up -- right be.
}
sopWordsFive = \lyricmode
{
	Yea, then I shall be free From much and hein -- ous sin.
	O let the words I speak, And all my thoughts with -- in,
	Be pleas -- ing, o my Lord, to Thee,
	Who strength and Sav -- ior art to me.
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
