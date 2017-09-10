\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "Baptized into Thy Name Most Holy"

Writer = "Johann J. Rambach, 1734"

Translator = "Trans. Catherine Winkworth, 1863, alt."

Composer = "Kornelius Dretzel, 1731"

Arranger = ""

Tune = "O DASS ICH TAUSEND"

Meter = " 9.8.9.8.8.8."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key f \major
	\tempo 4 = 108	
}

soprano = {	
	f'4 a' f' g'2 c''4 bes'2 a'4 g' f' \oneVoice r4 \voiceOne g' g' g' a'2 c''4 c''2 b'4 c''2.
	f'4 a' f' g'2 c''4 bes'2 a'4 g' f' \oneVoice r4 \voiceOne g' g' g' a'2 c''4 c''2 b'4 c''2.
	g'4 g' g' a'2 f'4 bes'2 a'4 g'2. c''4 c'' c'' bes'2 a'4 g'2 g'4 f'2. \bar "|."
}

alto = {
	c'4 c' d' e'2 f'4 f'2 f'4 e' c' s4 e'4 d' e' f'2 c'4 d'2 d'4 e'2.
	c'4 c' d' e'2 f'4 f'2 f'4 e' c' s4 e'4 d' e' f'2 c'4 d'2 d'4 e'2.
	c'4 b c' c'2 d'4 d' (e') f' e'2. e'4 e' f' f'2 f'4 f'2 e'4 c'2.
}

tenor = {
	a4 f a c'2 c'4 d'2 c'4 c' a \oneVoice r4 \voiceOne g g c' c'2 g4 a2 g4 g2.
	a4 f a c'2 c'4 d'2 c'4 c' a \oneVoice r4 \voiceOne g g c' c'2 g4 a2 g4 g2.
	e4 f g f2 a4 bes2 c'4 c'2. g4 g c' d'2 c'4 d'2 c'8 (bes) a2.
}

bass = {
	f4 f d c (bes,) a,4 bes,2 f4 c f, s4 c b, c f2 e4 f2 g4 c2.
	f4 f d c (bes,) a,4 bes,2 f4 c f, s4 c b, c f2 e4 f2 g4 c2.
	c4 d e f2 d4 g,2 a,8 (bes,) c2. c4 c8 (bes,) a,4 bes,2 f,4 bes,2 c4 f,2.
}

dropLyrics =
{
    \override LyricText #'extra-offset = #'(0 . -8)
    \override LyricHyphen #'extra-offset = #'(0 . -8)
    \override LyricExtender #'extra-offset = #'(0 . -8)
}

raiseLyrics =
{
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

skipFour = \repeat unfold 4 { \skip 8 }

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	Bap -- tized in -- to Thy Name most ho -- ly,
	O Fa -- ther, Son, and Ho -- ly Ghost,
	I claim a place, though weak and low -- ly,
	A -- mong Thy seed, Thy cho -- sen host.
	Bur -- ied with Christ and dead to sin,
	Thy Spir -- it now shall live with -- in.
}
sopWordsTwo = \lyricmode
{
	My lov -- ing Fa -- ther, Thou dost take me
	To be hence -- forth Thy child and heir;
	My faith -- ful Sav -- ior, Thou dost make me
	The fruit of all Thy sor -- rows share;
	Thou, Ho -- ly Ghost, wilt com -- fort me
	When dark -- est clouds a -- round I see.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
        And I have vowed to fear and love Thee
	And to o -- bey Thee, Lord, a -- lone;
	Be -- cause the Ho -- ly Ghost did move me,
	I dared to pledge my -- self Thine own,
	Re -- noun -- cing sin to keep the faith
	And war with e -- vil un -- to death.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	My faith -- ful God, Thou fail -- est ne -- ver,
	Thy cov -- 'nant sure -- ly will a -- bide;
	Oh, cast me not a -- way for -- ev -- er
	Should I trans -- gress it on my side!
	Tho' I have oft my soul de -- filed,
	Do Thou for -- give, re -- store, Thy child.
}
sopWordsFive = \lyricmode
{
	Yea, all I am and love most dear -- ly
	I of -- fer now, O Lord, to Thee.
	Oh, let me make my vows sin -- cere -- ly
	And help me Thine own child to be!
	Let naught with -- in me, naught I own,
	Serve a -- ny will but Thine a -- lone.
}
sopWordsSix = \lyricmode
{
	And ne -- ver let my pur -- pose fal -- ter,
	O Fa -- ther, Son, and Ho -- ly Ghost,
	But keep me faith -- ful to Thine al -- tar
	Till Thou shalt call me from my post.
	So un -- to Thee I live or die
	And praise Thee e -- ver -- more on high.
}
sopWordsSeven = \lyricmode
{
 
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
