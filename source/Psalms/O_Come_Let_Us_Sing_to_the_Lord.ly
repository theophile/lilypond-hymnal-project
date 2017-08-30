\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = \markup{O Come, Let Us Sing Unto the \smallCaps{Lord} }

Writer = "Psalm 95"

Translator = "Trans. Miles Coverdale, 1535"

Composer = "Thomas Tallis, 1550"

Arranger = ""

Tune = "From: THE DORIAN SERVICE"

Meter = ""

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 95" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key d \major
	\tempo 4 = 108
	\autoBeamOff	
}

soprano = {	
	\oneVoice r2 \voiceOne e'4 e' g'2. g'4 fis' b' b' ais' b'2 fis'4 fis' fis'4. g'8 a'4 b' cis''2 b'4 b' d'' d'' cis'' b' b' (ais') b'2
	\oneVoice r4 \voiceOne fis'2 fis'4 fis' fis' g' a' b'2 a'4 g'~ g' fis' e'2 dis' b'4 cis''~ cis''8 cis'' a'4 d''2 cis''4 b'4. a'8 (fis'4) gis'2 \oneVoice r4 \voiceOne
	
	g'4^\markup { \box { "Leader" } }~ g'4 fis'4 g' b'~ b'8 b' ais'4 b'
	g'4^\markup { \box { "People" } }~ g'8 g' fis'4 g' b' b' ais' b'
	fis'4^\markup { \box { "Leader" } }~ fis'8 g' a'4 b' cis''8 cis'' d''4. cis''8 b'4 b' ais'
	fis'4.^\markup { \box { "People" } } g'8 a'4 b' cis'' d''4. cis''8 b'4 b' ais'
	b'4^\markup { \box { "Leader" } } g' a' fis' g' fis' e' dis'
	b'8^\markup { \box { "People" } } b' g'4 a' fis' g' fis' e' dis'
	b'4^\markup { \box { "Leader" } }~ b'4 b' b' d'' cis'' b' b' ais' b'
	b'4^\markup { \box { "People" } } b'4. b'8 b'4 b' cis'' b'~ b' ais' b'
	b'4^\markup { \box { "Leader" } } cis''2 b'4 a' a' gis' a'
	b'4^\markup { \box { "People" } } cis''4 cis''8 cis'' b'4 a' a' gis' a' a'
	
	\oneVoice r4^\markup { \box { "All" } } \voiceOne fis'4 g'2 fis'4 e'2 dis'4 e'2 \oneVoice r4 \voiceOne
	g'4^\markup { \box { "Leader" } } e' fis' g' e' fis' g' e' \bar "" \break fis'~ fis'8 e' e'2 dis'4 e'
	g'4^\markup { \box { "People" } } e' fis' g' e' fis' (g') e' fis' fis' e'8 e' dis'4 e' fis' g'~ (g'8 fis') e'4 dis' e' e' dis' e'
	b'4^\markup { \box { "Leader" } } ais' b' fis' b'~ b' ais' b' 
	b'4^\markup { \box { "People" } } ais' b' fis' b'~ b' ais' b' \bar "" \break
	g'4^\markup { \box { "Leader" } } fis' e' dis' b' a' g' fis' d'' cis'' b'8 b' ais'4 b'~ b' ais' b'
	g'4^\markup { \box { "People" } } fis'8 fis' e'4 dis' b'8 b' a'4 g'8 g' fis'4 d'' cis'' b' ais' b'~ b' ais' b'
	b'4^\markup { \box { "Leader" } } b'4 cis''2 b'4 cis''2 d''8.[ cis''16] b'8[ d''] cis''4
	a'4^\markup { \box { "People" } } b' cis''~ cis'' b' cis'' cis'' b' cis'' d''8.[ cis''16 b'8 d''] cis''1 \bar "||"

	\oneVoice r4^\markup { \box { "All" } } \voiceOne cis''2 cis''4 cis''2 b'4 d'' cis''2 b'4 a' a' gis' a'2
	\oneVoice r4 \voiceOne fis' g' fis'~ fis' e'2 dis'4 e'2
	\oneVoice r4 \voiceOne b'4~ b'8 b' fis'4 g' a' b' cis''4. b'8 b'4~ (b' ais') b'2
	\oneVoice r4 \voiceOne e'4 e'8 e' b4 cis' d' e' fis'~ (fis'8 e') e'2 dis'4 e'1 \bar "|."
}

alto = {
	s2 e'4 e' e'2. b4 d' e' fis' fis' fis'2 d'4 d' d'4. e'8 fis'4 g' fis' e'4. e'8 g'4~ g' fis' fis' fis' fis'2 fis'
	s4 d'2 d'4 d' d' e' fis' g'2 fis'4 e'~ e' b b2 b d'4 e'~ e'8 e' fis'4 g' fis'~ (fis'8[ e']) e'2 d'4 e'2
	s4 e'4~ e' d' e' e' fis' fis' dis' e'~ e'8 e' d'4 e' e' fis' fis' dis' 
	d'4~ d'8 d' cis'4 b e'8 e' g'4 fis' fis' e' fis' 
	d'4. d'8 cis'4 b e' g' fis' fis' e' fis'
	fis' e' e' d' d' d' b b
	d'8 fis' e'4 e' d' d' d' b b
	d'4~ d' g' g' g' a' fis' fis' fis' dis'
	d' g'4. g'8 g'4 g' a' fis' fis'2 fis'4
	g'4 e'4. (fis'8) g'4 d' e' e' e' 
	g' e' e'8 fis' g'4 d' e' e' cis' cis'

	s4 d'4 b4. (cis'8) d'4 a b2 b
	s4 g b d' b cis' d' b cis' d'~ d'8 d' b2 b4 b
	g b d' b cis' d' (b) cis' d' d' b8 b b4 cis' d' d'~ d' b b b b4. b8 b4
	fis'4~ fis'8 e' d'4 cis' fis'~ fis' fis' fis'
	fis'~ fis'8 e' d'4 cis' fis'4~ fis' fis' fis'
	e' b b b fis' fis' d' d' a' a' g'8 g' fis'4 e' fis'2 fis'4
	e'4 b8 b b4 b fis'8 fis' fis'4 d'8 d' d'4 a'4~ a' g' fis' e' fis' fis' dis'
	e' e' e'2 e'4 e' fis'2 b4 e' e' e' e'~ e' e' e' e' e'2 fis'4 b e'1

	s4 e'2 e'4 e'4. (fis'8) g'4 fis' a'2 fis'4 d' e' e' cis'2
	s4 d'4 d'2~ d'4 b b b b2
	s4 b4~ b8 cis' d'4 e' fis' fis' g'2 fis'4 fis'4. (e'8) dis'2
	s4 b4 g8 g fis4 e b a cis'~ cis' a b2 b1
}

tenor = {
	r2 b4 b b2. g4 a b cis' cis' b2 b4 b4 a4. b8 a4 d a2 g4 e b4. b8 ais4 d' cis'2 b
	\oneVoice r4 \voiceOne b2 b4 b b b d' d'2 d'4 b~ b fis g2 fis fis4 a~ a8 a a4 b4. b8 g2 a b
	
	\oneVoice r4 \voiceOne b~ b b b b cis'4. cis'8 b4 b~ b8 b b4 b b cis' cis' b b~ b8 b a4 d' cis'8 cis' b4 d' d' b cis' b4. b8 a4 d' cis' b d' d' b cis'
	d' b cis' a b a g fis
	d'8 d' b4 cis' a b a g fis
	b~ b d' d' d' e' d' cis' cis' b
	b d'4. d'8 d'4 d' e' d' cis'2 b4 d' cis'2 d'4 a b b a
	d' cis' cis'8 cis' d'4 a b b a a 
	\oneVoice r4 \voiceOne a g2 a4 e fis2 e \oneVoice r4 \voiceOne
	b4 g a g a a g a a~ a8 a g4 fis2 e4
	b g a g a a (g) a a a g8 g fis4 g a b~ (b8 a) g4 fis g fis4. fis8 e4 
	d' cis' b a d' cis'2 b4 d' cis' b a d' cis'2 b4 b fis g fis d' cis' b a fis' e' e'8 e' cis'4 b cis'2 b4
	b fis8 fis g4 fis d'8 d' cis'4 b8 b a4 fis' e'4. (d'8) cis'4 b cis' cis' b 
	gis gis a2 gis4 a a2 gis4 a 
	a gis a~ a gis a4. a8 gis4 a4. b8 (g4) a1

	\oneVoice r4 \voiceOne a2 a4 cis'4. (d'8) e'4 d' e'2 d'4 a b b a2
	\oneVoice r4 \voiceOne a4 b4. (a8) fis4 g fis2 e
	\oneVoice r4 \voiceOne g~ g8 g a4 b cis' d' e'2 d'4 cis'2 b
	\oneVoice r4 \voiceOne g b8 b4 a8 g4 fis e a~ (a8 g) e4 fis2 e1
}

bass = {
 	e2 e e2. e4 d g fis fis b,2 b,4 b, d4. d8 d4 b, a,2 e4 e b, b, fis d fis2 b,
	s4 b,2 b,4 b, b, e d g,2 d4 e~ e d e2 b, b,4 a,~ a,8 a, d4 b,2 e4 g fis2 e
	s4 e4~ e b, e g fis fis b, e~ e8 e b,4 e g fis fis b, b,~ b,8 b, fis4 g a8 a b4. a8 g4 g fis b,4. b,8 fis4 g a b4. a8 g4 g fis
	b, e a, d b, d e b, 
	b,8 b, e4 a, d b, d e b,
	g~ g g g b a b fis fis b, 
	g g4. g8 g4 b a b fis2 b,4
	g a2 g4 fis e e a,
	g a a8 a g4 fis e e a, a,

	s4 d e2 d4 cis b,2 e
	s4 e e d e a, d e a, d~ d8 d e4 b,2 e4 
	e e d e a, d (e) a, d d e8 e b,4 e d b,~ (b,8 d) e4 b, e b, b, e
	b, fis g a b fis2 b,4 
	b, fis g a b fis2 b,4 e dis e b, b, fis g d d a e8 e fis4 g fis2 b,4 
	e dis8 dis e4 b, b,8 b, fis4 g8 g d4 d a e fis g fis2 b,4
	e e a,2 e4 a,2 b,4 b, a, 
	a, e a,~ a, e cis a, e cis b,2 a,1

	s4 a,2 a,4 a2 e4 b a2 d4 fis e e a,2
	s4 d b,2~ b,4 g, b, b, e2
	s4 e~ e8 e d4 g fis b, e2 b,4 fis2 b, 
	s4 e e8 e dis4 e b, cis a, cis2 b, e1
}

sopWords = \lyricmode
{
	\override StanzaNumber #'stencil = ##f
	O come, let us sing un -- to the \markup { \smallCaps "Lord;" }
	let us heart -- i -- ly re -- joice in the strength of our sal -- va -- tion.
	Let us come be -- fore His pres -- ence with __ thanks -- giv -- ing;
	and show __ our -- selves glad in Him with __ psalms.
	For the \markup { \smallCaps "Lord" } is __ a great God;
	and __ a great King a -- bove all gods.
	In __ His hand are all the cor -- ners of the earth;
	and the strength of the hills is His al -- so.
	The sea is His, and He made it;
	and His hands pre -- par -- èd the dry land.
	O __ come, let us wor -- ship and fall down,
	and kneel be -- fore the \markup { \smallCaps "Lord" } our __ Ma -- ker,
	For He is the Lord our God;
	and we are the peo -- ple of His pas -- ture,
	and the sheep of His hand.
	To -- day if you will hear His voice,
	hard -- en not your hearts as in the pro -- vo -- ca -- tion,
	and as in the day of temp -- ta -- tions in the wil -- der -- ness;
	When your fa -- thers tempt -- ed me, prov -- èd Me, and saw __ My works.
	For -- ty years long was I griev -- èd with this gen -- er -- a -- tion, __ and said,
	"\"It" is a peo -- ple that do err in their hearts, for they have not known __ My "ways:\""
	un -- to whom I swore in My wrath, that they should __ not en -- ter in -- to My __ rest.

	Glo -- ry be to the Fa -- ther and to the Son, and to the __ Ho -- ly Ghost;
	as __ it was in the be -- gin -- ning, is __ now and ev -- er shall be,
	world with -- out __ end. A -- men!
}
sopWordsTwo = \lyricmode
{
 
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
