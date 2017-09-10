\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "My Soul, Now Bless Thy Maker"

Writer = "Johann Gramann, 1525"

Translator = "Based on Psalm 103; Trans. Catherine Winkworth, 1863"

Composer = "Juhann Kugelmann, 1540"

Arranger = "Harm. Heinrich Schütz, 1661"

Tune = "NUN LOB, MEIN SEEL"

Meter = " 7.8.7.8.7.6.7.6.7.6.7.6."

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 103" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 6/4
	\key aes \major
	\tempo 4 = 138	
}

soprano = {	
	\partial 4
	aes'4 aes'2 g'4 f'2 ees'4 aes'2 (bes'4) c''2 c''4 c''2 c''4 c''2 bes'4 aes'4 bes'2 aes'2\fermata \bar ""
	aes'4 aes'2 g'4 f'2 ees'4 aes'2 (bes'4) c''2 c''4 c''2 c''4 c''2 bes'4 aes'4 bes'2 aes'2\fermata \bar ""
	aes'4 aes'2 c''4 bes'2 c''4 aes'2 (g'4) f'2 aes'4 bes'2 g'4 aes' f'2 ees'2.~ ees'2 \bar ""
	ees'4 aes'2 aes'4 bes'2 bes'4 c''2. aes'2 c''4 des''2 des''4 c''2 c''4 bes'2.~ bes'2 \bar ""
	bes'4 c''2 c''4 des''2 des''4 ees''2. aes'2 c''4 bes'2 g'4 aes' f'2 ees'2.~ees'2 \bar ""
	ees'4 aes'2 g'4 f'2 ees'4 bes'2. bes'2 c''4 des''4 (c'') bes' aes'2 g'4 aes'2 (bes'4 c''2) c''4 des''4 (c'') bes'4 aes'2 g'4 aes'2.~ aes'2 \bar "|."
	
}

alto = {
	\partial 4
	ees'4 ees'2 ees'4 c'2 c'4 c'2 (ees'4) ees'2 aes'4 aes'2 aes'4 aes'2 g'4 f'2 g'4 ees'2\fermata
	ees'4 ees'2 ees'4 c'2 c'4 c'2 (ees'4) ees'2 aes'4 aes'2 aes'4 aes'2 g'4 f'2 g'4 ees'2\fermata
	ees'4 f'2 aes'4 g'2 g'4 f'2 (e'4) f'2 f'4 f'2 ees'4 ees' d'2 ees'2.~ ees'2
	bes4 des'2 ees'4 des'2 bes4 ees'2. des'2 ees'4 f'2 ges'4 ges' f'2 f'2.~ f'2
	ees'4 es'2 f'4 f' (ges') aes' ges'2. f'2 aes'4 f'2 ees'4 ees' d'2 ees'2.~ ees'2
	c'4 ees'2 c'4 aes2 c'4 f'2. g'2 aes'4 aes'2 f'4 ees'4 (f') ees'4 c'2 (bes4 ees'2) aes'4 aes'2 f'4 ees' (f') ees' ees'2.~ ees'2
}

tenor = {
	\partial 4
	c'4 c'2 bes4 aes2 g4 f (aes g) aes2 ees'4 ees'2 ees'4 ees'2 ees'4 c' (des') bes c'2\fermata
	c'4 c'2 bes4 aes2 g4 f (aes g) aes2 ees'4 ees'2 ees'4 ees'2 ees'4 c' (des') bes c'2\fermata
	c'4 des'2 ees'4 ees'2 ees'4 c'2. c'2 c'4 f2 bes4 c' bes2 bes2.~ bes2
	g4 f2 ees4 f2 g4 aes4. (g8 ees4) f2 ees4 des (bes,) bes bes2 a4 bes2.~ bes2
	g4 aes2 aes4 aes (bes) des' des'4. (c'16 bes c'4) des'2 ees'4 des'2 c'4 c' bes2 bes2.~ bes2
	aes4 c'2 ees'4 des'2 ees'4 d'2. ees'2 ees'4 f' (ees') des' c' bes2 aes2 (ees'4 c'2) ees'4 f' (ees') des' c' bes2 c'2.~ c'2
}

bass = {
	\partial 4
	aes4 aes2 ees4 f2 c4 f2 (ees4) aes2 aes4 aes2 aes4 aes2 ees4 f (des) ees aes,2\fermata
	aes4 aes2 ees4 f2 c4 f2 (ees4) aes2 aes4 aes2 aes4 aes2 ees4 f (des) ees aes,2\fermata
	aes,4 des2 aes,4 ees2 c4 f,8 (g, aes, bes, c4) f,2 f4 d2 ees4 aes, bes,2 <ees, ees>2.~ <ees, ees>2
	ees4 des2 c4 bes,2 ees4 aes,2. des2 c4 bes,4 (bes) ges ees f2 bes,2.~ bes,2
	ees4 aes2 f4 des (ges) f ees2. des2 aes,4 bes,2 c4 aes, bes,2 <ees, ees>2.~ <ees, ees>2
	aes,4 aes,2 c4 des2 aes,4 bes,2. ees2 aes,4 des (aes,) bes, c (des) ees f2 (g4 aes2) aes,4 des (aes,) bes, c (des) ees aes,2.~ aes,2
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
	My soul, now bless thy Ma -- ker!
        Let all with -- in me bless His name
        Who mak -- eth thee par -- tak -- er
        Of mer -- cies more than thou dar'st claim.
        For -- get Him not whose meek -- ness
        Still bears with all thy sin,
        Who heal -- eth all thy weak -- ness,
        Re -- news thy life with -- in;
        Whose grace and care are end -- less
        And saved thee through the past;
        Who leaves no suf -- f'rer friend -- less,
        But rights the wronged at last, __ 
	But rights the wronged at last.
}
sopWordsTwo = \lyricmode
{
       	He shows to man His treas -- ure
        Of judg -- ment, truth, and right -- eous -- ness,
        His love be -- yond all meas -- ure,
        His yearn -- ing pi -- ty o'er dis -- tress,
        Nor treats us as we mer -- it,
        But lays His an -- ger by,
        The hum -- ble, con -- trite spir -- it
        Finds His com -- pas -- sion nigh;
        And high as heav'n a -- bove us,
        As break from close of day,
        So far, since He doth love us,
        He puts our sins a -- way, __ 
	He puts our sins a -- way.
}
sopWordsThree = \lyricmode
{
        For as a ten -- der fa -- ther
        Hath pi -- ty on his child -- ren here,
        He in His arms will ga -- ther
        All who are His in child -- like fear.
        He knows how frail our pow -- ers
        Who but from dust are made;
        We flour -- ish like the flow -- ers,
        And ev -- en so we fade;
        The wind but o'er them pass -- es,
        And all their bloom is "o'er,—"
        We with -- er like the grass -- es,
        Our place knows us no more, __ 
	Our place knows us no more.
}
sopWordsFour = \lyricmode
{
	God's grace a -- lone en -- dur -- eth,
        And child -- ren's child -- ren yet shall prove
        How He with strength as -- sur -- eth
        The hearts of all that seek His love.
        In heaven is fixed His dwell -- ing,
        His rule is o -- ver all;
        An -- gels, in might ex -- cell -- ing,
        Bright hosts, be -- fore Him fall.
        Praise Him, who ev -- er reign -- eth,
        All ye who hear His Word,
        Nor our poor hymns dis -- dain -- "eth—"
        My soul, oh, bless the Lord; __ 
	My soul, oh, bless the Lord!
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
sopWordsEight= \lyricmode
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
