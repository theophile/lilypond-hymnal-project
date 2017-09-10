\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "On Jordan's Bank the Baptist's Cry"

Writer = "Charles Coffin, 1736"

Translator = "Trans. John Chandler, 1837"

Composer = "Musikalisches Handbuch (Hamburg), 1690"

Arranger = ""

Tune = "WINCHESTER NEW"

Meter = " L.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key bes \major
	\tempo 4 = 96	
}

soprano = {	
	\partial 4
	f'4 bes' f' g' g' f' ees' d' d' ees' d' c' f' f' e' f' % \bar "" \break
	f'4 bes' c'' d'' bes' ees'' d'' c'' d'' bes' g' f' bes' bes' a' bes'\fermata \bar "|."
}

alto = {
	d' f' d' ees' ees'8 (d') c'4 a bes bes bes bes c' d' d' c' c'
	f' f' ees' d' g'8 (f') ees'4 f' f' f' f' ees' f' d' g' f' f'
}

tenor = {
	bes4 bes bes bes ees f f f f g f8 (g) a4 a bes8 (a) g4 a
	a bes g8 (a) bes4 bes bes8 (a) bes4 a bes bes bes bes bes c' c' d'\fermata
}

bass = {
	bes,4 d bes, ees c8 (bes,) a,4 f, bes, bes, g, bes, f, d bes, c f
	f8 (ees) d4 c bes, ees8 (d) c4 d8 (ees) f4 bes, d ees d g ees f bes,
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        On Jor -- dan's bank the Bap -- tist's cry
	An -- noun -- ces that the Lord is nigh;
	Come, then, and heark -- en, for he brings
	Glad tid -- ings from the King of kings!
}

sopWordsTwo = \lyricmode
{
	Then cleansed be ev -- ery breast from sin;
	Make straight the way for God with -- in;
	Pre -- pare we in our hearts a home,
	Where such a migh -- ty Guest may come.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	For Thou art our Sal -- va -- tion, Lord,
	Our Ref -- uge, and our great Re -- ward.
	With -- out Thy grace our souls must fade
	And with -- er like a flower de -- cayed.
}

sopWordsFour = \lyricmode
{
	Stretch forth Thine hand, to heal our sore,
	And make us rise and fall no more;
	Once more up -- on Thy peo -- ple shine,
	And fill the world with love di -- vine.
}

sopWordsFive = \lyricmode
{
 	All praise, e -- ter -- nal Son, to Thee,
	Whose ad -- vent doth Thy peo -- ple free;
	Whom with the Fa -- ther we a -- dore
	And Ho -- ly Ghost for ev -- er -- more.
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
