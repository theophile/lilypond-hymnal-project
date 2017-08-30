\version "2.12.3"

\paper { page-count = 1 }

Title = "When Overwhelmed With Grief"

Writer = "Isaac Watts, 1719"

Translator = ""

Composer = "James Lyon, 1774 (mod. 2010)"

Arranger = "Arr. C. Meredith, 2010"

Tune = "MECHIAS"

Meter = " S.M.D."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key aes \major
	\tempo 4 = 120
}

soprano = {
 	\partial 2 c''2 e''4 ( f'' g'' ) f'' e'' ( d'' c'' ) b' c'' (a' g' ) b' c'' e'' f''8 ( e'' ) d'' ( c'') b'2 
	c'' b'4 a' g' a'8 ( c'') c''4 d'' e'' e'' f'' e'' d'' d'' b'2. d''4 e'' ( d'' c'' ) d'' c''2 b' c''1
	\oneVoice r2 \voiceOne g'2 c''4. ( d''8 e''4. d''8 c'' d'' e'' f'' g''4 ) g''8 ( f'' ) e''4 ( f'' g'' ) g' c'' b' c'' c'' d''8 (c'') b' (a') g'4 b' c'' c'' f''8 ( e'' ) d'' (c'') b'2
	d''2 e''4 d'' c'' c'' f'' e'' d'' d'' g'' a' b' d'' c''8 ( d'' c'' d'' e'' f'' e'' f'' g''4 ) g''4 g'' a''8 (f'') e''2 d'' c''1 \bar "|."
}

alto = {
	\partial 2 g'2 g'2. f'4 e' (f' g') g' e'2. f'4 g' g' f' a' g'2 g' g'4 f' g' f'8 (g') a'4 a' g' g' a' a' b' a' g'2. g'4 e' ( f' g' ) a' g'2 g'2 g'1
	s2 g'2 g'1~ g'2. f'4 e'2. d'4 e'4 g' g' g' f' f' e' f' g' g' a' a' g'2 g' g'4 g' g' g' a' g' g' g' g' g' g' f' g'1~ g'4 b' c'' a' g'2 g'4 (f') e'1
}

tenor = {
	\partial 2 g2 c'4 (d' e') d' c' (f' e') d' c'2. d'4 e' c' d'8 (c') b (a) g'2 
	c'2 c'4 c' c'8 (b) a (g) f4 f e g a a g fis g2. b4 c'4. (d'8 e'4) f' e'2 d' c'1
	\oneVoice r2 \voiceOne d'2 e'4. (d'8 c'4. d'8 e' f' e' d' c'4) b4 c'2. b4 c' d' e' e' f'8 (e') d' (c') b4 d'4 e' e' d'8 (c') b (a) g2
	b2 c'4 d' e' c' c' c' b b c' c' d' d' e'1~ e'4 d' e' d' c'2 b4 (d') c'1
}

bass = {
	\partial 2 g4 (f) e (d c) b, c (d e8 f) g4 c (f e) d c c d d g2 c e4 f e e d d c e d c b, d g2. g4 c' (f4 e4.) d8 g2 g c1
	s2 g2 c1~ c2. d4 e ( d c ) b, c g c c d d g g c' g d d g2 g c4 b c c f c g g e f g g c1~ c4 g e f g2 g2 c1
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
	When, o -- ver -- whelm'd with grief, My heart with -- in me dies,
	Help -- less, and far from all re -- lief, To heav'n I lift mine eyes,
	To heav'n I lift mine eyes.
	O lead me to the rock, O lead me to the rock That's high a -- bove my head, 
	And make the co -- ver of Thy wings My shel -- ter and my shade, My shel -- ter and my shade.
}
sopWordsTwo = \lyricmode
{
	With -- in Thy pres -- ence, Lord, For -- ev -- er I'll a -- bide;
	Thou art the tow'r of my de -- fense, The ref -- uge where I hide,
	The ref -- uge where I hide.
	Thou giv -- est me the lot, Thou giv -- est me the lot Of those that fear Thy name;
	If end -- less life be their re -- ward, I shall pos -- sess the same,
	I shall pos -- sess the same.	
}
sopWordsThree = \lyricmode
{
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
   \new ChordNames \chordmode { \set majorSevenSymbol = "maj7"
 
		}
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \transpose c aes, \soprano }
      \context Voice = "two" { \global \voiceTwo \transpose c aes, \alto }
    >>

	\include "lyrics-midstaff.ly"

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree \transpose c aes, \tenor }
      \context Voice = "two" { \global \voiceFour \transpose c aes, \bass }
    >>
	
	\include "lyrics-understaff.ly"

  >>
	
\include "standard-layout.ly"
\include "tag.ly"
