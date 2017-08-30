\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = \markup{The \smallCaps{Lord} Hear Thee in Troubled Times}

Writer = "Douglas Wilson, 2001"

Translator = "Based on Psalm 20"

Composer = "Heinrich Schütz, 1661"

Arranger = ""

Tune = "DER HERR ERHÖR DICH"

Meter = " 8.7.8.7.8.7.8.7.7."

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 20" }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 12/4
	\key g \major
	\tempo 2 = 92
}

soprano = {	
	d'2 g' a'4 b'2 d''4 d'' cis'' d''2 \bar "|"
	a'2 b' d''4 c''2 b'4 a'2 g' \bar "|"
	d'2 g' a'4 b'2 d''4 d'' cis'' d''2 \bar "|"
	a'2 b' d''4 c''2 b'4 a'2 g' \bar "|"
	b'2 a' a'4 a'2 b'4 c'' b' a'2 \bar "|"
	fis'2 g' a'4 fis'2 g'4 e'2 d' \bar "|"
	a'2 b' g'4 b'2 d''4 c'' b' a'2 \bar "|"
	g'2 a' b'4 c''2 b'4 a'2 b' \bar "|" \time 16/4
	b'2 g' fis'4 e'2 d'4 g'1 g' \bar "|."
}

alto = {
	b2 e' fis'4 g'2 a'4 g' e' fis'2
	fis'2 g' d'4 e'2 g'4 fis'2 g'
	b2 e' fis'4 g'2 a'4 g' e' fis'2
	fis'2 g' d'4 e'2 g'4 fis'2 g'
	d'2 f' f'4 f'2 d'4 g' g' fis'2
	d' e' e'4 d'2 d'4 cis'2 d'
	d' d' c'4 d'2 d'4 e' e' e'2
	e' fis' gis'4 a'2 e'4 e'2 gis'
	d' e' d'4 b2 d'4 c'1 b
}

tenor = {
	g2 b d'4 d'2 d'4 e' e' d'2
	d' d' b4 c'2 d'4 d'2 d'
	g2 b d'4 d'2 d'4 e' e' d'2
	d' d' b4 c'2 d'4 d'2 d'
	b2 c' c'4 c'2 b4 e' d' d'2
	a2 c' c'4 a2 b4 a2 a
	fis2 g e4 g2 fis4 a gis a2
	b d' d'4 e'2 b4 c'2 b
	b c' a4 g2 fis4 e1 d
}

bass = {
	g2 e d4 g2 fis4 g a d2
	d g b4 a2 g4 d2 g
	g2 e d4 g2 fis4 g a d2
	d g b4 a2 g4 d2 g
	g2 f f4 f2 g4 c g d2
	d c a,4 d2 g,4 a,2 d
	d g, c4 g,2 b,4 a, e a,2
	e d b,4 a,2 gis,4 a,2 e
	g c d4 e2 b,4 c1 g,
}

sopWords = \lyricmode
{
	The \markup { \smallCaps "Lord" } hear thee in trou -- bled times, 
	May Ja -- cob's God de -- fend thee,
	And send out strength from Zi -- on's hill
	And from His sanc -- tu -- a -- ry.
	May He re -- call thine of -- fer -- ings,
	With all thy sac -- ri -- fi -- ces,
	And grant thee all thy heart's de -- sire,
	Ful -- fill -- ing all thy pur -- pose,
	As His good grace suf -- fic -- es.
}
sopWordsTwo = \lyricmode
{
        We will re -- joice; sal -- va -- tion comes!
	In God's name lift our ban -- ners.
	May God ful -- fill all they re -- quests
	And lift up all thy ban -- ners.
	Thus now I know God saves His own,
	God saves His own an -- oint -- ed.
	He al -- ways hears, with His right hand
	He comes from heav'n a -- bove us,
	And in the strength ap -- point -- ed.
}
sopWordsThree = \lyricmode
{
	Some al -- ways trust in char -- i -- ots
	And oth -- ers trust in hors -- es,
	But we re -- call our \markup { \smallCaps "Lord" } and God,
	Strong past our own re -- sourc -- es.
	Our en -- e -- mies have fall -- en low
	But we are held and up -- right.
	So save us, \markup { \smallCaps "Lord," } our God and King
	As we in trou -- ble call Thee,
	As we in trou -- ble call Thee.
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
