\version "2.10.29"

\paper
{
        page-count = 1
}

Title = "O Jehovah, Hear My Words"

Writer = "Based on Psalm 5"

Translator = "The Psalter, With Responsive Readings (1912)"

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
	O Je -- ho -- vah, hear my words, To my thoughts at -- ten -- tive be.
	Hear my cry, my King, my God, I will make my prayer to Thee.
	With the morn -- ing light, O \markup { \smallCaps "Lord," } Thou shalt hear my voice a -- rise;
	And ex -- pec -- tant I will bring Prayer as morn -- ing sac -- ri -- fice.
}
sopWordsTwo = \lyricmode
{
	Thou, Je -- ho -- vah, art a God Who de -- light -- est not in sin;
	E -- vil shall not dwell with Thee, Nor the proud Thy fa -- vor win.
	E -- vil -- do -- ers Thou dost hate; Ly -- ing tongues Thou wilt de -- feat;
	\markup { \smallCaps "God" } ab -- hors the man who loves Vi -- o -- lence and base de -- ceit.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	In the full -- ness of Thy grace To Thy house will I re -- pair,
	Bow -- ing toward Thy ho -- ly place, In Thy fear will wor -- ship there.
	Lead me in Thy right -- eous -- ness, Let my foes as -- sail in vain;
	Lest my feet be turned a -- side, Make Thy way be -- fore me plain.
}
sopWordsFour = \lyricmode
{
	False and faith -- less are my foes, In their mouth no truth is found;
	Dead -- ly are the words they speak; All their thoughts with sin a -- bound.
	Bring, O God, their plans to nought, Hold them guil -- ty in Thy sight,
	For a -- gainst Thee and Thy law They have set them -- selves to fight.
}
sopWordsFive = \lyricmode
{
 	O let all that trust Thy care Ev -- er glad and joy -- ful be;
	Let them joy who love Thy Name, Safe -- ly guard -- ed, Lord, by Thee.
	For a bless -- ing from \markup { \smallCaps "Thy" } store To the right -- eous Thou wilt yield;
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
