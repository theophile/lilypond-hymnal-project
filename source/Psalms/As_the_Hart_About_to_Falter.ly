\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "As the Hart, About to Falter"

Writer = "Dewey Westra, 1931"

Translator = "Based on Psalm 42:1-7"

Composer = "Genevan Psalter, 1551"

Arranger = "Harm. Johann Crüger, 1658"

Tune = "AINSI QU'ON OIT LE CERF BRUIRE"

Meter = " 8.7.8.7.7.7.8.8"

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 42" }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key f \major
	\tempo 2 = 92
}

soprano = {	
	\cadenzaOn
	f'2 g'4 a'2 g'4 f' e' d'2 c' \bar "|"
	f'2 g'4 a'2 bes'4 a'2 g' f'1 \bar "|"
	f'2 g'4 a'2 g'4 f' e' d'2 c' \bar "|"
	f'2 g'4 a'2 bes'4 a'2 g' f'1 \bar "|"
	a'2 a'4 c''2 bes'4 a' g' a'1 \bar "|"
	c''2 c''4 d''2 c''4 bes' a' g'1 \bar "|"
	a'2 c''4 bes'2 a'4 f' g' a'2 f' \bar "|"
	a'2 a'4 bes'2 a'4 g' f'2 e'4 f'1 \bar "|."
}

alto = {
	c'2 e'4 f'2 e'4 d' c' bes2 a
	d' e'4 f'2 f'4 f'2 e' f'1
	c'2 e'4 f'2 e'4 d' c' bes2 a
	d' e'4 f'2 f'4 f'2 e' f'1
	f'2 f'4 e'2 d'4 d' d' cis'1
	f'2 f'4 f'2 f'4 f' f' e'1
	f'2 e'4 g'2 f'4 d' e' f'2 d'
	f' f'4 d'2 c'4 c' a c'2 c'1
}

tenor = {
	a2 c'4 c'2 c'4 a a f2 f
	a c'4 c'2 d'4 c'2 c' a1
	a2 c'4 c'2 c'4 a a f2 f
	a c'4 c'2 d'4 c'2 c' a1
	c'2 f4 g2 g4 fis g e1
	a2 a4 bes2 c'4 d' c' c'1
	c'2 c'4 d'2 d'4 a c' c'2 bes
	c' c'4 f2 f4 e f g2 f1
}

bass = {
	f2 c4 f2 c4 d a, bes,2 f,
	d c4 f2 bes,4 c2 c f,1
	f2 c4 f2 c4 d a, bes,2 f,
	d c4 f2 bes,4 c2 c f,1
	f2 d4 c2 g,4 d bes, a,1
	f2 f4 bes,2 a,4 bes, f, c1
	f2 c4 g2 d4 d c f2 bes,
	f, f,4 bes,2 f,4 c d c2 f,1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	As the hart, a -- bout to fal -- ter,
	In its trem -- bling a -- go -- ny,
	Pant -- eth for the brooks of wa -- ter,
	So my soul doth pant for Thee.
	Yea, a -- thirst for Thee I cry;
	God of life, o when shall I
	Come a -- gain to stand be -- fore Thee
	In Thy tem -- ple, and a -- dore Thee?
}
sopWordsTwo = \lyricmode
{
        Bit -- ter tears of lam -- en -- ta -- tion
	Are my food by night and day;
	In my deep hu -- mil -- i -- a -- tion,
	"\"Where" is now thy "God?\"" they say.
	Yea, my soul doth melt in me,
	When I bring to mem -- o -- ry
	How of yore I did as -- sem -- ble
	With the joy -- ful in thy tem -- ple.
}
sopWordsThree = \lyricmode
{
	O my soul, why art thou griev -- ing,
	Why dis -- qui -- et -- ed in me?
	Hope in God, thy faith re -- triev -- ing;
	Let Him still thy ref -- uge be.
	I shall yet ex -- tol His grace
	For the com -- fort of His face;
	He has ev -- er turned my sor -- row
	In -- to glad -- ness on the mor -- row.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	From the land be -- yond the Jor -- dan
	I be -- wail my mis -- er -- y;
	From the foot -- hills on Mount Her -- mon,
	O my God, I think of Thee.
	As the wa -- ters plunge and leap,
	Deep re -- ech -- oes un -- to deep;
	All thy waves and bil -- lows roar -- ing
	O'er my troub -- led soul are pour -- ing.
}
sopWordsFive = \lyricmode
{
	But the Lord will send sal -- va -- tion,
	And by day his love pro -- vide;
	He shall be my ex -- al -- ta -- tion,
	And my song at ev -- en -- tide.
	On his praise e'en in the night
	I will pon -- der with de -- light,
	And in prayer, tran -- scend -- ing dis -- tance,
	Seek the God of my ex -- is -- tence.
}
sopWordsSix = \lyricmode
{
	I will say to God, my fort -- ress:
	"\"Why" hast Thou for -- sak -- en me?
	Why go I a -- bout in sad -- ness
	For my foes' dread tyr -- an -- ny?
	Their re -- bukes and scoff -- ing words
	Pierce my bones as point -- ed swords,
	As they say with proud de -- fi -- ance:
	Where is God, thy soul's re -- li -- "ance?\""
}
sopWordsSeven = \lyricmode
{
	O my soul, why art thou griev -- ing,
	Why dis -- qui -- et -- ed in me?
	Hope in God, thy faith re -- triev -- ing;
	Let Him still thy ref -- uge be.
	I shall yet through all my days
	Give to Him my thank -- ful praise;
	God, who will from shame de -- liv -- er,
	Is my God, my rock, for -- ev -- er.
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
