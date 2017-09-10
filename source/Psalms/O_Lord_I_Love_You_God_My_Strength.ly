\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = \markup{O \smallCaps{Lord,} I Love You, God, My Strength}

Writer = "Douglas Wilson, 2001"

Translator = "Based on Psalm 18:1-19"

Composer = "Heinrich Schütz, 1661"

Arranger = ""

Tune = "ICH LIEB DICH, HERR"

Meter = " 8.7.8.7.5.5.5.6.7."

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 18" }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 12/4
	\key f \major
	\tempo 2 = 86
}

soprano = {	
	a'2 bes' c''4 d''2 c''4 bes' a' g'2
	g' c'' a'4 bes'2 a'4 g'2 f'
	a'2 bes' c''4 d''2 c''4 bes' a' g'2
	g' c'' a'4 bes'2 a'4 g'2 f'
	\time 8/4
	a' g' f'4 g' a'2 
	c'' a' bes'4 a' g'2
	a' f' ees'4 c' d'2
	f'2 g'4 bes' bes' a' bes'2
	\time 16/4
	d''2 c'' bes'4 a'2 f'4 e'1 d' \bar "|."
}

alto = {
	d'2 d' e'4 f'2 f'4 d' d' d'2
	c' c' d'4 d'2 f'4 e'2 f'
	d'2 d' e'4 f'2 f'4 d' d' d'2
	c' c' d'4 d'2 f'4 e'2 f'
	f'2 e' d'4 d' cis'2
	e' d' d'4 f' e'2
	f' d' c'4 g a2
	d'2 ees'4 d' f' f' f'2
	f' f' d'4 d'2 d'4 d'2 (cis') d'1
}

tenor = {
	fis2 g g4 bes2 a4 g fis g2
	e a f4 g2 c'4 c'2 c'
	fis2 g g4 bes2 a4 g fis g2
	e a f4 g2 c'4 c'2 c'
	c'2 c' a4 d e2
	a f f4 c' c'2
	c' bes g4 g fis2
	bes bes4 bes c' c' d'2
	bes a g4 f2 a4 a1 a
}

bass = {
	d2 g, c4 bes,2 f,4 g, d g,2
	c a, d4 g,2 a,4 c2 f,
	d2 g, c4 bes,2 f,4 g, d g,2
	c a, d4 g,2 a,4 c2 f,
	f2 c d4 bes, a,2
	a, d bes,4 f, c2
	f bes, c4 ees d2
	bes, ees4 g f f bes,2
	bes, f, g,4 d2 d4 a,1 d
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	O \markup { \smallCaps "Lord," } I love You; God, my strength, 
	You are my Rock and for -- tress,
	In You I trust, sal -- va -- tion's horn,
	My buck -- ler and high tow -- er.
	I call on the \markup { \smallCaps "Lord;" }
	His worth I will praise;
	I call on my God.
	From en -- e -- mies a -- round
	My God saves and de -- liv -- ers.
}
sopWordsTwo = \lyricmode
{
        Sor -- rows of death en -- com -- passed me,
	The snares of death came af -- ter.
	In my dis -- tress, I called to God;
	His Tem -- ple heard my fal -- t'ring.
	Earth trem -- bled and shook,
	God's wrath came a -- live
	And then smoke and fire
	Came forth, His nos -- trils flared
	Amd fire -- y coals were kind -- led.
}
sopWordsThree = \lyricmode
{
	He bowed the heav -- ens down as well;
	He came, and walked on dark -- ness,
	His steed, a cher -- ub, wings of wind,
	And dark -- ness His pa -- vil -- ion.
	Dark wat -- ers, thick clouds,
	And bright -- ness and fire
	All passed be -- fore God.
	These coals of fire and hail
	And clouds, all praised His glo -- ry.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	The \markup { \smallCaps "Lord" } has thun -- dered out His voice,
	The High -- est spoke and shat -- tered
	All earth with hail and coals of fire.
	His ar -- rows fell as light -- ning.
	He scat -- tered all those
	Who ha -- ted His voice,
	He scat -- tered their lies;
	And ri -- ver -- beds re -- veal
	The earth's foun -- da -- tions dried up.
}
sopWordsFive = \lyricmode
{
 	God sent His ho -- ly help to me;
	He drew me from the wa -- ters.
	God saved me from my en -- e -- mies,
	Whose strength was far be -- yond me.
	The e -- vil day brought
	Their mis -- cheif to life
	But God was my stay—
	He brought me out to life
	And light, for I de -- light Him.
}
sopWordsSix = \lyricmode
{
 	Ac -- cord -- ing to my right -- eous -- ness
	My God re -- ward -- ed rich -- ly.
	The clean -- ness of my hands and heart
	Has meant He brought this bless -- ing.
	With wick -- ed -- ness gone,
	I can -- not de -- part
	From God's gra -- cious law
	For all His laws were held,
	My hand had held them tight -- ly.
}
sopWordsSeven = \lyricmode
{
 	Up -- right be -- fore the \markup { \smallCaps "Lord" } I stood
	And this He has re -- ward -- ed.
	The mer -- ci -- ful find mer -- cy now,
	And up -- right men will see Him.
	And pur -- i -- ty gives
	True ho -- li -- ness sight
	To see the true God.
	Some think that He is hard;
	Our God can break the haugh -- ty.
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
\markup { \hspace #6 
 \columns  { 
  \column { \line {
     "8. "
     \column {
       	"My candle God will always light,"
	"And chase away the darkness."
	"By Him I have run through a troop,"
	"And crossed the wall by leaping."
	"God's way is the right,"
	"His words are all true."
	"His way is the right."
	"He is a buckler strong,"
	"A shield for those who trust Him."
     }
   } 
  } 
  \column { \line {
     "9. "
     \column {
       	"So who is God except the Lord?"
	"Who is a Rock beside Him?"
	"He is the one Who girds with strength,"
	"And keeps my way established."
	"As surefooted hinds"
	"On rocky, great crags,"
	"He steadies my feet."
	"As bows of steel are bent,"
	"He trains my hands for fighting."
     }
   } 
  }
  }
 \vspace #1
}
\include "tag.ly"
