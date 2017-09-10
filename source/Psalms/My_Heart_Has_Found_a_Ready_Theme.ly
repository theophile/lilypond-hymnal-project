\version "2.10.29"

Title = "My Heart Has Found a Ready Theme"

Writer = "Douglas Wilson, 2002"

Translator = "Based on Psalm 45"

Composer = "Heinrich Schütz, 1661"

Arranger = ""

Tune = "MEIN HERZ DICHTET EIN LIED MIT FLEIß"

Meter = " 8.7.8.7.4.4.4.4.7.8.7.6.6."

\include "header.ly"
\header { 	title = \Title 
		subtitle = "Psalm 45" }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	%\time 4/4
	\key ees \major
	\tempo 2 = 80	
}

soprano = {	
	\cadenzaOn
	f'1 c'2 des' c' f' e'4. (f'8 g'4) f' e'2.
	f'4 \bar "|" g'2 bes'~ bes'4 aes'2 g' f' (e'4) f'1 \bar "|"
	f'1 c'2 des' c' f' e'4. (f'8 g'4) f' e'2. 
	f'4 \bar "|" g'2 bes'~ bes'4 aes'2 g' f' (e'4) f'1 \bar "|"
	aes'2 aes'4 ees' f'2 \bar "|"
	bes'2 bes'4 fis' g'2 \bar "|"
	b'2 c''4 b' c''2 \bar "|"
	a'2 bes'4 a' bes'2 \bar "|"
	c'' bes'4 aes' bes' c'' aes'2 g' \bar "|"
	c''4 des''2 c''4 aes'2 bes'4 c''2 aes'4 g'2 \bar "|"
	ees''4 bes'2 ees''4 des''2 c'' bes' aes' \bar "|"
	c''4 aes'2 bes'4 g' a'2 ees' 
	g'4 \bar "|" bes'2 c''4 aes' g'2 f'1. \bar "|."
}

alto = {
	c'1 aes2 bes g aes c'4. (bes8 c'4) c' c'2.
	c'4 ees'2 f' ees' ees' c'1 c'
	c'1 aes2 bes g aes c'4. (bes8 c'4) c' c'2.
	c'4 ees'2 f' ees' ees' c'1 c'
	c'2 c'4 c' d'2
	bes d'4 d' d'2
	g'2 aes'4 g' e'2
	f' d'4 f' d'2
	ees' ees'4 c' ees' ees' c'2 c'
	ees'4 f'2 ees'4 c'2 bes4 ees'2 f'4 bes2
	c'4 ees'2 g'4 aes'2 ees' ees' ees'
	ees'4 f'2 f'4 ees' d'2 ees'
	ees'4 f'2 g'4 f' e'2 f'1.
}

tenor = {
	aes1 f2 f ees f g4. (f8 g4) aes g2.
	aes4 bes2 des' c' bes aes (g) f1
	aes1 f2 f ees f g4. (f8 g4) aes g2.
	aes4 bes2 des' c' bes aes (g) f1
	f2 f4 g bes2
	d'2 g4 a b2
	d' c'4 d' c'2
	c' bes4 c' bes2
	ees g4 f g g f2 e
	aes4 f2 g4 aes2 ees'4 c'2 d'4 ees'2
	ees4 g2 c'4 aes2 aes g aes
	aes4 c'2 a4 bes bes2 bes
	bes4 f (bes) g c' c'2 c'1.
}

bass = {
	f,1 f,2 bes, c des c4. (d8 e4) f c2.
	f4 ees2 bes, c ees aes,4. (bes,8 c2) f,1
	f,1 f,2 bes, c des c4. (d8 e4) f c2.
	f4 ees2 bes, c ees aes,4. (bes,8 c2) f,1
	f,2 f,4 c bes,2
	g, g,4 d g,2
	g aes4 g c2
	f g4 f bes,2
	aes, ees4 f ees c f2 c
	aes,4 des2 ees4 f2 g4 aes2 f4 ees2
	aes,4 ees2 c4 des2 aes, ees aes,
	aes4 f2 d4 ees bes,2 ees
	ees4 d2 e4 f c2 f,1.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        My heart has found a read -- y theme,
	A song of sweet com -- pos -- ing;
	My tongue a pen to praise __ the King
	With prais -- es nev -- er end -- ing.
	And You, the King, 
	Are far more fair
	Than all the sons
	Of mor -- tal men,
	And grace Your God is pour -- ing
	Up -- on Your mouth and on Your lips.
	You have been blessed for -- ev -- er;
	You are the King and blessed,
	For -- ev -- er blessed, a -- men.
}

sopWordsTwo = \lyricmode
{
	So gird Your sword up -- on __ Your thigh,
	O great Lord and ma -- jes -- tic!
	Ride forth in glo -- ry and __ in strength.
	And in Your glo -- ry rid -- ing,
	Be -- cause of truth, 
	Hu -- mil -- i -- ty,
	And right -- eous -- ness
	You con -- quer all.
	And in Yout rid -- ing rich -- ly
	Your right hand teach -- es awe -- some things.
	Your foes are pierced with ar -- rows,
	And un -- der You they fall,
	They fall be -- neath Your feet.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Your throne, O God, al -- mighty -- ty God, 
	Your throne is ev -- er -- last -- ing.
	The scep -- ter of Your right -- eous hand
	Sus -- tains Your right -- eous king -- dom.
	You love the right
	And hate all sin
	So God, Your God
	A -- noint -- ed You
	And poured the oil of glad -- ness
	Be -- yond the rank of all Your friends.
	The spic -- es of Your gar -- ments
	Are cas -- si -- a and myrhh
	And al -- oes deep and rich.
}

sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic	
	The spic -- es came from pal -- ac -- es
	Of i -- vory worked and fash -- ioned,
	And that a -- ro -- ma made __ You glad
	To greet the roy -- al wed -- ding.
	King's daugh -- ters were
	A -- mong the maids.
	At Your right hand
	Did stand the quees,
	The queen in gold of O -- phir.
	O daugh -- ter hear, in -- cline your ear;
	So now for -- get your peo -- ple,
	For -- get your fa -- ther's house
	And take your hus -- band's name.
}

sopWordsFive = \lyricmode
{
	Your beau -- ty shall the King __ de -- sire,
	He is your Lord and hus -- band,
	And you shall serve Him	all __ your days,
	With glad -- ness you shall wor -- ship.
	A gift from Tyre
	Her daugh -- ter brings,
	And so the rich
	En -- treat you now;
	They bring to you pe -- ti -- tions.
	A daugh -- ter to the King is here
	And gol -- den is her cloth -- ing,
	Em -- broid -- ered here with gold,
	Em -- broid -- ered now with care.
	
}

sopWordsSix = \lyricmode
{
 	And she is ush -- ered to __ the King
	In bright and glo -- tious rai -- ment.
	And all her brides -- maids fol -- low her
	With glad -- ness and re -- joic -- ing.
	And they shall come
	With -- in the gates,
	The pa -- lace gates,
	To see the King.
	So do not mourn or sor -- row,
	To fill the place your fa -- thers left
	Your chil -- dren shall be princ -- es,
	And I will mag -- ni -- fy
	Your name for -- ev -- er -- more.
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
