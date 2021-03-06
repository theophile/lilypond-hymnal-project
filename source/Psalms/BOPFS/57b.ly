\version "2.10.29"

\paper
{
        page-count = 1
}

Title = "O Be Exalted High, O God!"

Writer = "Based on Psalm 57:5-11"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 57B)"

Composer = "Chester G. Allem, 1869"

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
	O be ex -- alt -- ed high, O God! A -- bove the heav -- ens stand,
	And let Your glo -- ry be a -- bove All earth, both sea and land.
}
sopWordsTwo = \lyricmode
{
	They spread a net be -- fore my steps, My soul bowed down with dread.
	But though they dug a pit for me, In it they fell in -- stead.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	My heart is fixed, my heart is fixed, O God. I'll sing. I'll praise.
	My glo -- ry, wake! Wake, harp and lyre! At dawn my song I'll raise.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	And I will ren -- der thank to You A -- mong the peo -- ples, Lord;
	And I a -- mong the na -- tions will In psalms my praise re -- cord.
}
sopWordsFive = \lyricmode
{
 	Your stead -- fast love and mer -- cy great A -- bove the heav -- ens rise,
	And Your un -- fail -- ing faith -- ful -- ness Ex -- tends un -- to the skies.
}
sopWordsSix = \lyricmode
{
	O be ex -- alt -- ed high, O God! A -- bove the heav -- ens stand,
	And let Your glo -- ry be a -- bove All earth, both sea and land.
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
