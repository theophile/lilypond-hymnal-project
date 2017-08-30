\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "O Day of Peace That Dimly Shines"

Writer = "Carl P. Daw, Jr., 1982"

Translator = ""

Composer = "C. Hubert H. Parry, 1916"

Arranger = "Arr. Philip Legge (1993) and C. Meredith (2010)"

Tune = "JERUSALEM (PARRY)"

Meter = " L.M.D."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key d \major
	\tempo 4 = 60
	\autoBeamOff
}

soprano = {	
	s4. <a' fis'>8 (g'8.[ fis'16]) <b b'>4. b'8~ (<b' cis''>[ <ais' e''>]) <e' e''>[ (<d' d''>)] cis''[ (b')] a'8.[ (g'16)] \bar "" \break <a d' fis' a'>4. 

	\bar "|:"
	d'8 fis' a' b'4. d''8 b' a'16[ (g')] a'2 b'8 a'16 g' a'8 fis' e'4 d' b4.
	d'8 fis' a' b'4. d''8 cis'' b'16[ (a')] b'4. b'8 cis'' fis' a' gis' fis'4 e' a'4.
	e'8 e' fis' g'4. b'8 a'8. e'16 g'4. e'8 g' a' b'4. d''8 c'' a' b'4.
	g'8 b' d'' e''4. d''8 cis''8. b'16 a'4. a'8 d'' b' a' b' fis'4 e' d'4.
	
	<fis a d'>8 <a d' fis'>[ <a e' a'>] <d' b'>4. <d' d''>8 <g' g''>[ <fis' fis''>16 <e' e''>] s2. \bar "|."
}

alto = {
	<a' d'' fis'' a''>4. d'8~ d'[ dis'] <dis' fis'>[ e']~ <e' a'>[ <a' dis'>] <e' g'>[ g'] <fis' b'>4 <fis' d'> <b d'>8[ e'] s4.

	a8 d' e' fis'4 (g'8) g' g' e' d'4 (e') d'8 d'16 d' d'8 d' cis'4 b a (g8) 
	b d' fis' fis'4. b'8 a' fis' fis'4. gis'8 a' fis' d'8 d' cis'4 b8[ (e')] d'4 (cis'8)
	cis'8 b dis' e'4. e'8 e'8. e'16 e'4. e'8 e' g' g'4 (b'8) a' g' fis' a'4 (g'8)
	d'8 g' a' g'4. b'8 e'8. e'16 fis'4. e'8 fis' g' fis' fis' d'4 cis' a4.

	s4. fis'4 (g'8) s8 <b' d''>4 <fis' a' d'' fis''>2.
}

tenor = {
	<fis a d' fis'>4. <d fis>8~ (<d g>)[ c'] r8 <b, e b> r8 <b, dis b> r8 <g ais e'> r8 fis8_~ \voiceFour <d fis>4 \voiceThree \once \override NoteColumn #'force-hshift = #-1 a8. [ g16] <d, a, fis>4 r8
	
	fis8 a cis' d'4. b8 d' b fis4 (b) g8 a16 b a8 a  a[ (fis)] d4 d4.
	g8 a d' d'4. d'8 cis'8 cis' d'4. d'8 cis' cis' a a a4 a8[ (gis)] fis4 (e8)
	e8 g a b4. d'8 c'8. c'16 b4. g8 b cis' d'4. d'8 c'8 c' d'4. 
	b8 d' d' b4 (cis'8) d' cis'8. cis'16 d'4. e'8 d' d' d' d' b4 a fis4. \bar ":|"

	d4 cis8 b,[ d] <b, g>4 s4 <d, d>2. 
}

bass = {
	r8 <fis,, fis,> <b,, b,>4. <a,, a,>8 <g,, g,>4 <fis,, fis,> <e,, e,> << {s4 cis'8[ b]} \\ {<b,, b,>2} >> << { d8[ e]} \\ { <g, d>4} >> 
	s4 << { <d,, d,>2 } \\ {\autoBeamOff s8 d d cis} >> b,4. fis8 g g, d2 g8 g16 g d8 d b,4 a, g,4.
	g8 fis d b,4 (fis8) gis fis fis b4. b8 a a b, b, cis4 e a,4. 
	a,8 g fis e4. e8 a,8. a,16 e4. e8 e e d4 (g8) fis e d g4. 
	g8 g fis e4 (a8) a a8. g16 fis4. cis'8 b g fis fis g4 g d4.

	s4. b,,4 s4 <g, d b>4 s4.
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
	\override StanzaNumber #'stencil = ##f
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	\override StanzaNumber #'stencil = ##t
	\set stanza = "1."
	O day of peace that dim -- ly shines
	through all our hopes and prayers and dreams,
	guide us to jus -- tice, truth, and love,
	de -- liv -- ered from our self -- ish schemes.
	May swords of hate fall from our hands,
	our hearts from en -- vy find re -- lease,
	till by God's grace our war -- ring world
	shall see Christ's pro -- mised reign of peace.
}
sopWordsTwo = \lyricmode
{
	\override StanzaNumber #'stencil = ##f
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
	\override StanzaNumber #'stencil = ##t
	\set stanza = "2." 
        Then shall the wolf dwell with the lamb,
	nor shall the fierce de -- vour the small;
	as beasts and cat -- tle calm -- ly graze,
	a lit -- tle child shall lead them all.
	Then en -- e -- mies shall learn to love,
	all crea -- tures find their true ac -- cord;
	the hope of peace shall be ful -- filled,
	for all the earth shall know the Lord.
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
