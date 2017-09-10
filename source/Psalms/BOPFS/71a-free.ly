\version "2.10.29"

\paper
{
        %page-count = 1
}

Title = \markup{ In Thee, O \smallCaps "Lord," Is All My Trust}

Writer = "Based on Psalm 71:1-8"

Translator = "The American Metrical Psalter, 1864"

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

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	ees4 bes2:/d bes4 ees2 ees4:/g aes4 ees4:/bes b:dim7 c2.:m aes2 ees4:/g ees2 aes4 bes2.:sus4 bes2
	g4:m/bes aes2:/c bes4:/d ees2 bes4:7/f ees2:/g ees4:7 aes2 bes4:7/aes ees4:/g ees aes:/c ees2:/b bes4 ees4 aes:/ees aes:6/ees ees2
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	In Thee, O \markup { \smallCaps "Lord," } is all my trust;
	De -- fend that trust from shame; __
	Be my De -- liv -- 'rer kind and just,
	And vin -- di -- cate Thy name. __
}
sopWordsTwo = \lyricmode
{
	Oh, send me down Thy res -- cuing power,
	And let me ev -- er flee, __
	And find my rock and shelt -- 'ring tower
	And fort -- ress, Lord, in Thee. __
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	De -- liv -- er still, O God my King, 
 	My soul from ruth -- less hands; __
	Where once I clung, there yet I cling, 
  	Where all my suc -- cour stands.  __
}
sopWordsFour = \lyricmode
{
	Thy con -- stant care was o'er the bloom
	Of my soft in -- fant days; __
	Thou wert my guar -- dian from the womb:
	Thine be "th' e" ter -- nal praise! __
}
sopWordsFive = \lyricmode
{
	The won -- der of a thou -- sand eyes,
  	I seek Thy ref -- uge still; __
	And 'til my life's last sun shall rise, 
	Thy name my lips shall fill. __
 

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
