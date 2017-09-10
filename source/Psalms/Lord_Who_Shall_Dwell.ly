\version "2.10.29"

\paper
{
	page-count = 1
}

Title = \markup{ \smallCaps "Lord," Who Shall Dwell Within Your House?}

Writer = "Douglas Wilson, 2001"

Translator = "Based on Psalm 15"

Composer = "Heinrich Schütz, 1628"

Arranger = ""

Tune = "WER WIRD, HERR"

Meter = " L.M."

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 15" }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key c \major
	\tempo 2 = 60
}

barspace = #(define-music-function (parser location extent) (pair?) #{
   \once \override Staff.Clef #'extra-spacing-width = #$extent
#})

soprano = {	
	\time 12/4
	\barspace #'(0 . 4) 
	a'2 f'4 d' a'2 c'' bes'4 bes' a'2
	f'2 f'4 d' e'2 \bar "" \break fis' g'4 f' e'2
	c''2 b'4 c'' a'2 a' b'4 cis'' d''2
	\time 22/4
	d''2 c''4 b' c''2 a'4 bes'4. (a'8 g'4 a'4. g'8 f'4 g'4. f'8 e'[ d'] e'4) e' d'1 \bar "|."
}

alto = {
	a2 a4 d' c'2 a d'4 g c'2
	d' d'4 bes c'2 c' d'4 d' cis'2
	e'2 e'4 e' f'2 f' d'4 g' fis'2
	f'2 e'4 e' e'2 d'4 d'2 (g4 c'2 f4 bes4. c'8 d'2) cis'4 d'1
}

tenor = {
	f2 d4 d e2 f4 f2 e4 f2
	d d4 f g2 a bes4 a a2
	a gis4 a2 d'4 c'2 b4 g a2
	a a4 gis a2 fis4 g4. (fis8 e4 f4. e8 d4. c8 d[ e] f4) a2 a1
}

bass = {
	d2 d4 bes, a,2 d, g,4 g, f,2
	bes, bes,4 bes, c2 a, g,4 d a,2
	a, e4 a, d2 f g4 e d2
	d a,4 e a,2 d4 g,2 (c4 f,2 bes,4 g,2 d4) a,2 d1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	\markup { \smallCaps "Lord," } who shall dwell with -- in Your house?
	And who as -- cends Your ho -- ly hill?
	On -- ly the one who walks in right,
	And speaks the truth with -- in __ his heart.
}
sopWordsTwo = \lyricmode
{
        He does not back -- bite with his tongue;
	He does no e -- vil to his friend;
	Slan -- ders and lies he will not hear,
	Neigh -- bors and friends are safe __ with him.
}
sopWordsThree = \lyricmode
{
	This good man's sight con -- demns the vile;
	He hon -- ors those who fear the \markup { \smallCaps "Lord." }
	When he has sworn to his own hurt
	He chang -- es not, his word __ is good.
}
sopWordsFour = \lyricmode
{
	He takes no u -- su -- ry at all;
	He takes no bribe to hurt the good.
	That man who does these bless -- ed things
	Shall stand up -- right and not __ be moved.
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
