\version "2.10.29"

Title = "Christ Jesus Lay in Death's Strong Bands"

Writer = "Martin Luther, 1483-1546"

Translator = "Trans. Richard Massie, 1800-87 (alt.)"

Composer = "J. Walther, 1524"

Arranger = ""

Tune = "CHRIST LAG IN TODESBANDEN"

Meter = " 8.7.8.7.7.8.7.4"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\override Staff.TimeSignature #'style = #'()
	#(set-accidental-style 'modern-cautionary)
  	\override Staff.TimeSignature #'transparent = ##t
	%\time 3/2
	\key c \major
	\tempo 4 = 82	
}

soprano = {	
	\cadenzaOn
	a'2 g'4 a' c'' d'' c'' b' a' \oneVoice r8 \voiceOne a' f'4 g' a' g'8 (f') e'4 d'2. \breathe \bar "" \break
	a'2 g'4 a' c'' d'' c'' b' a' \oneVoice r8 \voiceOne a' f'4 g' a' g'8 (f') e'4 d'2. \breathe \bar "" \break
	d'4 f' g' d' f' g' a' \oneVoice r8 \voiceOne a'8 d''4 c'' d'' e'' c'' b' a' \bar "" \break \oneVoice r8 \voiceOne a' c''4 a' c'' g' f' (e') d'2 \breathe
	a'4 g'8 (f') e'4 d'1 \bar "|." 
}

alto = {
	e'2 e'4 c' g' f' e'2 cis'4 s8 e' d'4 c'2 d'4 c' a2.
	e'2 e'4 c' g' f' e'2 cis'4 s8 e' d'4 c'2 d'4 c' a2.
	d'4 d' d' d' d' c' c' s8 d' f'4 e' g'2 e' e'4 s8 f' e'4 f' g' e' d' (cis') d'2
	c'4 d' c' a1
}

tenor = {
	c'2 b4 a g a2 gis4 a \oneVoice r8 \voiceOne a a4 g f bes g f2.
	c'2 b4 a g a2 gis4 a \oneVoice r8 \voiceOne a a4 g f bes g f2.
	bes!4 a bes bes a g f \oneVoice r8 \voiceOne a a4 a b2 a4 b c' \oneVoice r8 \voiceOne d' c'2 g4 c' a2 f
	f4 d g f1
}

bass = {
	a,2 e4 f e d e e a, s8 cis d4 e f bes, c d2.
	a,2 e4 f e d e e a, s8 cis d4 e f bes, c d2.
	bes,!4 d g, g d e f s8 f d4 a g e a g a s8 d a4 a e c d (a,) bes,2
	f,4 bes, c d1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
       	Christ Je -- sus lay in death’s strong bands,
	For our of -- fens -- es giv -- en;
	But now at God’s right hand He stands,
	And brings us life from Heav -- en.
	Where -- fore let us joy -- ful be,
	And sing to God right thank -- ful -- ly
	Loud songs of Al -- le -- lu -- ia!
}

sopWordsTwo = \lyricmode
{
	No son of man could con -- quer Death,
	Such mis -- chief sin had wrought us,
	For in -- no -- cence dwelt not on earth,
	And there -- fore Death had brought us
	In -- to thrall -- dom from of old
	And ev -- er grew more strong and bold
	And kept us in his bon -- dage.
}

sopWordsThree = \lyricmode
{
	But Je -- sus Christ, God’s on -- ly Son,
	To our low state de -- scend -- ed,
	The cause of Death He has un -- done,
	His pow'r for -- ev -- er end -- ed,
	Ru -- ined all his right and claim
	And left him noth -- ing but the name,
	His sting is lost for -- ev -- er.
}

sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	It was a strange and dread -- ful strife
	When life and death con -- tend -- ed;
	The vic -- to -- ry re -- mained with life;
	The reign of death was end -- ed.
	Stripped of pow'r, no more it reigns,
	An emp -- ty form a -- lone re -- mains
	Death’s sting is lost for -- ev -- er! 
	\override LyricText #'font-size = #2 { Al -- le -- lu -- ia! }
}

sopWordsFive = \lyricmode
{
 	Here the true Pas -- chal Lamb we see,
	Whom God so free -- ly gave us;
	He died on the ac -- curs -- ed "tree—"
	So strong His "love!—" to save us.
	See, His blood doth mark our door;
	Faith points to it, Death pass -- es o'er,
	And Sa -- tan can -- not harm us.
}

sopWordsSix = \lyricmode
{
 	So let us keep the fes -- ti -- val
	Where to the Lord in -- vites us;
	Christ is Him -- self the joy of all,
	The Sun that warms and lights us.
	By His grace He doth im -- part
	E -- ter -- nal sun -- shine to the heart;
	The night of sin is end -- ed!
}

sopWordsSeven = \lyricmode
{
 	Then let us feast this Eas -- ter day
	On the true Bread of Heav -- en;
	The Word of grace hath purged a -- way
	The old and wick -- ed leav -- en.
	Christ a -- lone our souls will feed;
	He is our Meat and Drink in -- deed;
	Faith lives up -- on no oth -- er!
}

sopWordsEight = \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \include "insertchords.ly
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
