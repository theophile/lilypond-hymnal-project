\version "2.10.29"

Title = "Rejoice, Rejoice, Believers!"

Writer = "Laurentius Laurenti, 1700"

Translator = "Trans. Sarah B. Findlater, 1854"

Composer = "Johann Michael Haydn, 1819"

Arranger = ""

Tune = "GREENLAND"

Meter = " 7.6.7.6.D."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key ees \major
	\tempo 4 = 96
}

soprano = {	
	\partial 4
	g'4 bes' bes' bes' bes' ees''2 g'4 g' f' f' aes' aes' g'2. \bar "" \break
	f'4 g' bes' bes' bes' ees''2 a'4 a' bes' c'' d'' c'' bes'2. \bar "" \break
	d''4 ees'' bes' aes' g' g'2 f'4 d'' ees' bes' aes' g' f'2. \bar "" \break
	bes4 ees' g' bes'4. b'8 d''2 c''4 c'' bes' g' g'4. f'8 ees'2. \bar "|."
}

alto = {
	ees'4 g' g' f' f' ees'2 ees'4 ees' ees' ees' d' d' ees'2.
	d'4 ees' g' f' f' ees'2 ees'4 ees' d' g' f' ees' d'2.
	f'4 ees' ees' d' ees' ees'2 d'4 f' ees' ees' f' ees' d'2.
	bes4 ees' g' bes'4. b'8 d''2 c''4 fis' g' ees' d'4. d'8 ees'2.
}

tenor = {
	bes4 ees' ees' bes bes c'2 bes4 bes c' c' bes bes bes2.
	bes4 bes bes bes bes a2 c'4 c' bes bes bes a bes2.
	bes4 bes bes bes bes bes2 bes4 bes bes bes bes bes bes2.
	bes,4 ees g bes4. b8 d'2 c'4 ees' ees' bes aes4. aes8 g2.
}

bass = {
	ees4 ees ees d d c2 g,4 g, aes, aes, bes, bes, ees2.
	bes,4 ees ees d d c2 f4 f g ees f f bes,2.
	aes4 g g f ees bes2 bes4 aes g g d ees bes,2.
	bes,4 ees g bes4. b8 d'2 c'4 a bes bes, bes,4. bes,8 ees2.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        Re -- joice, re -- joice, be -- liev -- ers! And let your lights ap -- pear.
	The even -- ing is ad -- vanc -- ing, and dark -- er night is near.
	The Bride -- groom is a -- ris -- ing, and soon He draw -- eth nigh.
	Up, pray, and watch, and wres -- tle: At mid -- night comes the cry.
}

sopWordsTwo = \lyricmode
{
	See that your lamps are burn -- ing; re -- plen -- ish them with oil.
	And wait for your sal -- va -- tion, the end of earth -- ly toil.
	The watch -- ers on the moun -- tain pro -- claim the Bride -- groom near.
	Go meet Him as He com -- eth, with al -- le -- lu -- ias clear.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	O wise and ho -- ly vir -- gins, now raise your voi -- ces higher,
	Un -- til in songs of tri -- umph ye meet the an -- gel choir.
	The mar -- riage feast is wait -- ing, the gates wide o -- pen stand;
	Rise up, ye heirs of glo -- ry, the Bride -- groom is at hand.
}

sopWordsFour = \lyricmode
{
	Our hope and ex -- pec -- ta -- tion, O Je -- sus, now ap -- pear!
	A -- rise, Thou Sun so longed for, o'er this be -- night -- ed sphere!
	With hearts and hands up -- lift -- ed, we plead, O Lord, to see
	The day of earth’s re -- demp -- tion that brings us un -- to Thee.

}

sopWordsFive = \lyricmode
{
 	Ye saints, who here in pa -- tience your cross and suff -- 'rings bore,
	Shall live and reign for -- ev -- er, when sor -- row is no more.
	A -- round the throne of glo -- ry the Lamb ye shall be -- hold;
	In tri -- umph cast be -- fore Him your di -- a -- dems of gold!	
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
