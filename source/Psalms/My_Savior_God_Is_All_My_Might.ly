\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "My Savior God Is All My Light"

Writer = "Douglas Wilson, 2001"

Translator = "Based on Psalm 27"

Composer = "Heinrich Schütz, 1661"

Arranger = ""

Tune = "MEIN LICHT UND HEIL"

Meter = " 8.7.8.7.4.4.7.4.4.7."

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 27" }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key c \major
	\tempo 2 = 72
}

barspace = #(define-music-function (parser location extent) (pair?) #{
   \once \override Staff.Clef #'extra-spacing-width = #$extent
#})

soprano = {	
	\time 12/4
	\barspace #'(0 . 5) 
	d'2 a' a'4 c''2 a'4 bes' g' a'2
	\time 14/4
	c''2 d''2. c''4 b' a' b'2 a'1 \break
	\time 12/4
	d'2 a' a'4 c''2 a'4 bes' g' a'2
	\time 14/4
	c''2 d''2. c''4 b' a' b'2 a'1 \break
	\time 6/4
	a'2 g'4 f' d'2 
	e'2 g'4 e' c'2
	\time 12/4
	c'2 f' g'4 a'2 c''4 bes'2 a' \break
	\time 6/4
	f'2 a'4 b' c''2
	c'2 g'4 a' bes'2
	\time 16/4
	a'2 c''2. d''4 e'' d'' d''2 (cis'') d''1 \bar "|."
}

alto = {
	a2 d' d'4 e'2 d'4 d' d' cis'2
	e' f'2. e'4 e' c' e'2 e'1
	a2 d' d'4 e'2 d'4 d' d' cis'2
	e' f'2. e'4 e' c' e'2 e'1
	f'2 e'4 d' b2 
	c'2 d'4 c' a2
	a2 d' e'4 f'2 e'4 g'2 fis'
	d' c'4 f' e'2
	e' e'4 f' g'2
	f' e'2. g'4 g' f' e'1 fis'
}

tenor = {
	f2 f f4 a2 f4 g d e2
	a a2. a4 gis a gis2 a1
	f2 f f4 a2 f4 g d e2
	a a2. a4 gis a gis2 a1
	c'2 c'4 a g2
	g d4 g f2
	f a c'4 c'2 c'4 d'2 d'
	a a4 d' g2
	g c'4 c' d'2
	d' c'4. (b8 a4) b c' a a1 a
}

bass = {
	d2 d d4 a,2 d4 g, bes, a,2
	a, d2. a,4 e f e2 a,1
	d2 d d4 a,2 d4 g, bes, a,2
	a, d2. a,4 e f e2 a,1
	f2 c4 d g,2 
	c b,4 c f,2
	f d c4 f2 a4 g2 d
	d f4 d c2
	c c4 a, g,2
	d2 a2. g4 c d a2 (a,) d1
}

sopWords = \lyricmode
{
	My Sav -- ior God is all my light, Whom shall I fear be -- side Him?
	My God is strength, and life and sight, I can -- not fear be -- side Him.
	And when my foes Would eat my flesh, In pride those foes have stum -- bled.
	Their ha -- tred grows, Their traps are mesh, But head -- long they have tum -- bled.
}
sopWordsTwo = \lyricmode
{
        Though a -- rmies camp a -- round me here My heart shall ne -- ver trem -- ble.
	Though wars a -- rise, I will not fear, His gra -- ces I as -- sem -- ble.
	I seek one thing, The house of God, That I may see His beau -- ty.
	And I will sing My praise to God, With ho -- li -- ness my du -- ty.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	In times of trou -- ble I will seek To hide in His pa -- vil -- ion.
	He sets me on a moun -- tain peak, My God pro -- tects His chil -- dren.
	And so my head Is lift -- ed up. My en -- e -- mies will suf -- fer.
	With joy my bread, With praise my cup, My wor -- ship I will of -- fer.
}
sopWordsFour = \lyricmode
{
	
	O \markup { \smallCaps "Lord" } my God, please hear with grace, Please hear my fer -- vent cry -- ing.
	Your Word has said to seek Your face, You save my soul from dy -- ing.
	Turn not Your face A -- way from me, Nor turn a -- way in an -- ger.
	Ex -- tend Your grace So I might see; And save me from all dan -- ger.
}
sopWordsFive = \lyricmode
{
	My fa -- ther and my mo -- ther flee, Yet still the \markup { \smallCaps "Lord" } will save me.
	Teach me, O God, that I may see The path of life You gave me.
	With cru -- el breath my foes a -- rise, Full ha -- tred they en -- cour -- age.
	Spare me from death, And from their lies, Wait on the \markup { \smallCaps "Lord" } with cour -- age.
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
