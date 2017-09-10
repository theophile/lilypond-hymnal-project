\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Lord, Thee I Love with All My Heart"

Writer = "Martin Schalling, 1567"

Translator = "Trans. Catherine Winkworth, 1863"

Composer = "Bernhard Schmid, 1577"

Arranger = ""

Tune = "HERZLICH LIEG HAB' ICH DICH, O HERR"

Meter = " 8.8.7.8.8.7.8.8.8.8.4.8.8."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key bes \major
	\tempo 4 = 112
}

soprano = {	
	bes'2. (a'4) g' f' ees' d' g' g' f'2
	bes'2. (a'4) g' f' ees' d' g' g' f'2
	\oneVoice r4 \voiceOne f'4 g' a' bes' (d''2) c''4 bes'2. (a'4) bes'1
	bes'2. (a'4) g' f' ees' d' g' g' f'2
	bes'2. (a'4) g' f' ees' d' g' g' f'2
	\oneVoice r4 \voiceOne f'4 g' a' bes' (d''2) c''4 bes'2. (a'4) bes'2. \bar ""
	bes'4 bes' c'' bes' g' bes' bes' a'2
	\oneVoice r4 \voiceOne a'4 bes' c'' bes' g' bes' bes' a'1
	\oneVoice r4 \voiceOne bes' d'' d'' c'' bes' bes' a' bes'2. \bar ""
	a'4 bes' a' g' f' f' e' f'2
	\oneVoice r2 \voiceOne d''2 c'' bes' a'2. \bar ""
	d''4 ees'' c'' bes' c'' bes' a' bes'2
	\oneVoice r4 \voiceOne bes'4 bes' bes' c'' bes' bes' a' bes'1 \bar "|."
}

alto = {
	f'1 d'4 d' bes bes bes ees' d'2
	f'1 d'4 d' bes bes bes ees' d'2
	s4 d'4 d' f' f'2. f'4 d'4 (ees'2 f'4) f'1
	f'1 d'4 d' bes bes bes ees' d'2
	f'1 d'4 d' bes bes bes ees' d'2
	s4 d'4 d' f' f'2. f'4 d'4 (ees'2 f'4) f'2.
	d'4 f' f' f' ees' d' e' f'2
	s4 f'4 f' f' f' ees' d' e' f'1
	s4 f' f' f' f' d' g' f' f'2.
	f'4 f' f' d' d' d' c' c'2
	s2 f'2 f' d'4 (e') f'2.
	f'4 g' f' d' g' f' f' f'2
	s4 g' g' f' ees' d' g' f' f'1
}

tenor = {
	d'2. (c'4) bes a g f ees bes bes2
	d'2. (c'4) bes a g f ees bes bes2
	\oneVoice r4 \voiceOne a4 bes c' bes2. a4 bes2. (c'4) d'1
	d'2. (c'4) bes a g f ees bes bes2
	d'2. (c'4) bes a g f ees bes bes2
	\oneVoice r4 \voiceOne a4 bes c' bes2. a4 bes2. (c'4) d'2.
	bes4 d' c' d' bes bes bes c'2
	\oneVoice r4 \voiceOne c' d' c'd' bes bes bes c'1
	\oneVoice r4 \voiceOne bes4 bes bes a bes c' c' d'2.
	c'4 d' c' bes a g g a2
	\oneVoice r2 \voiceOne bes a g c'2.
	bes4 bes a bes ees' d' c' d'2
	\oneVoice r4 \voiceOne ees'4 ees' bes g bes c' c' d'1
}

bass = {
	bes,2. (f4) g d ees bes, ees ees bes,2
	bes,2. (f4) g d ees bes, ees ees bes,2
	s4 d g f d (bes,2) f4 g2. (f4) bes,1
	bes,2. (f4) g d ees bes, ees ees bes,2	
	bes,2. (f4) g d ees bes, ees ees bes,2
	s4 d g f d (bes,2) f4 g2. (f4) bes,2.
	bes,4 bes, a, bes, ees g g f2
	s4 f4 bes, a, bes, ees g g f1
	s4 d bes, d f g ees f bes,2.
	f4 bes, f, g, d bes, c f2
	s2 bes,2 f g f2.
	bes,4 ees f g ees f f bes,2
	s4 ees ees d c g ees f bes,1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	Lord, Thee I love with all my heart;
	I pray Thee, ne'er from me de -- part;
	With ten -- der mer -- cy cheer me.
	Earth has no pleas -- ure I would share,
	Yea, Heav'n it -- self were void and bare
	If Thou, Lord, wert not near me.
	And should my heart for sor -- row break,
	My trust in Thee can noth -- ing shake.
	Thou art the por -- tion I have sought;
	Thy pre -- cious blood my soul has bought.
	Lord Je -- sus Christ,
	My God and Lord, my God and Lord,
	For -- sake me not! I trust Thy Word.
}
sopWordsTwo = \lyricmode
{
       	Yea, Lord, 'twas Thy rich boun -- ty gave
	My bo -- dy, soul, and all I have
	In this poor life of la -- bor.
	Lord, grant that I in ev -- ery place
	May glo -- ri -- fy Thy lav -- ish grace
	And serve and help my neigh -- bor.
	Let no false doc -- trine me be -- guile,
	Let Sa -- tan not my soul de -- file.
	Give strength and pa -- tience un -- to me
	To bear my cross and fol -- low Thee.
	Lord Je -- sus Christ,
	My God and Lord, my God and Lord,
	In death Thy com -- fort still af -- ford.
}
sopWordsThree = \lyricmode
{
        Lord, let at last Thine an -- gels come,
	To A -- bram's bo -- som bear me home,
	That I may die un -- fear -- ing;
	And in its nar -- row cham -- ber keep
	My bo -- dy safe in peace -- ful sleep
	Un -- til Thy re -- ap -- pear -- ing.
	And then from death a -- wak -- en me,
	That these mine eyes with joy may see,
	O Son of God, Thy glo -- rious face,
	My Sav -- ior and my fount of grace.
	Lord Je -- sus Christ,
	My prayer at -- tend, my prayer at -- tend,
	And I will praise Thee with -- out end!
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
sopWordsEight= \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \include "insertchords.ly"}
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
