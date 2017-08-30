\version "2.10.29"

\paper
{
        %page-count = 1
}

Title = \markup{ In Thee, O \smallCaps "Lord," I Refuge Take}

Writer = "Based on Psalm 71:1-8"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 71A)"

Composer = "Frederick A. Gore-Ouseley, (1825-1899)"

Arranger = ""

Tune = "CONTEMPLATION"

Meter = " C.M."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 71:1-8" }


global = {
	\time 3/4
	\key ees \major
	\tempo 4 = 96
}

soprano = {
	\partial 4
	g'4 bes'2 f'4 g'2 bes'4 aes' (g') f' ees'2 g'4 c''2 bes'4 g'2 aes'4 f'2.~ f'2 \break \bar ""
	g'4 aes' (c'') bes' g'2 aes'4 bes' (c'') des'' c''2 d''4 ees'' (bes') aes' g'4. (aes'8) f'4 ees'2.~ ees'2 \bar "|."
}

alto = {
	g'4 f'2 d'4 ees'2 ees'4 ees'2 d'4 ees'2 ees'4 ees'2 ees'4 ees'2 ees'4 ees'4 (d' c' d'2) \break \bar ""
	d'4 ees'2 f'4 ees'2 d'4 ees'2 g'4 aes'2 f'4 ees'2 ees'4 ees'2 d'4 ees'4 (c' aes bes2)
}

tenor = {
	bes4 bes2 bes4 bes2 bes4 c' (bes) aes g2 c'4 c'2 ees'4 bes2 c'4 f2. (bes2) \break \bar ""
	bes4 aes2 f4 bes2 bes4 bes2 bes4 c'2 bes4 bes (g) aes bes2 aes4 g (aes f g2)
}

bass = {
	ees4 d2 bes,4 ees2 g,4 aes, (bes,) b, c2 c'4 aes2 g4 ees2 aes,4 bes,2.~ bes,2 \break \bar ""
	bes,4 c2 d4 ees2 f4 g2 ees4 aes2 aes4 g (ees) c bes,2 bes,4 ees2.~ ees2
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	In Thee, O \markup { \smallCaps "Lord," } I ref -- uge take;
	A -- shamed let me not be; __
	O save me in Thy right -- eous -- ness,
	Give ear, and res -- cue me. __
}
sopWordsTwo = \lyricmode
{
	Be Thou my rock, my dwell -- ing place,
	My con -- stant safe re -- sort. __
	Thou my sal -- va -- tion hast or -- dained;
	Thou art my rock and fort. __
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Free me, my God, from wick -- ed hands,
	Hands cru -- el and un -- just; __
	Thou, Lord Je -- ho -- vah, art my hope;
	From youth Thou art my trust. __
}
sopWordsFour = \lyricmode
{
	For I have been sus -- tained by Thee
	Through birth and ear -- ly days; __
	Brought from my mo --ther's womb by Thee,
	I'll give Thee con -- stant praise. __
}
sopWordsFive = \lyricmode
{
	To ma -- ny I a won -- der am;
	Thou art my ref -- uge strong. __
	My mouth is brim -- ming with Thy praise
	And hon -- or all day long. __	 

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
		ees4 bes2:/d bes4 ees2 ees4:/g aes4 ees4:/bes b:dim7 c2.:m aes2 ees4:/g ees2 aes4 bes2.:sus4 bes2
		g4:m/bes aes2:/c bes4:/d ees2 bes4:7/f ees2:/g ees4:7 aes2 bes4:7/aes ees4:/g ees aes:/c ees2:/b bes4 ees4 aes:/ees aes:6/ees ees2
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
