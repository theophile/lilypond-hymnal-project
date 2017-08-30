\version "2.10.29"

\paper
{
        page-count = 1
}

Title = "To Thee I Lift My Soul"

Writer = "Based on Psalm 25:1-7"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 25A)"

Composer = "George J. Elvey (1868)"

Arranger = ""

Tune = "DIADEMATA"

Meter = " S.M.D."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 25:1-7" }


global = {
	\time 4/4
	\key ees \major
	\tempo 4 = 100
	\autoBeamOff
}

soprano = {
	ees'4 ees'8 ees' g'4 g' c''2. c''4 bes' ees' aes' g' f'2. \bar "" \break
	f'4 g' bes' c'' bes' a' g'8[ f'] bes'4 ees'' d'' ees'' c'' c'' bes'2. \bar "" \break
	bes'4 bes' g' f' ees' c''2. c''4 c'' a' g' f' d''2. \bar "" \break
	d''4 ees''4. d''8 c''4 bes' aes' f' g' bes' aes' g' f' f' ees'1 \bar "|."
}

alto = {
	bes4 bes8 bes ees'4 ees' ees'2. ees'4 ees' ees' d' ees' d'2.
	d'4 ees' f' ees' ees' c' c' f' ees' f' g' c' f' d'2.
	d'4 ees' ees' d' ees' ees'2. e'4 f' f' ees' ees' d'2.
	f'4 ees' ees' ees' ees' ees' d' ees' ees' ees' ees' ees' d' ees'1
}

tenor = {
	g4 g8 g g4 g aes2. aes4 bes c' aes bes bes2.
	bes4 bes bes g g a a bes a bes bes bes a bes2.
	bes4 bes bes aes bes c'2. bes4 a c' bes c' bes2.
	bes4 bes bes aes bes c' bes bes bes c' bes bes4. aes8 g1
}

bass = {
	ees4 ees8 ees c4 c aes,2. aes4 g aes f ees bes,2.
	bes,4 ees d c ees f ees d c bes, ees f f bes,2.
	aes4 g ees f g aes2. g4 f f g a bes2.
	aes4 g g aes g f bes ees g, aes, ees bes, bes, ees1
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	To Thee I lift my soul, O \markup { \smallCaps "Lord;" } I trust in Thee,
	My God; let me not be a -- shamed nor foes ex -- ult o’er me.
	Yea, none that wait on Thee shall be a -- shamed at all;
	But those that wan -- ton -- ly trans -- gress, up -- on them shame shall fall.
}
sopWordsTwo = \lyricmode
{
	Show me Thy ways, O \markup { \smallCaps "Lord;" } Thy paths, O teach Thou me,
	And do Thou lead me in Thy truth; there -- in my teach -- er be.
	For Thou art God that dost to me sal -- va -- tion send,
	And I up -- on Thee all the day ex -- pect -- ing do at -- tend.
}
sopWordsThree = \lyricmode
{
	Thy ten -- der mer -- cies, \markup { \smallCaps "Lord," } to mind do Thou re -- call,
	And lov -- ing -- kind -- ness -- es, for they have been through a -- ges all.
	My sins of youth, my faults, do Thou, O \markup { \smallCaps "Lord," } for -- get;
	In lov -- ing -- kind -- ness think on me and for Thy good -- ness great.
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
