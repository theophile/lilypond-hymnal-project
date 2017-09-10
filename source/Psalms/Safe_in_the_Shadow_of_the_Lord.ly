\version "2.10.29"

\paper { page-count = 1 }

Title = "Safe in the Shadow of the Lord"

Writer = "Timothy Dudley-Smith, 1970"

Translator = "Based on Psalm 91"

Composer = "Supply Belcher, 1794"

Arranger = ""

Tune = "FUNERAL HYMN"

Meter = "CM (refrain)"

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 91" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 2/2
	\key a \minor
	\tempo 2 = 60
}

soprano = {
	a'2 a'4 c'' b'2. d''4 c''2 (b'4) a'4 gis'1 c''2 c''4 c'' b'2. g'4 c''1
	e''2 c''4 b' a'1 \break a'2 a'4 a' b'1 c''2 a'4 c'' b'4 (a') gis'2 a'1
	\oneVoice r2 \voiceOne g' a'4 b'8 (c'') d''4 c'' b'1 \break
	c''2 e''4 c'' b' b' a' c'' b'1 a'2 a'4 a' gis'2 gis' a'1 \bar "|."
}

alto = {
	e'2 e'4 e' g'2. g'4 g'2~ (g'8 fis') e' (d') e'1 
	e'2 g'8 (a') g' (f') e'2. g'4 e'1
	g'2 a'4 g' e'1 c'2 fis'4 fis' g'1 e'2 a'4 g' f'2 e' e'1
	s2 e'2 f'4 g' a' g' g'1 
	g'2 g'4 g' e' e' e' a' e'1  
	a'4. (g'8) fis'4 f' e'2 e' e'1
}

tenor = {
	e'2 c'4 a d'2. b4 c' (d'8 e' d'4) c'4 b1
	c'2 g4 g g2. g4 g1 c'2 c'4 b c'1 c'2 d'4 d' d'1 e'2 f'4 e' d' (c') b2 a1 
	\oneVoice r2 \voiceOne c'2 d'4 e' f' e' d'1 
	c'2 e4 e g g c' a gis1
	c'2 d'4 e'8 (d') c'2 b a1
}

bass = {
	a2 a4 a g2. g4 c2 (g4) a e1 c2 c8 (d) e (f) g2. g,4 c1
	c2 f4 g a1 f2 d4 d g1 c2 d4 e8 (f) g4 (a) e2 a,1
	s2 c2 f4 e d c g,1 
	c2 c4 c g g a a e1
	f2 d4 d e2 e a,1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	a1:m g1 c2 g4 a4:m e1 c2. c4:/e e2.:m/g r4 c1
	c2 f4 e4:m/g a1:m f2 d2 g1 c2 d4:m c4:/e g4:7 f4:/a e2 a1:m
	r2 c2 d4:m/f e4:m d4:m c4 g1 c1 e2:m/g a2:m e1
	f2 d4 d4:m9 c2:aug/e e2 a1:m
}

dropLyrics =
{
    \override LyricText #'extra-offset = #'(0 . -8)
    \override LyricHyphen #'extra-offset = #'(0 . -8)
    \override LyricExtender #'extra-offset = #'(0 . -8)
}

raiseLyrics =
{
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	Safe in the sha -- dow of the Lord,
	be -- neath His hand and power,
	\dropLyrics I trust in Him, I trust in Him,
	\raiseLyrics my fort -- ress and my tower.
	My fort -- ress and my tower;
	Safe in the sha -- dow of the Lord,
	be -- neath His hand and power.
}
sopWordsTwo = \lyricmode
{
	My hope is set on God a -- lone
	though Sa -- tan spreads his snare;
	\skipFour \skipFour
	to keep me in His care.
	Though Sa -- tan spreads his snare,
	My hope is set on God a -- lone
	to keep me in His care.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	From fears and phan -- toms of the night,
	from foes a -- bout my way,
	\skipFour \skipFour
	by dark -- ness as by day.
	By dark -- ness as by day,
	from fears and phan -- toms of the night,
	from foes a -- bout my way.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	His ho -- ly an -- gels keep my feet
	se -- cure from ev -- 'ry stone;
	\skipFour \skipFour
	and un -- a -- fraid go on.
	Se -- cure from ev -- 'ry stone
	His ho -- ly an -- gels keep my feet;
	I un -- a -- fraid go on.
}
sopWordsFive = \lyricmode
{
	Strong in the e -- ver -- last -- ing name,
	and in my Fa -- ther's care,
	\skipFour \skipFour
	who hears and an -- swers prayer.
	Who hears and an -- swers prayer;
	Strong in the e -- ver -- last -- ing name,
	and in my Fa -- ther's care.
}
sopWordsSix = \lyricmode
{
	Safe in the sha -- dow of the Lord,
	pos -- sessed by love di -- vine,
	\skipFour \skipFour
	and meet His love with mine.
	Pos -- sessed by love di -- vine,
	I trust in Him, I trust in Him
	and meet His love with mine.
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
