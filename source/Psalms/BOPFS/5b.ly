\version "2.10.29"

\paper
{
        page-count = 1
}

Title = "O Jehovah, Hear My Words"

Writer = "Based on Psalm 5"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 5B)"

Composer = "Joseph Parry (1879)"

Arranger = ""

Tune = "ABERYSTWYTH"

Meter = " 7.7.7.7.D"

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 5" }


global = {
	\time 4/2
	\key e \minor
	\tempo 2 = 96
	\autoBeamOff
}

soprano = {
	e'2 e'4 (fis') g' (a') b'2 g' fis' e'1 g'2 fis' e' dis' e'4 (fis') g'2 fis'1
	e'2 e'4 (fis') g' (a') b'2 g' fis' e'1 fis'2 g'4 (a') b'2 a' g' fis' e'1
	e'2 d' e' fis' g' b'4 (a') g'1 g'2 fis' g' a' b' d''4 (cis'') b'1
	e''2 e'' d'' b' g' a' b'1 e'2 e'4 (fis') g' (a') b'2 g' fis' e'1 \bar "|."
}

alto = {
	b2 e'4 (dis') e' (fis') g'2 e' dis' b1 e'2 dis' e' b b e' dis'1
	b2 b4 (dis') e' (fis') g'2 e' dis' b1 dis'2 e'4 (fis') g'2 fis' e' dis' b1
	c'2 b c' c' d' fis' d'1 e'2 dis' e' fis'4 (d') d'2 fis'4 (e') d'1
	e'2 g'4 (fis') g'2 d' e' e' fis'1 e'2 e'4 (dis') e' (fis') g'2 e' dis' b1
}

tenor = {
	g2 b b b b b4 (a) g1 b2 b b b b b b1
	g4 (a) b2 b b b fis4 (a) g1 b2 b4 (d') d'2 c' b b4 (a) g1
	g2 g g a b d'4 (c') b1 b2 b b d'4 (fis) g (b2) ais4 b1
	g2 c' d' g b e' dis'1 b4 (c') b (a) b2 b b fis8([ g] a4) g1
}

bass = {
	e2 g,4 (b,) e2 g,4 (a,) b,2 b, e1 e2 fis g a g4 (fis) e2 b,1
	e4 (fis) g (fis) e2 g,4 (a,) b,2 b, e1 b,2 e4 (d) g2 a b b, e1
	c2 g, c4 (b,) a,2 g, d g,1 e2 b, e d g fis b,1
	c2 c' b g e c b,1 g4 (a) g (fis) e2 g,4 (a,) b,2 b, e1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	O Je -- ho -- vah, hear my words; To my thoughts at -- ten -- tive be.
	Hear my cry, my King, my God, For I make my prayer to Thee.
	With the morn -- ing light, O \markup { \smallCaps "Lord," } Thou shalt hear my voice and cry;
	In the morn my prayer ar -- range And keep con -- stant watch will I.
}
sopWordsTwo = \lyricmode
{
	Tru -- ly Thou art not a God That in sin doth take de -- light;
	E -- vil shall not dwell with Thee, Nor the proud stand in Thy sight.
	E -- vil -- do -- ers Touh dost hate; Li -- ars Thou wilt bring to naught.
	\markup { \smallCaps "God" } ab -- hors the man who loves Deed of blood or ly -- ing thought.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	But in Thine a -- bun -- dant grace To Thy house will I re -- pair;
	Look -- ing to Thy ho -- ly place, In Thy fear I'll wor -- ship there.
	Since, O \markup { \smallCaps "Lord," } mine en -- e -- mies For my soul do lie in wait,
	Lead me in Thy right -- eous -- ness; Make Thy way be -- fore me straight.
}
sopWordsFour = \lyricmode
{
	For they flat -- ter with their tongue; In their mouth no truth is found;
	Like an o -- pen grave their throat; All their thoughts with sin a -- bound.
	Hold them guil -- ty, O my God; Them for all their sins ex -- pel;
	Let them fall by their own craft, For a -- gainst Thee they re -- bel.
}
sopWordsFive = \lyricmode
{
 	But let all that trust Thy care Ev -- er glad and joy -- ful be;
	Let them joy who love Thy name, For they guard -- ed are by Thee.
	And a bless -- ing rich, O \markup { \smallCaps "Lord," } To the right -- eous Thou wilt yield;
	Thou wilt com -- pass him a -- bout With Thy fa -- vor as a sheild.

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
