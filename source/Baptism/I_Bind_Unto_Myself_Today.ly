\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "I Bind Unto Myself Today"

Writer = "St. Patrick, A.D. 372-466"

Translator = "Trans. Cecil Frances Alexander, 1889"

Composer = "Verse 6:  DEIRDRE  8.8.8.8"

Arranger = "Traditional Irish Melodies"

Tune = "Verses 1-5, 7:  ST. PATRICK"

Meter = "L.M.D"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/2	
}

globalTwo = {
	\global
	\override Staff.TimeSignature #'stencil = ##f	
}

soprano = {	
	\global
	\key bes \major
	\tempo 2 = 90
	\partial 2
	\bar "|:"
	d'2 g'1 g'2 f'2 (d') f' bes' (d'') c''4 (bes') bes'2 (a') a' c'' (a') f' f' (a') c'' bes'1 bes'2 \phrasingSlurDashed a'2\( a'\) \bar "" \break
	d''2 g'2. (a'4) bes' (g') f'2 (d') bes bes'1 f'2 g' (a') bes'4 (c'') d''1 c''4 (d'') bes'2 (g') a' g'1 g'2 \phrasingSlurDashed g'2\( g'\)
	\bar ":|" \break
	\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\once \override Score.RehearsalMark #'self-alignment-X = #right \mark \markup { \italic \fontsize #-2 { "Verse 1 ends here" } }

	f'2 bes'1 bes'2 bes'1 c''4 (d'') c''1 b'2 \phrasingSlurDashed c''2\( c''\) d''2 g'1 g'2 f' (a') c'' bes'1 bes'2 a'1 \bar "" \break
	d'2 g'2. (a'4) bes' (g') f'2 (d') bes bes'1 f'2 \phrasingSlurDashed g'\( a'\) bes'4 (c'') d''1 c''4 (d'') bes'2 (g') a' g'1 g'2 g'1 \bar "||" 
	\key g \major
	\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\once \override Score.RehearsalMark #'self-alignment-X = #right \mark \markup { \italic \fontsize #-1 { "fine" } }
}

alto = {
	\global
	\key bes \major
	\tempo 2 = 90
	\partial 2
 	s2 <d' bes>1.~ <d' a>1. <f' d'>1 <ees' g'>2  <f' c'>1. <f' c'> <f' c'>1 <c' ees'>2 f'1 <<  {g'2} \\ {ees'4 d'} >> <c' f'>1
	<d' f'>2 ees'1 <bes ees'>2 <d' bes>1 bes2 <bes d'>1 bes2 bes d' d'4 f' <d' f'>1 f'2 f' ees' f' d'1 ees'2 d'1
	d'2 f'1 <ees' g'>2 f'1 ees'4 d'  ees'2 g' <d' g'>2 <ees' g'>1 <d' g'>2 ees'1. <c' f'>1 <c' f'>2 f'1 <ees' g'>2 <c' f'>1
	d'2 bes1. <bes d'>1 bes2 <bes d'>1 f'2 ees' f' d'4 f' f'1 f'2 d' ees' f' d'1 ees'2 d'1
}

tenor = {
	\global
	\key bes \major
	\tempo 2 = 90
 	\partial 2
	d2 <d g>1.~ <f d> f1 ees2 f1. <a f> a1 g2 f1 bes2 f1
	<bes f>2 <ees bes>1 g2 f1 <d f>2 <g d>1 f2 ees f g4 a <bes f>1 <a f>2 <f bes> <g bes> <a d'> <bes g>1 <g c'>2 <g bes>1
	bes2 d' bes bes bes1 a4 bes g1 g2 g1 <bes g>2 <bes g>1. <a f> <f bes>1 bes2 f1
	d2 <ees g>1. f1 d2 <g d>1 bes2 bes d' bes4 a <bes f>1 <f a>2 <g bes> <g bes> <d a d'> <bes g>1 <g c'>2 <g bes>1
}

bass = {
	\global
	\key bes \major
	\tempo 2 = 90
 	\partial 2
	d2 g, bes, g, d,1 d2 bes,1 ees2 f1. f, f1 c2 d1 ees2 f1 bes,2 ees ees, g, bes,1 bes,2 g,1 d2 ees d g4 f bes,1 f,2 d, ees, d, g,1 c2 g,1
	bes,2 bes, d ees d1 c4 bes, c2 ees g c1 g,2 ees,1. f, d,1 ees,2 f,1
	d,2 ees,1. bes,1 bes,4 a, g,1 d2 ees d g4 f bes,1 f4 d g,2 ees, d, <g, d>1 c2 <g, d>1
}

sixSoprano = {
	\partial 2
	\key g \major
	\tempo 2 = 68
	\bar "|:"
	g'4. e'8 g'2 d' e'4. a'8 g'2 g' g'4. g'8 c''2 b' a'4. g'8 b'2 a' \bar "" \break
	b'4. a'8 c''2 b' b'4. a'8 a'2 g' g'4. e'8 g'2 g' g'4. b'8 a'2 g' \bar ":|"
	\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\once \override Score.RehearsalMark #'self-alignment-X = #right \mark \markup { \italic \fontsize #-2 { "D.C. al fine" } }
}

sixAlto = {
	\key g \major
	d'4. c'8 d'2 a c'4. c'8 e'2 e' g'4. fis'8 e'2 d' c'4. e'8 d'4 (e') fis'2
	g'4. fis'8 g'2 g' fis'4. fis'8 e'2 e' d'4. e'8 d'2 e' e'4. d'8 e'4 (d') b2
}

sixTenor = {
	\key g \major
	b4. c'8 g2 fis g4. a8 b2 b g4. g8 g2 g c'4. b8 g2 d'
	d'4. d'8 e'2 e' d'4. d8 c'2 c' g4. g8 g2 g g4. g8 g4 (fis) g2
}

sixBass = {
	\key g \major
	g,4. c8 b,4 (c) d2 c4. a,8 e2 e e4. d8 c2 g, a,4. e8 b,4 (c) d2
	g4. d8 c2 e b,4. d8 a,2 c b,4. c8 b,2 e4 (d) c4. g,8 c4 (d) g,2
}

sopWords = \lyricmode
{
	\set stanza = "1. "
	I bind un -- to my -- self to -- day
	The strong Name of the Tri -- ni -- ty, __ \skip 1
	By in -- vo -- ca -- tion of the same
	The Three in One and One in Three.
}
sopWordsTwo = \lyricmode
{
	\set stanza = "2. "
	I bind this day to me for -- "ev-er"
	By power of faith, Christ’s in -- car -- na -- tion;
	His bap -- tism in the Jor -- dan "ri-ver,"
	His death on Cross for my sal -- va -- tion;
	\set stanza = "2. "
	His burst -- ing from the spic -- èd tomb, __ \skip 1
	His ri -- ding up the heav'n -- ly way,
	His com -- ing at the day of doom __ \skip 1
	I bind un -- to my -- self to -- day.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	\set stanza = "3. "
	I bind un -- to my -- self the power
	Of the great love of che -- ru -- bim; __ \skip 1
	The sweet 'Well done' in judg -- ment hour,
	The ser -- vice of the ser -- a -- phim, __ \skip 1
	\set stanza = "3. "
	Con -- fess -- ors' faith, A -- pos -- tles' word, __ \skip 1
	The Pa -- triarchs' prayers, the pro -- phets' scrolls,
	All good deeds done un -- to the Lord __ \skip 1
	And pu -- ri -- ty of vir -- gin souls.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	\set stanza = "4. "
 	I bind un -- to my -- self to -- day
	The vir -- tues of the star lit heav'n, __ \skip 1
	The glo -- rious sun's life giv -- ing ray,
	The white -- ness of the moon at even, __ \skip 1
	\set stanza = "4. "
	The flash -- ing of the light -- ning free, __ \skip 1
	The whirl -- ing wind's tem -- pes -- tuous shocks,
	The sta -- ble earth, the deep salt sea __ \skip 1
	A -- round the old e -- ter -- nal rocks.
}
sopWordsFive = \lyricmode
{
	\set stanza = "5. "
 	I bind un -- to my -- self to -- day
	The power of God to hold and lead, __ \skip 1
	His eye to watch, His might to stay,
	His ear to heark -- en to my need. __ \skip 1
	\set stanza = "5. "
	The wis -- dom of my God to teach, __ \skip 1
	His hand to guide, His shield to ward;
	The word of God to give me speech, __ \skip 1
	His heav'n -- ly host to be my "guard. †"
}
sopWordsSixOne = \lyricmode
{
	\set stanza = "† 6. "
	Christ be with me, Christ with -- in me,
	Christ be -- hind me, Christ be -- fore me,
	Christ be -- side me, Christ to win me,
	Christ to com -- fort and re -- store me.
}
sopWordsSixTwo = \lyricmode
{
	Christ be -- neath me, Christ a -- bove me,
	Christ in qui -- et, Christ in dan -- ger,
	Christ in hearts of all that love me,
	Christ in mouth of friend and stran -- ger.
}
sopWordsSeven = \lyricmode
{
	\set stanza = "7. "
 	I bind un -- to my -- self the Name,
	The strong Name of the Tri -- ni -- ty, __ \skip 1
	By in -- vo -- ca -- tion of the same,
	The Three in One and One in Three. __ \skip 1
	\set stanza = "7. "
	By Whom all na -- ture hath cre -- a -- tion,
	E -- ter -- nal Fa -- ther, Spir -- it, Word:
	Praise to the Lord of my sal -- va -- tion,
	Sal -- va -- tion is of Christ the Lord.
}

musicScore = <<
	\new ChordNames \chordmode
                {
                \set majorSevenSymbol = "maj7"
 
                }
    \new Voice = "mel" { \soprano }
	\new Lyrics = sopranos { s1 }
        \new Lyrics = sopranosTwo { s1 }
        \new Lyrics = sopranosThree { s1 }
        \new Lyrics = sopranosFour { s1 }
        \new Lyrics = sopranosFive { s1 }
        %\new Lyrics = sopranosSix { s1 }
        \new Lyrics = sopranosSeven { s1 }
        %\new Lyrics = sopranosEight { s1 }

    	\new Lyrics \lyricsto mel \sopWords    
    	\new Lyrics \lyricsto mel \sopWordsTwo
	\new Lyrics \lyricsto mel \sopWordsThree
	\new Lyrics \lyricsto mel \sopWordsFour
	\new Lyrics \lyricsto mel \sopWordsFive
	\new Lyrics \lyricsto mel \sopWordsSeven


    \new PianoStaff <<
      \new Staff = "upper" <<
		\clef treble
		\context Voice = "one" { \global \voiceOne  \soprano }
      		\context Voice = "two" { \global \voiceTwo \alto } >>
			
      \new Staff = "lower" <<
      		\clef bass
      		\context Voice = "one" { \global \voiceThree \tenor }
      		\context Voice = "two" { \global \voiceFour \bass } >>
    >>
  >>

\include "standard-layout.ly"

musicScore = \context StaffGroup <<
   \new ChordNames \chordmode { \set majorSevenSymbol = "maj7"
	
		}
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \globalTwo \voiceOne \sixSoprano }
      \context Voice = "two" { \globalTwo \voiceTwo \sixAlto }
    >>

	\lyricsto "one" \new Lyrics \sopWordsSixOne
	\lyricsto "one" \new Lyrics \sopWordsSixTwo


    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \globalTwo \voiceThree \sixTenor }
      \context Voice = "two" { \globalTwo \voiceFour \sixBass }
    >>
  >>
	
\include "standard-layout.ly"
\include "tag.ly"
