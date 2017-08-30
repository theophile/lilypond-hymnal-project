\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "Ah, Holy Jesus"

Writer = "Johann Heermann, 1630"

Translator = "Trans. Robert S. Bridges, 1897"

Composer = "Rouen church melody"

Arranger = "Arr. Healey Willan, 1880-1968"

Tune = "ISTE CONFESSOR"

Meter = " 11.11.11.5"

\include "header.ly"



global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\autoBeamOff
	\time 4/4
	\key d \minor	
	\tempo 4 = 90
}

soprano = {	
	d'2 a'4 f' g'2 a' d'4. e'8 f'4 g' f' (e') d'2 \bar "||"
	d'2 a'4 f' g'2 a' a'4. g'8 a'4 b' c'' (b') a'2 \bar "||"
	d''2 c''4 d'' c'' (bes') a'2 c''4. bes'8 a'4 bes' a' (g') f'2 \bar "||"
	a'2 d'4 e' f'2 (e') d'1 \bar "|."
}

alto = {
	a2 e'4 d' e'2 e' bes2 c'4 d' c'2 a
	bes2 c'4 d' e'2 f' f'4. c'8 c'4 f' e'2 e'
	f'2 g'4 f'~ f' d' e'2 f'4. e'8 f'4 g' f' (e') d'2
	e'2 bes c'4 (d'~ d' c'8[ bes]) a1

}

tenor = {
 	f2 a4 a c'2 c' f4. g8 f4 bes a (g) f2
	f2 f4 a c'2 c' d'4. g8 f4 f g2 c'
	a2 g4 a~ a d'~ d' c' a4. bes8 c'4 d' c'2 a
	c'2 f4 g a (bes4 g2~ g) f
}

bass = {
 	d2 c4 d c2 a, bes,4. g,8 a,4 bes, c2 d4 (c)
	bes,2 f,4 d c2 f4 (e) d4. e8 f4 d c (e) a,2
	d2 e4 d4 f, g, a,2 f,4. g,8 a,4 g, a, (c) d2
	a,2 bes,4 g, f, (bes, c c, d,1)
}

sopWords = \lyricmode
{
	Ah, ho -- ly Je -- sus, how hast thou off -- end -- ed, 
	that we to judge thee have in hate pre -- tend -- ed? 
	By foes de -- ri -- ded, by thine own re -- ject -- ed, 
	O most af -- flict -- ed! 
}
sopWordsTwo = \lyricmode
{
	Who was the guil -- ty? Who brought this up -- on thee? 
	A -- las, my trea -- son, Je -- sus, hath un -- done thee! 
	"'Twas" I, Lord Je -- sus, I it was de -- nied thee; 
	I cru -- ci -- fied thee.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Lo, the Good Shep -- herd for the sheep is of -- fered; 
	the slave hath sinn -- èd, and the Son hath suf -- fered. 
	For our a -- tone -- ment, while we no -- thing heed -- ed, 
	God in -- ter -- ce -- ded. 
}
sopWordsFour = \lyricmode
{
	For me, kind Je -- sus, was thy in -- car -- na -- tion, 
	thy mor -- tal sorr -- ow, and thy life's o -- bla -- tion; 
	thy death of an -- guish and thy bit -- ter pas -- sion, 
	for my sal -- va -- tion. 
}
sopWordsFive = \lyricmode
{
	There -- fore, kind Je -- sus, since I can -- not pay thee, 
	I do a -- dore thee, and will ev -- er pray thee, 
	think on thy pi -- ty and thy love un -- swerv -- ing, 
	not my de -- serv -- ing.
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
