\version "2.10.29"

Title = "Love of the Father"

Writer = "12th Century Latin Hymn"

Translator = "Para. Robert Bridges, 1844-1930"

Composer = "Orlando Gibbons, 1583-1625"

Arranger = ""

Tune = "SONG 22"

Meter = " 10.10.10.10"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key f \major
	\tempo 4 = 100	
}

soprano = {	
	c''2 c''4 a' d''2 c'' c''4 bes' a' c'' g'1
	\oneVoice r4 \voiceOne g'4 a' f' bes'2 g' c''4 f' a' g' f'2. %\bar "" \break
	a'4 bes' c'' d'' d'' g' c'' c'' b' c''2. %\bar "" \break
	e'4 a' g' a'4. bes'8 c''4 d'' g' g' f'1 \bar "|." 
}

alto = {
	f'2 g'4 a' f'2 f' f'4 d'8 (e') f'4 f' e'1
	s4 e'4 f' d' d'2 e' f'4 f' f' e' f'2.
	f'4 f' ees' d'8 (ees') f'4 g' aes' d' d' e'2.
	c'4 c' d'8 (e') f'4 (e'8) d' c'4 f' f' e' f'1
}

tenor = {
	a2 c'4 c' bes2 a a4 bes c' a c'1
	\oneVoice r4 \voiceOne c'4 c' bes bes2 c'2 c'4 d' c'4. bes8 a2.
	c'4 f g8 (a) bes (c') d'4 d' c' g g g2.
	g4 a bes c'4. g8 c'4 bes8 (a) g4 g a1
}

bass = {
	f2 e4 f bes,2 f f4 g a f c1
	s4 c4 f bes g2 c a4 bes c' c f2.
	f4 d c bes, bes, ees f g g, c2.
	c4 a, g, f,4. g,8 a,4 bes, c c f1
}

sopWords = \lyricmode
{
        Love of the Fa -- ther, Love of God the Son,
	from whom all came, in whom was all be -- gun;
	who form -- est heav'n -- ly beau -- ty out of strife,
	cre -- a -- tion's whole de -- sire and breath of life:
}

sopWordsTwo = \lyricmode
{
	Thou the All -- ho -- ly, thou su -- preme in might,
	thou dost give peace, thy pres -- ence mak -- eth right;
	thou with thy fa -- vor all things dost en -- fold,
	with thine all -- kind -- ness free from harm wilt hold.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Hope of all com -- fort, splen -- dor of all aid,
	that dost not fail nor leave the heart a -- fraid:
	to all that cry thou dost all help ac -- cord,
	the an -- gels' ar -- mor and the saints' re -- ward.
}

sopWordsFour = \lyricmode
{
	Pur -- est and high -- est, wis -- est and most just,
	there is no truth save on -- ly in thy trust;
	thou dost the mind from earth -- ly dreams re -- call,
	and bring, through Christ, to him for whom are all.

}

sopWordsFive = \lyricmode
{
 	E -- ter -- nal Glo -- ry, all men thee a -- dore,
	who art and shalt be wor -- shiped e -- ver -- more:
	us whom thou mad -- est, com -- fort with thy might,
	and lead us to en -- joy thy heav'n -- ly light.
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
