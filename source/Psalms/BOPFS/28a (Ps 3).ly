\version "2.10.29"

\paper
{
        page-count = 1
}

Title = \markup { O \smallCaps "Lord," How Are My Foes Increased! }

Writer = "Based on Psalm 3"

Translator = "The Book of Psalms for Singing, 1998"

Composer = "Scottish Psalter (1615)"

Arranger = ""

Tune = "DUNDEE"

Meter = " C.M."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 3" }


global = {
	\time 4/4
	\key ees \major
	\tempo 4 = 96
	\autoBeamOff
}

soprano = {
	\partial 4
	ees'4 g' aes' bes' ees' f' g' aes' g' f' ees' ees' d' ees'2. \bar "" \break
	bes'4 ees'' d'' c'' bes' bes' a' bes' g' f' ees' ees' d' ees'2. \bar "|."
}

alto = {
	bes4 ees' ees' d' c' d' ees' ees' ees' d' c' c' bes bes2.
	ees'4 g' f' ees' f' g' f' f' ees' d' c' c' bes4 bes2.
}

tenor = {
	g4 bes ees f ees8[ g] bes4 bes c' bes bes g f f g2.
	g4 bes bes g f c' c' d' bes bes8[ aes] g4 f f g2.
}

bass = {
	ees4 ees c bes, c bes, ees aes, ees bes, c aes, bes, ees2.
	ees4 ees bes, c d ees f bes, ees bes, c aes, bes, ees2.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	O \markup { \smallCaps "Lord," } how are my foes in -- creased! A -- gainst me man -- y rise.
	How man -- y say, "\"In" vain for help He on his God re -- "lies!\""
}
sopWordsTwo = \lyricmode
{
	You are my shield and glo -- ry, \markup { \smallCaps "Lord;" } You lift -- ed up my head.
	I cried out, \markup { \smallCaps "\"Lord!\"" } and from His hill To me His an -- swer sped.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
 	I lay down, slept, and woke a -- gain— The \markup { \smallCaps "Lord" } is keep -- ing me.
	I will not fear ten thou -- sand men En -- trenched sur -- round -- ing me.
}
sopWordsFour = \lyricmode
{
 	A -- rise, O \markup { \smallCaps "Lord!" } Save me, my God! You pun -- ish all my foes.
	You smite the face of wick -- ed men, Their teeth break with Your blows.
}
sopWordsFive = \lyricmode
{
	De -- li -- ver -- ance is from the \markup { \smallCaps "Lord," } Sal -- va -- tion His a -- lone!
	O let Your bless -- ing e -- ver -- more Be on Your pe -- ople shown!
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
