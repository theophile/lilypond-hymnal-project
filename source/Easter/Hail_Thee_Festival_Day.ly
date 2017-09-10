\version "2.10.29"

Title = "Hail Thee, Festival Day!"

Writer = "Venantius Fortunatus, A.D. 530-609"

Translator = "Trans. Maurice F. Bell, 1906"

Composer = "Ralph Vaughan Williams, 1906"

Arranger = ""

Tune = "SALVA FESTA DIES"

Meter = " irregular"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	%\override Staff.TimeSignature #'style = #'()
	%#(set-accidental-style 'modern-cautionary)
  	%\override Staff.TimeSignature #'transparent = ##t
	\time 4/4
	\key g \major
	\tempo 4 = 82	
}

barspace = #(define-music-function (parser location extent) (pair?) #{
   \once \override Staff.Clef #'extra-spacing-width = #$extent
#})

soprano = {	
	\bar "|:"	
	\repeat volta 2 {	g'4^\markup { \italic { "Refrain" } } d'' c'' b'8 a' g'2. b'4 a' g'8 fis' g' a'4 fis'8 e'2 d'
				\barspace #'(0 . 11) e'4 fis'8 g' a'4 c'' b'2 < d'' d'>4 <e'' e'>8 <d'' d'> b'2 a'4. g'8 
			}
	\alternative  	{
				{ g'1 }
				{ g'1 }
			} \bar "|." \break 

	
	a'4 a'8 a' b'4 a'8 b' c''2. \phrasingSlurDashed \once \override Slur #'line-thickness = #2.5 d''8\( d''\) e''4 d''8 c'' b'4 c''8 a' gis'2 e'
	a' b'4 a'8 (b') c''4 \phrasingSlurDashed \once \override Slur #'line-thickness = #2.5 e''8\( e''\) \slurSolid d''4 (b') c'' b'8 b' a' b'4 g'8 d''1
	\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\once \override Score.RehearsalMark #'self-alignment-X = #right \mark \markup { \italic \fontsize #-2 { "Repeat Refrain once after each stanza" } }
	\bar "||" \break 

	\times 2/3 {e'4 e' e'} \times 2/3 {f' e' f'} g' c'' b' a'8 a' g'2. a'8 g' e'2 d'
	\times 2/3 {e'4 e' e'} \times 2/3 {fis' g' a'} b'2 c''4 \phrasingSlurDashed \once \override Slur #'line-thickness = #2.5 b'8\( c''\) g'2 fis'4. e'8 e'2 (fis') \bar "||"
}

upper = {
	<b d'>4 <d' g'> <e' g'> fis' e'2. <cis' g'>4 d' d' d'2 d'4 cis' d'2
	e'4 d' <e' a'>2 <dis' a'>4 <e' g'> g'2 <d' g'>2 <fis' d'>4~ <fis' c'> b4 e' d' c' <d' b>1

	\barspace #'(0 . 16) 
	e'4^\markup { \box { "Women Only" } } c' e' fis'8 gis' <e' a'>2. <d' a'>4 <e' a'>2 f'4 d' e'2 b
	e'2 e'4 fis'8 gis' <e' a'>4 fis' g'2 
	e' e' <d' fis'>2 <e' g'>4 <fis' a'>

	\barspace #'(0 . 16) 
	c'2^\markup { \box { "Men Only" } } c' <b d'>4 <c' g'> <c' g'> <c' f'> c' b c'2 c'2. b4 c'2 <c' e'>2 <b e'> <e' g'>4 e' e'2 dis'4. e'8 b2 (d')
	\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\once \override Score.RehearsalMark #'self-alignment-X = #right \mark \markup { \italic \fontsize #-2 { "Repeat Refrain once after each stanza" } }
}

tenor = {
 	g2. d'8 c' b2. g4 a2 g4 fis b a~ a2 g2 <c' a> b g d d g1 g1

	e1~ e4 s1 s4 a2 b gis e1~ e4 a b2 a4 g g2 d'1

	g2 f s1 e4 f g c' g1 g2 a g g4 b8 a g4 a b a g2 a
}

bass = {
 	g,4 b, c d e fis g e fis d b, a, g, a, <d fis>2 c4 b, a, g, <a fis,> <g e,> b, c8 b, d2 d, g,4 c b, a, g,1

	c4 a, gis, e, a, a g f c a, d f e fis! e d c a, gis, e, a, c b, e a, b, c cis d c b, a,

	c2 a, g,4 c f, a, c d e fis g2 g, c a, e4 d c g,8 a, b,1 e2 d
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

RefrainE = \lyricmode
{
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	\once \override StanzaNumber #'font-series = #'medium
	%\once \override StanzaNumber #'font-size = #-1
	\once \override StanzaNumber #'font-shape = #'italic
	\set stanza = "(Easter)"
	%Hail thee, fes -- ti -- val day! Blest day to be hal -- lowed for -- ev -- er;
	Day when our Lord was raised, break -- ing the king -- dom of death. death.
}

RefrainA = \lyricmode
{
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	\once \override StanzaNumber #'font-series = #'medium
	%\once \override StanzaNumber #'font-size = #-1
	\once \override StanzaNumber #'font-shape = #'italic
	\set stanza = "(Ascension)"
	%Hail thee, fes -- ti -- val day! Blest day to be hal -- lowed for -- ev -- er;
	Day when our ris -- en Lord rose in the heav -- ens to reign. reign.
}

RefrainP = \lyricmode
{
	Hail thee, fes -- ti -- val day! Blest day to be hal -- lowed for -- ev -- er;
	\once \override StanzaNumber #'font-series = #'medium
	%\once \override StanzaNumber #'font-size = #-1
	\once \override StanzaNumber #'font-shape = #'italic
	\set stanza = "(Pentecost)"
	Day when the Ho -- ly Ghost shone in the world with His grace. grace.
}

EasterOne = { \set stanza = \markup { \medium \italic "(Easter)" \bold \upright "1. " }
		\lyricmode
{
	%\once \override StanzaNumber #'font-series = #'medium
	%\once \override StanzaNumber #'font-size = #-1
	%\once \override StanzaNumber #'font-shape = #'italic
	%\set stanza = "(Easter) 1. "
       	All the fair beau -- ty of earth from the death of the win -- ter a -- ris -- ing!
	Ev -- 'ry good gift of the year now with its mas -- ter re -- turns:
  }
}

EasterTwo = { \set stanza = \markup { \medium \italic "(Easter)" \bold \upright "2. " }
		\lyricmode
{
	%\once \override StanzaNumber #'font-series = #'medium
	%\once \override StanzaNumber #'font-size = #-1
	%\once \override StanzaNumber #'font-shape = #'italic
	%\set stanza = "(Easter) 2. "
       	Rise from the grave now, O Lord, the Au -- thor of life and cre -- a -- tion.
	Tread -- ing the path -- way of death, new life You give to us all:
  }
}

AscensionOne = { \set stanza = \markup { \medium \italic "(Ascension)" \bold \upright "1. " }
		\lyricmode
{
	%\once \override StanzaNumber #'font-series = #'medium
	%\once \override StanzaNumber #'font-size = #-1
	%\once \override StanzaNumber #'font-shape = #'italic
	%\set stanza = "(Ascension) 1. "
       	He who was nailed to the cross is __ \skip8 rul -- er and Lord of all peo -- ple.
	All things cre -- a -- ted on earth sing to the glo -- ry of God:
  }
}

AscensionTwo = { \set stanza = \markup { \medium \italic "(Ascension)" \bold \upright "2. " }
		\lyricmode
{
	%\once \override StanzaNumber #'font-series = #'medium
	%\once \override StanzaNumber #'font-size = #-1
	%\once \override StanzaNumber #'font-shape = #'italic
	%\set stanza = "(Ascension) 2. "
       	Dai -- ly the love -- li -- ness grows, a -- dorned with the glo -- ry of blos -- som;
	Heav -- en her gates un -- bars fling -- ing her __ \skip8 in -- crease of light:
  }
}

PentecostOne = { \set stanza = \markup { \medium \italic "(Pentecost)" \bold \upright "1. " }
		\lyricmode
{
	%\once \override StanzaNumber #'font-series = #'medium
	%\once \override StanzaNumber #'font-size = #-1
	%\once \override StanzaNumber #'font-shape = #'italic
	%\set stanza = "(Pentecost) 1. "
       	Bright and in like -- ness of fire,
	On __ \skip8 those who a -- wait your ap -- pear -- ing,
	You Whom the Lord had fore -- told
	Sud -- den -- ly, swift -- ly de -- scend.
  }
}

PentecostTwo = { \set stanza = \markup { \medium \italic "(Pentecost)" \bold \upright "2. " }
		\lyricmode
{
	%\once \override StanzaNumber #'font-series = #'medium
	%\once \override StanzaNumber #'font-size = #-1
	%\once \override StanzaNumber #'font-shape = #'italic
	%\set stanza = "(Pentecost) 2. "
       	Forth from the Fa -- ther You come
	With se -- ven -- fold mys -- ti -- cal off -- 'ring,
	Pour -- ing on all hu -- man souls
	In -- fin -- ite rich -- es of God.
  }
}

sopWordsThree = \lyricmode
{
	\set stanza = "3. "
	God the Al -- migh -- ty, the Lord,
	The __ \skip8 Ru -- ler of earth and the heav -- ens,
	Guard us from harm with -- \skip8 out;
	Cleanse us from e -- vil with -- in.
}

sopWordsFour = \lyricmode
{
	\set stanza = "4. " 
	Je -- sus the health of the world,
	En -- light -- en our minds, great Re -- deem -- er,
	Son of the Fa -- ther sup -- reme,
	On -- ly be -- got -- ten of God.
}

sopWordsFive = \lyricmode
{
	\set stanza = "5. "
	Spir -- it of life and of pow'r,
	Now __ \skip8 flow in us, fount of our be -- ing,
	Light that en -- light -- ens us all,
	Life that in all may a -- bide.
}

sopWordsSix = \lyricmode
{
	\set stanza = "6. "
 	Praise to the giv -- er of good!
	O lov -- er and au -- thor of con -- cord,
	Pour out your balm on our days;
	Or -- der our ways in your peace.
}

sopWordsSeven = \lyricmode
{
 
}

sopWordsEight = \lyricmode
{
 
}

skipRefrain = \lyricmode { \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1  }

musicScore = \context StaffGroup <<
   \include "insertchords.ly"
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \soprano }
      \context Voice = "two" { \global \voiceTwo \upper }
    >>

	\lyricsto "one" \new Lyrics { \RefrainE \EasterOne \EasterTwo }
	\lyricsto "one" \new Lyrics { \RefrainA \AscensionOne \AscensionTwo }
	\lyricsto "one" \new Lyrics { \RefrainP \PentecostOne \PentecostTwo }
	\lyricsto "one" \new Lyrics { \skipRefrain \sopWordsThree \sopWordsFour }
	\lyricsto "one" \new Lyrics { \skipRefrain \sopWordsFive \sopWordsSix }
	%\lyricsto "one" \new Lyrics { \set stanza = "6." \sopWordsSix }
	%\lyricsto "one" \new Lyrics { \set stanza = "7." \sopWordsSeven }
	%\lyricsto "one" \new Lyrics { \set stanza = "8." \sopWordsEight }

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree \tenor }
      \context Voice = "two" { \global \voiceFour \bass }
    >>
  >>
	
\include "standard-layout.ly"
\include "tag.ly"
