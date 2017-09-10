\version "2.10.29"

\paper
{
        page-count = 1
}

Title = "O All Ye Nations of the Earth"

Writer = "Based on Psalm 117"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 117A)"

Composer = "William Tans'ur (1740)"

Arranger = ""

Tune = "ST. MARTIN'S"

Meter = " C.M."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 117" }


global = {
	\time 3/4
	\key g \major
	\tempo 4 = 120
	\autoBeamOff
}

soprano = {
	\partial 4
	g'4 g'8.[ (a'16] g'4) d' g'8.[ (a'16] b'4) b'8.[ c''16] d''8.[ (c''16] b'4) g' a'2 b'4 d''8.[ (c''16] b'4) g'4 a' (g') fis' g'2 \break \bar ""
	b'8.[ c''16] d''2 e''4 d''8.[ (c''16] b'4) b'8[ c''] d''4 (c'') b' a'2 d''4 e''8.[ (d''16] c''4) b' a' (g') fis' g'2 \bar "|."
}

alto = {
	d'4 e'2 d'4 d'2 d'4 d'2 g'4 fis'2 d'4 d'2 d'4 e' (d') d' d'2
	g'4 g'2 g'4 g'2 g'8[ fis'] g'[ d' e' fis'] g'4 fis'2 g'4 g' (fis') g' e' (d') d' d'2
}

tenor = {
	b4 c'2 c'4 b8.[ (c'16] d'4) g8.[ a16] b8.[ (a16] g4) b d'2 g4 a (g) d' c' (b) a b2
	g8.[ a16] b2 c'4 b8.[ (a16] g4) d'4 d' (a) b8[ c'] d'2 g4 g (a) b8[ d'] c'4 (b) a b2
}

bass = {
	g4 c2 d4 g'2 g4 g2 g'4 d2 g4 fis (g) b, c (d) d g,2
	g4 g2 g4 g2 g8[ a] b4 (a) g d2 b,4 c8.[ (b,16] a,4) g, c (d) d g,2
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	O all ye na -- tions of the earth Give prais -- es to the \markup { \smallCaps "Lord;" }
	And all ye peo -- ple mag -- ni -- fy His name with one ac -- cord.
}
sopWordsTwo = \lyricmode
{
	Be -- cause His lov -- ing -- kind -- ness -- es Are might -- y to -- ward us;
	Je -- ho -- vah's truth en -- dures for aye. The \markup { \smallCaps "Lord" } O do ye bless.
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
