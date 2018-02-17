\version "2.10.29"

Title = "Jesus, With Thy Church Abide"

Writer = "Thomas B. Pollock, 1871"

Translator = ""

Composer = "Johann Walter, 1524"

Arranger = ""

Tune = "NUN KOMM, DER HEIDEN HEILAND"

Meter = " 7.7.7.7"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key g \minor		
	\tempo 4=96
	\autoBeamOff
}

soprano = {	
	g'4 g' f' bes' a'8 [g'] a'4 g'2 g'4 bes' c''4. bes'8 c''4 d'' bes'2 \break
	bes'4 c'' d'' bes' c'' bes'8 [a'] g'2 g'4 g' f' bes' a'8 ([g'] a'4) g'2 \bar "|." 
}

alto = {
	d'4 d' d' d' ees'8 [g'] fis'4 g'2 d'4 d' ees'4. d'8 f'4 f' f'2 \break
	d'4 f' f' g' g' g'8 [fis'] g'2 ees'4 ees' d' f' fis'8 ([g'] fis'4) g'2 \bar "|."
}

tenor = {
	bes4 bes a d' c'8 [bes] a4 bes2 bes4 bes g4. bes8 a4 bes d'2 \break
	f4 a bes bes ees' d' bes2 bes4 c' a d' d'8 ([bes] a4) b2 \bar "|."
}

bass = {
	g,4 g d bes, c d g,2 g4 g c4. g8 f4 bes, bes,2 \break
	bes,4 f bes, ees c d g,2 ees4 c d bes, d2 g,2 \bar "|."
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	g2:m d4:m g4:m/bes c4:m6 d4 g2:m
	g2:m c4.:m g8:m f4 bes2.
	bes4 f4 bes4 ees4 c4:m g8:m/d d8 g2:m
	ees4 c4:m d4:m bes4 d8 g8:m/d d4 g2 
}

sopWords = \lyricmode
{
        Je -- sus, with Thy Church a -- bide,
	Be her Sav -- ior, Lord, and Guide,
	While on earth her faith is tried:
	We be -- seech Thee, hear us.
}

sopWordsTwo = \lyricmode
{
	May her voice be ev -- er clear,
        Warn -- ing of a judg -- ment near,
        Tell -- in of a Sav -- ior dear:
        We be -- seech Thee, hear us.
}

sopWordsThree = \lyricmode
{
	%\override LyricText #'font-shape = #'italic
	Keep her life and doc -- trine pure,
        Help her, pat -- ient to en -- dure,
        Trust -- ing in Thy pro -- mise sure:
        We be -- seech Thee, hear us.
}

sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	All her fet -- tered powers re -- lease,
        Bid our strife and en -- vy cease,
        Grant Thy heav'n -- ly gift of peace:
        We be -- seech Thee, hear us.
}

sopWordsFive = \lyricmode
{
	\set stanza = "5. "
	\override LyricText #'font-shape = #'italic
	May she one in doc -- trine be,
        One in truth and char -- i -- ty,
        Win -- ning all to faith in Thee:
        We be -- seech Thee, hear us.
}

sopWordsSix = \lyricmode
{
	\set stanza = "6. "
	May she guide the poor and blind,
        Seek the lost un -- til she find,
        And the bro -- ken heart -- ed bind:
        We be -- seech Thee, hear us.
}

sopWordsSeven = \lyricmode
{
	\set stanza = "7. "
	%\override LyricText #'font-shape = #'italic
	May her priests Thy peo -- ple feed,
        Shep -- herds of the flock in -- deed,
        Rea -- dy, where Thou call'st, to lead:
        We be -- seech Thee, hear us.
}

sopWordsEight = \lyricmode
{
        \set stanza = "8. " 
	%\override LyricText #'font-shape = #'italic
        Judge her not for work un -- done,
        Judge her not for fields un -- won;
        Bless her works in Thee be -- gun:
        We be -- seech Thee, hear us.
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
