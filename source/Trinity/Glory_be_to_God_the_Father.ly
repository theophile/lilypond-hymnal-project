\version "2.10.29"

Title = "Glory Be to God the Father!"

Writer = "Horatius Bonar, 1808-89"

Translator = ""

Composer = "Johann Crüger, 1598-1662"

Arranger = ""

Tune = "ST. NICHOLAS"

Meter = " 8.7.8.7"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key g \major
	\tempo 4 = 96	
}

soprano = {	
	e'2 dis' e'4 fis' g' a' fis'2 e' g' fis' e'4 fis' g' a' b'1
	b'2 c'' d''4 g' c'' b' a'2 g' a' a' b'4 e' fis' fis' e'1 \bar "|."
}

alto = {
	b2 b b4 dis' e' fis' dis'2 e' b dis' e'4 e' e' e' dis'1
	g'2 g' g'4 g' a' g' fis'2 g' e' d' e'4 e' e' dis' b1
}

tenor = {
	g2 fis b4 a g c' a2 g g b g4 c' b e fis1
	d'2 e' d'4 e' e' d' c'2 b g fis g4 g c' b8 (a) g1
}

bass = {
	e2 b, g4 fis e a, b,2 e e b, c4 a, e c b,1
	g2 e b,4 c a, b,8 (c) d2 g, c d g,4 c a, b, e1
}

sopWords = \lyricmode
{
        Glo -- ry be to God the Fa -- ther,
        Glo -- ry be to God the Son,
        Glo -- ry be to God the Spir -- it:
        Great Je -- ho -- vah, Three in One!
}

sopWordsTwo = \lyricmode
{
	Glo -- ry be to Him who loved us,
        Washed us from each spot and stain;
        Glo -- ry be to Him who bought us,
        Made us kings with Him to reign!
}

sopWordsThree = \lyricmode
{
	Glo -- ry to the King of an -- gels,
        Glo -- ry to the Church -- 's King,
        Glo -- ry to the King of na -- tions;
        Heav'n and earth, your prais -- es bring!
}

sopWordsFour = \lyricmode
{
	Glo -- ry, bless -- ing, praise e -- ter -- nal!
        Thus the choir of an -- gels sings;
        Hon -- or, rich -- es, pow'r, do -- min -- ion!
        Thus its praise cre -- a -- tion brings.
}

sopWordsFive = \lyricmode
{
 	Glo -- ry be to God the Fa -- ther,
        Glo -- ry be to God the Son,
        Glo -- ry be to God the Spir -- it:
        Great Je -- ho -- vah, Three in One!
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
