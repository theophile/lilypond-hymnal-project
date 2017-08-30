\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "Who Would True Valor See"

Writer = "John Bunyan, 1684"

Translator = ""

Composer = "Traditional Sussex Melody"

Arranger = "Harm. Ralph Vaughan Williams, 1904"

Tune = "MONKS GATE"

Meter = " 6.5.6.5.6.6.6.5."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 2/2
	\key ees \major
	\tempo 2 = 82
	%\transpose d ees
}

soprano = {	
	d'4. (e'8) fis'4 d' fis'8 (g') a'4 b'2 a' a'4 d' cis' d'2.
	d'4. (e'8) fis'4 d' fis'8 (g') a'4 b'2 a' a'4 d' cis' d'2.
	a'2 d''4 b' \time 3/2 cis'' d''8 (cis'') b'2. a'4 \time 2/2 fis'8 (e') d'4 fis' g' a'2. d''4 a'4. b'8 b' (a') g' (fis') e'4 b' a' d' cis' d'2.
	 \bar "|."
}

alto = {
	a2 d'4 a d' cis' b2 cis' d'4 a a a2.
	a2 d'4 a d' cis' b2 cis' d'4 a a a2.
	d'4. (e'8) fis'4 fis' g' fis'8 (e') d'2. e'4 d' a d' d' cis'2.
	d'4 cis' d' d' d' e' cis' d' b a a2. 
}

tenor = {
 	fis4. (g8) a4 fis d e g2 a a4 a g fis2.
	fis4. (g8) a4 fis d e g2 a a4 a g fis2.
	fis2 b4 b b ais b2 (g4) e a a fis d e2 (a4) 
	a g fis g b cis' cis' a g g fis2.
}

bass = {
 	d2 d4 d b, a, g,2 g fis4 fis e d2.
	d2 d4 d b, a, g,2 g fis4 fis e d2.
	d4. (cis8) b,4 d e fis g2 (b,4) cis d fis d b, a, (a g) 
	fis e d g e a g fis e a, d2.
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
	Who would true val -- or see,
	Let him come hith -- er;
	One here will con -- stant be,
	Come wind, come wea -- ther
	There's no dis -- cour -- age -- ment
	Shall make him once re -- lent
	His first a -- vowed in -- tent
	To be a pil -- grim.
}
sopWordsTwo = \lyricmode
{
	Who -- so be -- set him round
	With dis -- mal sto -- ries
	Do but them -- selves con -- found;
	His strength the more is.
	No li -- on can him fright,
	He'll with a gi -- ant fight,
	But he will have a right
	To be a pil -- grim.
}
sopWordsThree = \lyricmode
{
	Hob -- gob -- lin nor foul fiend
	Can daunt his spir -- it,
	He knows he at the end
	Shall life in -- her -- it.
	Then fan -- cies fly a -- way,
	He'll fear not what men say,
	He'll la -- bor night and day
	To be a pil -- grim.
}
sopWordsFour = \lyricmode
{
 	Who would true val -- or see,
	Let him come hith -- er;
	One here will con -- stant be,
	Come wind, come wea -- ther
	There's no dis -- cour -- age -- ment
	Shall make him once re -- lent
	His first a -- vowed in -- tent
	To be a pil -- grim.
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
      \context Voice = "one" { \global \voiceOne \transpose d ees \soprano }
      \context Voice = "two" { \global \voiceTwo \transpose d ees \alto }
    >>

	\include "lyrics-midstaff.ly"

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree \transpose d ees \tenor }
      \context Voice = "two" { \global \voiceFour \transpose d ees \bass }
    >>
	
	\include "lyrics-understaff.ly"

  >>
	
\include "standard-layout.ly"
\include "tag.ly"
