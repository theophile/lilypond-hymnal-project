\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "Oh, Enter, Lord, Thy Temple"

Writer = "Paul Gerhardt, 1653"

Translator = "Trans. Catherine Winkworth, 1863, alt."

Composer = "Johann Crüger, 1653"

Arranger = ""

Tune = "ZEUCH EIN"

Meter = " 7.6.7.6.6.7.7.6."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key f \major
	\tempo 4 = 96	
}

soprano = {	
	\partial 2 a'2 f' c'' bes'4 a' g'2 f'2 \oneVoice r4 \voiceOne a'4 g' f' e' f' g'2 \break
	a'2 f' c'' bes'4 a' g'2 f'2 \oneVoice r4 \voiceOne a'4 g' f' e' f' g'2 \break
	\oneVoice r4 \voiceOne g'4 a' c'' c'' b' c''2 \oneVoice r4 \voiceOne  c''4 g' f' g' a' bes'2 a'4 \break
	a'4 bes' d'' c'' bes' a'2 g' \oneVoice r4 \voiceOne g'4 bes' bes' a'2 g' f' \bar "|."
}

alto = {
	\partial 2 c'2 c' f' f'4 f' f' (e') f'2 s4 f'4 d' d' cis' a c'2
	c'2 c' f' f'4 f' f' (e') f'2 s4 f'4 d' d' cis' a c'2
	s4 e'4 f' c' d' d' e'2 s4 e'4 e' d' c' c' d'2 c'4
	f'4 f' f' ees' d' d'2 b s4 c'4 d' e' f'2 f'4 (e') c'2
}

tenor = {
	\partial 2 f2 a c' d'4 c' c'2 a \oneVoice r4 \voiceOne c'4 bes a a f e2
	f2 a c' d'4 c' c'2 a \oneVoice r4 \voiceOne c'4 bes a a f e2
	\oneVoice r4 \voiceOne c'4 c' g a g g2 \oneVoice r4 \voiceOne g4 c' a g f f2 f4
	c'4 bes bes g g g (fis) g2 \oneVoice r4 \voiceOne e f bes c'2 c' a
}

bass = {
	\partial 2 f2 f, a, bes,4 f, c2 f s4 f,4 g, d a, d c2
	f2 f, a, bes,4 f, c2 f s4 f,4 g, d a, d c2
	s4 c4 f e f g c2 s4 c c d e f bes,2 f,4
	f d bes, c g, d2 g, s4 c bes, g, a, (bes,) c2 f,2
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

sopWords = \lyricmode
{
	Oh, en -- ter, Lord, Thy tem -- ple,
	Be Thou my spi -- rit’s Guest,
	Who gav -- est me, the earth -- born,
	A sec -- ond birth more blest.
	Thou in the God -- head, Lord,
	Though here to dwell Thou deign -- est,
	For -- ev -- er e -- qual reign -- est,
	Art e -- qual -- ly a -- dored.
}
sopWordsTwo = \lyricmode
{
        Oh, en -- ter, let me know Thee
	And feel Thy pow'r with -- in,
	The pow'r that breaks our fet -- ters
	And res -- cues us from sin;
	Oh, wash and cleanse Thou me
	That I may serve Thee tru -- ly
	And ren -- der hon -- or du -- ly
	With per -- fect heart to Thee.
}
sopWordsThree = \lyricmode
{
	%\override LyricText #'font-shape = #'italic
        Thou art, O Ho -- ly Spir -- it,
	The true a -- noint -- ing Oil,
	Through which are con -- se -- cra -- ted
	Soul, bo -- dy, rest, and toil
	To Christ, whose guar -- dian wings,
	Where -- ’er their lot ap -- point -- ed,
	Pro -- tect His own a -- noint -- ed,
	His pro -- phets, priests, and kings.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Thou, Ho -- ly Spir -- it, teach -- est
	The soul to pray a -- right;
	Thy songs have sweet -- est mu -- sic,
	Thy prayers have won -- drous might.
	Un -- heard they can -- not fall,
	They pierce the high -- est hea -- ven
	Till He His help hath giv -- en
	Who sure -- ly help -- eth all.
}
sopWordsFive = \lyricmode
{
	Thy gift is joy, O Spir -- it,
	Thou wouldst not have us pine;
	In dark -- est hours Thy com -- fort
	Doth ev -- er bright -- ly shine.
	And, oh, how oft Thy voice
	Hath shed its sweet -- ness o’er me
	And o -- pened heav'n be -- fore me
	And bid my heart re -- joice!
}
sopWordsSix = \lyricmode
{
	All love is Thine, O Spir -- it;
	Thou hat -- est en -- mi -- ty;
	Thou lov -- est peace and friend -- ship,
	All strife wouldst have us flee;
	Where wrath and dis -- cord reign,
	Thy whis -- per kind -- ly plead -- eth
	And to the heart that heed -- eth
	Brings love and light a -- gain.
}
sopWordsSeven = \lyricmode
{
	Our path in all things or -- der
	Ac -- cord -- ing to Thy mind,
	And when this life is o -- ver
	And all must be re -- signed,
	Oh, grant us then to die
	With calm and fear -- less spir -- it
	And af -- ter death in -- her -- it
	E -- ter -- nal life on high.
}
sopWordsEight = \lyricmode
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
