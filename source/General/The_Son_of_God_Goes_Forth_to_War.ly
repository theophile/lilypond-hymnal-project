\version "2.10.29"

Title = "The Son of God Goes Forth to War"

Writer = "Reginald Heber, 1812"

Composer = "Gregory D. Wilbur, 1994"

Translator = ""

Arranger = ""

Tune = "GREYOAKS"

Meter = "CMD"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 6/8
	\key e \minor		
}

soprano = {	
	\tempo 4. = 44
				\partial 8
				e'8 b4 e'8 e'4 e'16 (fis') g'8. (fis'16) e'8 d'4 b8 e'4. b'4. a'8. (g'16) fis'8 e'4 \bar "" \break
				e'8 b4 e'8 e'4 e'16 (fis') g'8. (fis'16) e'8 d'4 b8 e'4. g'4. a'8. (g'16) a'8 b'4. \break
				<e'' c''>4. <d'' b'>4 b'8 b'8. (a'16) g'8 a'4 g'16 (a') b'4 e''8 d''8. (c''16) b'8 a'4 g'8 e'4 \bar "" \break
				e'8 e''4 e''8 e''4 e''8 d''8. (c''16) b'8 a'4 g'16 (a') b'8. (a'16) g'8 a'8 fis'4 e'4.~ e'4 \bar "|."
}

alto = {
	\partial 8
				e'8 b4 e'8 e'4 c'16 (d') e'8. (d'16) c'8 a4 b8 b4. e' fis'8. (e'16) d'8 b4 \bar "" \break
				b8 b4 b8 b4 c'16 (d') e'8. (d'16) c'8 a4 b8 b4. e'4. fis'8. (e'16) fis'8 <g' e'>4. \break
				g'4. g'4 g'8 g'8. (fis'16) e'8 fis'4 e'16 (fis') e'4 g'8 fis'4 g'8 fis'4 d'8 c'4 \bar "" \break
				c'8 c''4 b'8 a'4 a'8 b'8. (a'16) g'8 fis'4 g'16 (fis') e'8. (fis'16) e'8 fis' d'4 b4.~ b4
}

tenor = {
	\partial 8
				e8 b,4 e8 e4 a8 g8 (a) g fis4 fis8 g4. g a8 (b) a g4
				a8 g4 a8 g4 a8 g (a) g fis4 fis8 g4. g a4 d'8 b4.
				c'4. d'4 d'8 <e' b>4 b8 <d' a>4 <d' a>8 g4 g8 a4 b8 d'4 b8 c'4
				b8 c' (d') e'8 d'4 d'8 d'4 e'8 d'4 d'8 e'4 b8 d'8 a4 g4.~ g4
}

bass = {
	\partial 8
				e8 b,4 e8 e4 d8 c4 c8 d4 d8 e4 (d8) c4. d4 d8 e4
				fis8 e4 fis8 e4 d8 c4 c8 d4 d8 e4 (d8) c4. d8 (e) fis e4 (g8)
				c'8 (b a) g4 fis8 e8 (fis) g fis (e) d c4 c8 d4 e8 fis4 fis8 g4
				g8 a4 g8 fis4 fis8 g4 g8 a4 a8 g8 (fis) e d d4 e4.~ e4
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	\partial 8
	r2. a16:m/d d16 c8. d16:/c c8 d4 b8:m/d e4.:m c4.:maj7 d8. e16:m/d d8 e4:m
	e8:sus4/fis e4:m e8:sus4/fis e4:m a16:m/d d16 c8. d16:/c c8 d4 b8:m/d e4.:m c4. d8 e8:m d8:/fis e4.:m
	c4. g4 g8:/fis e8.:m d16/fis e8:m/g d4/fis d16:sus4 d16 c4:maj7 c8 d4 e8:m d4:/fis b8:m6/fis c4:/g
	c8:maj7 a4:m e8:m d4.:9/fis g8. g16:sus4 e8:m/g d4:/a d16:sus4/a d16:/a e8.:m/g d16:/fis e8:m d4. e4.:m
}

sopWords = \lyricmode
{
The Son of God goes forth to war, a king -- ly crown to gain;
	His blood red ban -- ner streams a -- far! Who fol -- lows in His train?
	Who best can drink His cup of woe, Tri -- um -- phant o -- ver pain,
	Who pa -- tient bears his cross be -- low, He fol -- lows in His train.
}
sopWordsTwo = \lyricmode
{
	The mar -- tyr first, whose ea -- gle eye Could pierce be -- yond the grave;
	Who saw his Mas -- ter in the sky, And called on Him to save.
	Like Him, with par -- don on His tongue, In midst of mor -- tal pain,
	He prayed for them that did the wrong! Who fol -- lows in His train?
}
sopWordsThree = \lyricmode
{
	A glo -- rious band, the cho -- sen few On whom the Spir -- it came,
	Twelve val -- iant saints, their hope they knew, And mocked the cross and flame.
	They met the ty -- rant's bran -- dished steel, The li -- on's gor -- y mane;
	They bowed their necks the death to feel: Who fol -- lows in their train?
}
sopWordsFour = \lyricmode
{
	A no -- ble ar -- my, men and boys, The ma -- tron and the maid,
	A -- round the Sav -- ior's throne re -- joice In robes of light ar -- rayed.
	They climbed the steep as -- cent of heav'n, Through per -- il, toil, and pain;
	O God, to us may grace be giv'n To fol -- low in their train.
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
