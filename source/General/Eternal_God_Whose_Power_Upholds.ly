\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "Eternal God Whose Power Upholds"

Writer = "Hen­ry H. Tweedy, 1928"

Translator = ""

Composer = "Traditional English Melody"

Arranger = "Arr. Ralph Vaughn Williams, 1906"

Tune = "FOREST GREEN"

Meter = " 8.6.8.6.D"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key g \major
    	\time 4/4
	\tempo 4 = 96
	\autoBeamOff
}

halfBar = {
 \once \override Score.BarLine #'stencil = #ly:breathing-sign::divisio-maior
}

soprano = \relative c' {
    \partial 4 d4 |
    \override Staff.TimeSignature #'stencil = ##f 
    g4 g4 g4 a4 |
    b8[ a8] b8[ c8] d4 b4 |
    c4 b8[ g8] a4 a4 |
    \time 3/4
    g2. \halfBar |
    \time 1/4
    d4 |
    \time 4/4
    g4 g4 g4 a4 |
    b8[ a8] b8[ c8] d4 b4 |
    c4 b8[ g8] a4 a4 |
    \time 3/4
    g2. \halfBar | \break
    \time 1/4
    g8[ b8] |
    \time 4/4
    d4. e8 d8[ c8] b8[ a8] |
    g8[ a8] b8[ c8] d4 d,4 |
    g4 b4 a4 g4 |
    \time 3/4
    d2. \halfBar | \break
    \time 1/4
    d4 |
    \time 4/4
    g4 g4 g4 a4 |
    b8[ a8] b8[ c8] d4 b4 |
    c4 b8[ g8] a4 a4 |
    \time 3/4
    g2. \bar "|." |
}

alto = \relative c' {
    \partial 4 d4 |
    d4 e4 d4 e8[ fis8] |
    g4 g4 fis4 e4 |
    e4 g4 g4 fis4 |
    g2. |
    d4 |
    d4 e4 d4 e8[ fis8] | 
    g4 g4 fis4 e4 |
    e4 g4 g4 fis4 |
    g2. |
    g4 |
    fis4. e8 fis4 d4 |
    d4 g4 fis4 d4 |
    d4 d4 c4 b8[ c8] |
    d2. |
    d4 |
    d4 e4 d4 e8[ fis8] |
    g4 g4 fis4 e4 |
    e4 g4 g4 fis4 |
    g2. |
}

tenor = \relative c' {
    \partial 4 a4 |
    \override Staff.TimeSignature #'stencil = ##f 
    b4 c4  d4 c4 |
    d4 g,4 a4 g4 |
    c4 d4 e4 d8[ c8] |
    b2. \halfBar |
    a4 |
    b4 c4  d4 c4 |
    d4 g,4 a4 g4 |
    c4 d4 e4 d8[ c8] |
    b2. \halfBar |
    b4 b4. g8 d'4 d8[ c8] |
    b4 g4 a4 fis4 |
    g4 g4 e8[ fis8] g4 |
    fis2. \halfBar |
    g8[ a8] |
    b4 c4  d4 c4 |
    d4 g,4 a4 g4 |
    d'8[ b8] d4 d4 d8[ c8] |
    b2. \bar "|." |
}

bass = \relative c  {
    \partial 4 fis4 |
    g4 c4 b4 a4 |
    g4 e4 d4 e4 |
    a,4 b4 c4 d4 |
    g2. |
    fis4 |
    g4 c4 b4 a4 |
    g4 e4 d4 e4 |
    a,4 b4 c4 d4 |
    g2. |
    e4 |
    b4. c8 d4 e8[ fis8] |
    g4 e4 d4 d8[ c8] |
    b4 g4 c4 e4 |
    d2. |
    e8[ fis8] |
    g4 c4 b4 a4 |
    g4 e4 d4 e4 |
    a,4 b8[ e8] d4 d4 |
    g2. |
}



sopWords = \lyricmode
{
	E -- ter -- nal God, whose power up -- holds
    	Both flow'r and fla -- ming star,
    	To Whom there is no here nor there,
    	No time, no near nor far,
    	No a -- lien race, no for -- eign shore,
    	No child un -- sought, un -- known:
    	O send us forth, Thy proph -- ets true,
    	To make all lands Thine own!
}
sopWordsTwo = \lyricmode
{
        O God of love, Whose Spi -- rit wakes
    	In ev -- 'ry hu -- man breast,
    	Whom love, and love a -- lone, can know,
    	In Whom all hearts find rest:
    	Help us to spread Thy gra -- cious reign
    	Till greed and hate shall cease,
    	And kind -- ness dwell in hu -- man hearts,
    	And all the earth find peace!
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	O God of truth, whom sci -- ence seeks
    	And rev -- erent souls a -- dore,
    	Who light -- est ev -- 'ry ear -- nest mind
    	Of ev -- 'ry clime and shore:
    	Dis -- pel the gloom of er -- ror's night,
    	Of ig -- no -- rance and fear,
    	Un -- til true wis -- dom from a -- bove
    	Shall make life's path -- way clear!
}
sopWordsFour = \lyricmode
{
	O God of beau -- ty, oft re -- vealed
    	In dreams of hu -- man art,
    	In speech that flows to mel -- o -- dy,
    	In ho -- li -- ness of heart:
    	Teach us to ban all ug -- li -- ness
    	That blinds our eyes to Thee,
    	Till all shall know the love -- li -- ness
    	Of lives made fair and free!
}
sopWordsFive = \lyricmode
{
 	O God of righ -- teous -- ness and grace,
    	Seen in the Christ, Thy Son,
    	Whose life and death re -- veal Thy face,
    	By whom Thy will was done:
    	In -- spire Thy her -- alds of good news
    	To live Thy life di -- vine,
    	Till Christ is formed in all man -- kind
    	And ev -- 'ry land is Thine! A -- men.
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
