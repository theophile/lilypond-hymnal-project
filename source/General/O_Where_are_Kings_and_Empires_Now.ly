\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "O Where are Kings and Empires Now"

Writer = "Arthur Cleveland Coxe, 1839"

Translator = " "

Composer = "Thomas Tallis, 1567"

Arranger = ""

Tune = "TALLIS' ORDINAL"

Meter = " C.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key ees \major
	\tempo 4 = 100	
}

soprano = {	
	\partial 4
	d'4 fis' g' a' a' b' b' a' a' d'' cis'' b' b' a'2. \bar "" \break
	d'4 fis' g' a' a' b' b' a' d' g' fis' e' e' d'2. \bar "|."
}

alto = {
	d'4 d' d' e' fis' g' g' fis' fis' fis' e' e' e' cis'2.
	d'4 d' d' cis' a d' d' d' d' d' d' d' cis' d'2.
}

tenor = {
	fis4 a b cis' a d' d' d' d fis a a gis a2.
	fis4 a d e fis g g fis fis b a a a fis2.
}

bass = {
	d4 d b, a, d g, g, d d d a, e e a,2.
	d4 d b, a, d g, g, d b, g, d a, a, d2.
}

dropLyrics =
{
    \override LyricText #'extra-offset = #'(0 . -8)
    \override LyricHyphen #'extra-offset = #'(0 . -8)
    \override LyricExtender #'extra-offset = #'(0 . -8)
}

raiseLyrics =
{
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	O where are kings and em -- pires now
	Of old, that went and came?
	But Lord, Thy Church is pray -- ing yet,
	A thou -- sand years the same.
}
sopWordsTwo = \lyricmode
{
        We mark her good -- ly bat -- tle -- ments
	And her foun -- da -- tions strong;
	We hear, with -- in, the so -- lemn voice
	Of her un -- end -- ing song.
}
sopWordsThree = \lyricmode
{
	For not like king -- doms of the world
	Thy ho -- ly Church, O God,
	Though earth -- quake shocks are threat -- ’ning her,
	And temp -- ests are a -- broad.
}
sopWordsFour = \lyricmode
{
	Un -- sha -- ken as e -- ter -- nal hills,
	Im -- mov -- a -- ble she stands,
	A moun -- tain that shall fill the earth,
	A house not made by hands.
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
		ees2 aes4:/c bes ees aes aes:/c ees2. bes4 f:sus4 f bes2. ees2 aes4:/c bes ees aes aes:/c ees c:m aes ees bes:sus4 bes ees2.
		}
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \transpose d ees \soprano }
      \context Voice = "two" { \global \voiceTwo \transpose d ees \alto }
    >>

	\include "lyrics-midstaff.ly"

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree \transpose d ees \tenor }
      \context Voice = "two" { \global \voiceFour \transpose d ees \bass }
    >>
	
	\include "lyrics-understaff.ly"

  >>
	
\include "standard-layout.ly"
\include "tag.ly"
