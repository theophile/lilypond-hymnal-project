\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "O Word, that Goest Forth on High"

Writer = "7th Century Latin Chant"

Translator = ""

Composer = "Andernach Gesangbuch, 1608"

Arranger = ""

Tune = "REX GLORIOSE"

Meter = " L.M."

\include "header.ly"
\header { subtitle = \markup { \italic "(Metrical)" } }


global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key c \major	
	\tempo 2 = 72
	\time 4/2
}

soprano = {	
	\partial 2
	c'2 e'2 f' g' g' a' b' c''2 g'2 c''2. b'4 a'2 g' a' f' g'2 \bar "" \break
	g'2 a'2 f' g' e' f' d' c'2 c'' b'2 a' g' e' f'4 (e') d'2 c' \bar "|."
	

}

alto = {
 	c'2 c'2 c' d' g' f' e'4 (d') e'2 e' g'2 e' f' g' f' c' d'2
	c' e'2 d' d' c' c' a4 (b) c'2 e' g'2 f'4 (e') d'2 c' d'4 (c') c' (b) c'2

}

tenor = {
	e2 g2 c' b c' c' g g2 c' c'2 g b c' c' c' b2 
	c'4 (b) a2 a g c'4 (b) a2 f e2 a g2 c' b a a4 (g) a (g) e2
}

bass = {
	c2 c4 (b,) a,2 g,4 (g) f (e) d2 g c2 c e2 c d e f a g2
	e c2 d b, c d f,4 (g,) a,2 a e2 f g a d4 (e) f (g) c2
}

sopWords = \lyricmode
{
	\set stanza = "1. "
	O Word, that go -- est forth on high
	From God's own depths e -- ter -- nal -- ly,
	And in these lat -- ter days wast born
	For suc -- cor to a world for -- lorn;
}
sopWordsTwo = \lyricmode
{
	\set stanza = "2. "
	Pour light up -- on us from a -- bove,
	And fire our hearts with ar -- dent love,
	That, as we hear Thy truth to -- day,
	All wrong de -- sires may burn a -- way;
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	\set stanza = "3. "
	And when, as judge, Thou draw -- est nigh
	The se -- crets of our hearts to try,
	To re -- com -- pense each hid -- den sin
	And bid the saints their reign be -- gin;
}
sopWordsFour = \lyricmode
{
	%\override LyricText #'font-shape = #'italic
	\set stanza = "4. "
	O let us not, weak sin -- ful men,
	Be driv -- en from Thy pre -- sence then,
	But with Thy saints for -- ev -- er stand
	In per -- fect love at Thy right hand.
}
sopWordsFive = \lyricmode
{
	\set stanza = "5. "
	To God the Fa -- ther, God the Son,
	And God the Spir -- it, ev -- er one,
	Praise, hon -- or, might, and glo -- ry be
	From age to age, e -- ter -- nal -- ly.
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
		%g2:m d4:m g4:m/bes c4:m6 d4 g2:m
		%g2:m c4.:m g8:m f4 bes2.
		%bes4 f4 bes4 ees4 c4:m g8:m/d d8 g2:m
		%ees4 c4:m d4:m bes4 d8 g8:m/d d4 g2 
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
