\version "2.10.29"

Title = "O Wondrous Type, O Vision Fair"

Writer = "15th Century Latin Hymn"

Translator = "Trans. John Mason Neale, 1818-66"

Composer = "Scottish Hymn Melody"

Arranger = ""

Tune = "CAMERONIAN MIDNIGHT HYMN"

Meter = " L.M."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key aes \major
	\tempo 4 = 96
	\autoBeamOff	
}

soprano = {	
	\partial 4 ees'4 aes' c''8[ bes'] aes'4 ees' f' aes' bes' c''8[ des''] ees''4. bes'8 des''8[ c''] bes'[ aes'] c''4 bes' aes'
	ees' aes'4. ees'8 f'4 ees'8[ c'] bes4 c'8[ ees'] f'4 ees' f' aes' ees' des''8[ c''] c''4 bes' aes'\fermata \bar "|."
}

alto = {
	ees'4 ees' ees' c' ees' des' ees' ees' ees'8[ f'] ees'4. ees'8 des'[ ees'] f'4 ees'4. des'8 c'4
	bes8[ c'] des'4. ees'8 des'4 aes aes4. c'8 c'4 bes des' c'8[ bes] aes4 f'8[ c'] ees'4. des'8 c'4 
}

tenor = {
	ees4 c' g aes aes aes aes g aes bes4. bes8 aes4 aes aes g aes 
	g aes4. aes8 aes4 aes f ees aes ees aes ees ees8[ aes] bes[ aes] aes4 g aes\fermata
}

bass = {
	ees4 aes ees f c des c ees aes8[ f] g4. g8 f8[ ees] des4 ees ees aes,
	ees4 f4. c8 des4 c8[ aes,] des4 c8[ aes,] f,4 g, aes,4. bes,8 c4 des8[ f] ees4 ees aes,
}

sopWords = \lyricmode
{
        O won -- drous type! O vis -- ion fair
	of glo -- ry that the Church may share,
	which Christ up -- on the moun -- tain shows,
	where bright -- er than the sun he glows!
}

sopWordsTwo = \lyricmode
{
	The law and pro -- phets there have place,
	the cho -- sen wit -- nes -- ses of grace;
	the Fa -- ther's voice from out the cloud
	pro -- claims his on -- ly Son a -- loud.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	With shin -- ing face and bright ar -- ray,
	Christ deigns to man -- i -- fest to -- day
	what glo -- ry shall be theirs a -- bove
	who joy in God with per -- fect love.
}

sopWordsFour = \lyricmode
{
	And faith -- ful hearts are raised on high
	by this great vis -- ion's mys -- ter -- y;
	for which in joy -- ful strains we raise
	the voice of prayer, the hymns of praise.
}

sopWordsFive = \lyricmode
{
 	O Fa -- ther, with "th' e" -- ter -- nal Son,
	and Ho -- ly Spir -- it, ev -- er One,
	vouch -- safe to bring us by thy grace
	to see thy glo -- ry face to face.
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
