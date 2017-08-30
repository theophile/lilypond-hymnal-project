\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "The Glory of These Forty Days"

Writer = "Gregory I, 6th Century"

Translator = "Trans. Maurice F. Bell, 1906"

Composer = "Joseph Klug, 1543"

Arranger = "Harm. J.S. Bach"

Tune = "SPIRES"

Meter = " L.M."

\include "header.ly"



global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/2
	\key g \major	
	\tempo 2 = 54
}

soprano = {	
	\partial 2
	e'4 (fis') g'2 fis'4 (e') dis'2 e'4 (fis') g'2 fis' e' \breathe g' a' a' b' g' a' a' b'1 \bar "||" \break
	\partial 2
	b'2 c'' b'4 (c'') d'' (c'') b'2 a'4 (g') a'2 g' \breathe b' g' a' g' fis' e' dis' e'1 \bar "|."
	

}

alto = {
	b2 e'4 d' c'2 b b4 d' e'2 dis' b e' d'4 e' fis'2 <d' g'> <b e'> e'4 g' fis' e' dis'1
	e'2 e'4 fis' <d' g'>2 <d' a'> <d' g'> fis'4 g'~ g' fis' d'2 <b fis'> <b e'> << {e'4 dis'} \\ {a2} >> <b e'>2 dis' e'4 c' b2 b1

}

tenor = {
 	g4 a b2 a4 g fis2 g4 <fis a> <b e> c' fis b g2 b a d' s1. a2 fis1
	g2 a g fis g c'4 b c' a b2 dis s1. b4 a g2 fis4 g8 a <g e>1
}

bass = {
 	<e, e>2 e a, b,4 a, g, fis, e, a, b,2 e, e fis d g4 fis e d c b, c2 b,1
	e2 a, g, fis, g, d d g dis e4 e, fis,2 g,4 a, b,2 c4 a, b,2 e,1
}

sopWords = \lyricmode
{
	\set stanza = "1. "
	The glo -- ry of these for -- ty days
	We ce -- le -- brate with songs of praise;
	For Christ, by Whom all things were made,
	Him -- self has fast -- ed and has prayed.
}
sopWordsTwo = \lyricmode
{
	\set stanza = "2. "
	A -- lone and fast -- ing Mo -- ses saw
	The lov -- ing God Who gave the law;
	And to E -- li -- jah, fast -- ing, came
	The steeds and cha -- ri -- ots of flame.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	\set stanza = "3. "
	So Dan -- iel trained his mys -- tic sight,
	De -- liv -- ered from the li -- ons’ might;
	And John, the Bride -- groom’s friend, be -- came
	The her -- ald of Mes -- si -- ah’s Name.
}
sopWordsFour = \lyricmode
{
	\set stanza = "4. "
	Then grant us, Lord, like them to be
	Full oft in fast and prayer with Thee;
	Our spir -- its strength -- en with Thy grace,
	And give us joy to see Thy face.
}
sopWordsFive = \lyricmode
{
	\set stanza = "5. "
	O Fa -- ther, Son, and Spir -- it blest,
	To thee be ev -- ery prayer ad -- dressed,
	Who art in three -- fold Name a -- dored,
	From age to age, the on -- ly Lord.
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
