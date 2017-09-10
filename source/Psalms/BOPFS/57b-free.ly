\version "2.10.29"

\paper
{
        page-count = 1
}

Title = "Be Thou Exalted, O My God"

Writer = "Based on Psalm 57:5-11"

Translator = "Specimens of an Improved Metrical Translation of the Psalms of David, 1840"

Composer = "Chester G. Allen, 1869"

Arranger = ""

Tune = "SUNDERLAND"

Meter = " C.M."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 2" }


global = {
	\time 4/4
	\key c \major
	\tempo 2 = 80
	\autoBeamOff
}

soprano = {
	\partial 4
	g'4 c''2 c'' b'2. g'4 a'2 b' c''2. e''4 d''2. c''4 b' (d'') c'' (a') g'2. \bar "" \break
	g'4 g'2 f' e'2. g'4 c''2 e'' d''2. d''4 e''2 d''4 (c'') c''2 b' c''2.
	\bar "|."
}

alto = {
	g'4 e'2 g' g'2. g'4 f'2 f' e'2. g'4 g'2. g'4 g' (b') a' (fis') g'2.
	e'4 e'2 d' c'2. e'4 g'2 g' g'2. g'4 g'2 f' e' d'4 (f') e'2.
}

tenor = {
	g4 g2 c' d'2. c'4 c'2 g g2. c'4 b4. (c'8 d'4) c'4 d'2 d'4 (c') b2.
	c'4 c'2 g g2. c'4 e'2 c' b2. b4 c'2 a g g g2.
}

bass = {
	g4 c2 e g2. e4 f2 d c2. c4 g4. (a8 b4) c'4 d'2 d g2. c4 c2 c c2. c4 c2 c4 (e) g2. g4 c'2 f g g, c2.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	r4 c2 c:/e g2. c4:/e f2 g:7/d c1 g2. c4 g2:/d d4 d:7 g2.
	c2. g2:7/c c1. c4 c:/e g1 c2 d4:m/f f c2:/g g:7 c2.
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	Be Thou ex -- alt -- ed, O my God, A -- bove the star -- ry sky;
	And let Thy glo -- ry ov -- er -- spread The earth, O Thou Most High!
}
sopWordsTwo = \lyricmode
{
	They spread their net ac -- cross my path, And bowed my spir -- it down:
	In -- to the pit they dug for me Lo! they them -- selves are thrown!
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	O God, my heart is now pre -- pared A lof -- ty song to sing,
	To sing loud an -- thems to the praise Of heavn's ex -- alt -- ed King.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	A -- wake, my slum -- bering soul, a -- wake; A -- wake my harp and lyre;
	The ear -- ly dawn shall hear my song, And its first notes in -- spire.
}
sopWordsFive = \lyricmode
{
 	To dis -- tant na -- tions I will sing Thy prais -- es, O my God!
	I'll sound the grate -- ful hymn of praise, O'er all the world a -- broad.
}
sopWordsSix = \lyricmode
{
	For sure, thy lov -- ing -- kind -- ness, Lord, The lof -- ty heav'ns trans -- cends;
	And far a -- bove the flee -- cy clouds Thy faith -- ful -- ness ex -- tends.
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
