\version "2.10.29"

%\paper { page-count = 2 }

Title = "From Whence This Fear And Unbelief?"

Writer = "Augustus Toplady, 1772"

Translator = ""

Composer = "Orlando Gibbons, 1623"

Arranger = ""

Tune = "SONG EIGHTEEN"

Meter = "8.8.6.8.8.6"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/2
	\key e \minor
	\tempo 2 = 90	
}

soprano = {
	\partial 2 b'2 b'1 g'2 a'1 b'2 g'2 fis'1 e'1
	g'2 g'1 a'2 b'1 b'2 b'1 ais'2 b'1 b'2 d''1 a'2 b'1 g'2 fis'1 \fermata \bar ":"
	fis'2 g'1 e'2 a'1 fis'2 b'2 a'1 g'1
	g'2 c''1 b'2 a'1 g'2 fis'1 e'2 dis'1 fis'2 a'1 g'2 g'2 fis'1 e'1 \bar "|."

}

alto = {
	\partial 2 e'2 e'1 e'2 fis'1 g'2 e'1 dis'2 s1 
	e'2 e'1 fis'2 g'1 g'2 d'2 fis'1 fis'1 fis'2 fis'1 d'2 d'1 e'2 dis'1
	d'2 e'1 e'2 fis'1 fis'2 g'1 fis'2 s1
	e'2 e'1 e'2 c'1 d'2 d'1 b2 b1 d'2 d'1 d'2 e'1 dis'2 s1

}

tenor = {
	\partial 2 g2 g1 b2 d'1 d'2 c'2 fis (b) g1
	b2 b1 d'2 d'1 e'2 b1 cis'2 dis'1 d'2 b1 a2 g1 b2 b1 \fermata
	b2 b1 cis'2 cis'1 d'2 d'1 d'4 (c') b1
	g2 a1 gis2 a (fis) g a1 g2 fis1 b2 a1 b2 b1 b4 (a) g1
}

bass = {
	\partial 2 e2 e1 e2 d1 g,2 a, b,1 e
	e2 e1 d2 g1 e2 g1 fis2 b,1 b2 s1 fis2 s1 e2 s1
	b,2 e1 a2 fis1 b2 g2 d1 g,1
	e2 a,1 e2 a,1 b,2 d1 e2 b,1 b,2 fis,1 g,2 e2 b,1 e1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	From whence this fear and un -- be -- "lief?" 
	Hath not the Fa -- ther put to grief His spot -- less Son for "me?" 
	And will the right -- eous Judge of men 
	con -- demn me for that debt of sin which, Lord, was charged on "Thee?"
}

sopWordsTwo = \lyricmode
{
	Com -- plete a -- tone -- ment Thou hast made, 
	and to the ut -- most far -- thing paid what -- "e'er" Thy pe -- ople "owed;" 
	How then can wrath on me take place
	if shel -- tered in Thy right -- eous -- ness, and sprin -- kled with Thy "blood?"
}
s
opWordsThree = \lyricmode
{
	If Thou hast my dis -- charge pro -- cured, 
	and free -- ly in my room en -- dured the whole of wrath di -- vine, 
	pay -- ment God can -- not twice de -- mand
	First at my bleed -- ing Sure -- "ty's" hand, and then a -- gain at mine.
}

sopWordsFour = \lyricmode
{
	Turn, then, my soul, un -- to thy rest,
	the me -- rits of thy great High Priest have bought thy lib -- er -- "ty;" 
	Trust in His ef -- fi -- ca -- cious blood
	nor fear thy ban -- ish -- ment from God, since Je -- sus died for thee.
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
