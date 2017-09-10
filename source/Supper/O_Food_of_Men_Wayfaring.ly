\version "2.10.29"

Title = "O Food of Men Wayfaring"

Writer = "Latin Hymn, 1661"

Translator = "Trans. Athelstan Riley, 1906"

Composer = "Genevan Psalter, 1542"

Arranger = "Harm. Claude Goudimel, 1564"

Tune = "NE VEUILLES PAS, Ô SIRE"

Meter = " 7.7.6.7.7.6."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	%\override Staff.TimeSignature #'style = #'()
	%#(set-accidental-style 'modern-cautionary)
  	\override Staff.TimeSignature #'stencil = ##f
	\cadenzaOn
	\key g \major
	\tempo 4 = 112
}

soprano = {	
	e'2 e'4 e' d'2 d' e'4 (g'2 fis'4) g'2. \oneVoice r4 \voiceOne \bar ""
	b'2 b'4 d'' c'' b' a'2 g'2. \oneVoice r4 \voiceOne \bar ""
	d'2 e'4 g' fis' e' b'2. \oneVoice r4 \voiceOne \bar ""
	d''2 d''4 c'' b' a' g'2 e'2. \oneVoice r4 \voiceOne \bar ""
	a'2 a'4 g' fis' e' g'2 d'2. \oneVoice r4 \voiceOne \bar ""
	e'2 b'4 b' a'2 fis' e'1 \bar "|."
}

alto = {
	b2 c'4 c' b2 b e' (d') d'2. s4
	g'2 g'4 g' g' g'2 fis'4 g'2. s4
	b2 c'4 d' d' b d'2. s4
	g'2 g'4 g' g' fis' e'2 c'2. s4
	e'2 e'4 e' d' cis' d'2 b2. s4
	e'2 g'4 g' fis' (e'2) dis'4 e'1
}

tenor = {
	g2 a4 a fis2 g c'2 (a) b2. \oneVoice r4 \voiceOne
	d'2 d'4 b e' d' d'2 b2. \oneVoice r4 \voiceOne
	g2 g4 b a g fis2. \oneVoice r4 \voiceOne
	b2 b4 e' d' d' b2 a2. \oneVoice r4 \voiceOne
	c'2 c'4 c' a a b2 g2. \oneVoice r4 \voiceOne
	g2 d'4 d' c'2 b b1
}

bass = {
	e2 a,4 a, b,2 g, c (d) g,2. s4
	g2 g4 g c g, d2 g,2. s4
	g,2 c4 g, d e b,2. s4
	g2 g4 c g d e2 a,2. s4
	a,2 a,4 c d a, g,2 g,2. s4
	c2 g,4 g, a,2 b, <e, e>1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
       	O Food of men way -- far -- ing,
	The bread of an -- gels shar -- ing,
	O Man -- na from on high!
	We hun -- ger; Lord, sup -- ply us,
	Nor Thy de -- lights de -- ny us,
	Whose hearts to Thee draw nigh.
}

sopWordsTwo = \lyricmode
{
	O stream of love past tell -- ing,
	O pur -- est foun -- tain, well -- ing
	From out the Sav -- ior's side!
	We faint with thirst; re -- vive us,
	Of Thine a -- bun -- dance give us,
	And all we need pro -- vide.
}

sopWordsThree = \lyricmode
{
	O Je -- sus, by Thee bid -- den,
	We here a -- dore Thee, hid -- den
	'Neath forms of bread and wine.
	Grant when the veil is riv -- en,
	We may be -- hold, in heav -- en,
	Thy coun -- ten -- ance div -- ine.
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
