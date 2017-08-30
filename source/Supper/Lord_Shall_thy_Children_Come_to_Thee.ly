\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Lord, Shall Thy Children Come to Thee?"

Writer = "Samuel Hinds, 1834 (Verses 1-2, 4)"

Translator = "H. J. Buckoll, 1843 (Verse 3)"

Composer = "Matthäus Greiter, 1525"

Arranger = ""

Tune = "OLD 113TH"

Meter = " 8.8.8.8.8.8."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key d \major
	\tempo 4 = 96	
}

soprano = {	
	d'2 d'4 e' fis' d' fis' g' a'2 a' g'4 fis' e' d' fis' gis' a'2 b' a'4 g' fis' d' e' e' d'1 d''2 d''4 d'' cis'' a' b' b' a'2 d'' d''4 d'' cis'' a' b' b' a'2 d' e'4 fis' g' fis' e' e' d'1  \bar "|."
}

alto = {
	a2 b4 cis' d' d' d' d' cis'2 d' d'4 d' cis' b a d' cis'2 d' cis'4 b a d' d' cis' d'1 fis'2 fis'4 d' e' d' d' g' fis'2 fis' fis'8[ g'] a'[ e'] e'4 cis' fis' e'8 d' cis'2 d' cis'4 d' d' d' d' cis' d'1
}

tenor = {
	fis2 fis4 a a a a d e2 fis g4 a a fis fis d e2 g e4 d8 e fis4 fis b a8 g fis1 a2 a4 a a d' d' d' d'2 a a4 a8 b a4. a8 a4 gis a2 fis a4 a b b b a8 g fis1
}

bass = {
	d2 b,4 a, d fis d b, a,2 d b,4 d a, b, d b, a,2 g, a,4 b,8 cis d4 b, g, a, d1 d2 d4 fis a fis g g, d2 d d8[ e] fis[ gis] a4. fis8 d4 e a,2 b, a,4 d g, b, g, a, d1
}

sopWords = \lyricmode
{
	Lord, shall Thy child -- ren come to Thee?
	A boon of love di -- vine we seek;
	Brought to Thine arms in in -- fan -- cy,
	Ere heart could feel, or tongue could speak,
	Thy child -- ren pray for grace, that they
	May come them -- selves to Thee to -- day.
}
sopWordsTwo = \lyricmode
{
       	Lord, shall we come? and come a -- gain,
	Oft as we see Thy ta -- ble spread,
	And to -- kens of Thy dy -- ing pain,
	The wine poured out, the bro -- ken bread?
	Bless, bless, O Lord, Thy child -- ren's prayer,
	That they may come and find Thee there.
}
sopWordsThree = \lyricmode
{
        Lord, shall we come? not thus a -- lone.
	At ho -- ly time, or sol -- emn rite,
	But ev -- ery hour till life be flown,
	Through weal or woe, in gloom or light,
	Come to Thy throne of grace, that we
	In faith, hope, love, con -- firmed may be?
}
sopWordsFour = \lyricmode
{
	Lord, shall we come? come yet a -- gain?
	Thy child -- ren ask one bless -- ing more:
	To come, not now a -- lone; but then
	When life, and death, and time are o'er,
	Then, then to come, O Lord, and be
	Con -- firmed in heav'n, con -- firmed by Thee.
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
