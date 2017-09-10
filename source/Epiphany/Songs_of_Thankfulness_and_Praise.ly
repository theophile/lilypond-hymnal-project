\version "2.10.29"

\paper
{
	page-count = 1
	%annotate-spacing = ##t
}

Title = "Songs of Thankfulness and Praise"

Writer = "Christopher Wordsworth, 1862"

Translator = ""

Composer = "Jakob Hintze, 1678"

Arranger = "Harm. J.S. Bach, 1685-1750"

Tune = "SALZBURG"

Meter = " 7.7.7.7 D"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key d \major
	\tempo 4 = 96	
}

soprano = {	
	a'4 d'' a' b' a'4. g'8 fis'2 a'4 a' g' fis' e' e' d'2
	a'4 d'' a' b' a'4. g'8 fis'2 a'4 a' g' fis' e' e' d'2
	e'4 e' fis'8 (gis') a'4 a' gis' a'2 b'4. cis''8 d''4 d'' cis'' cis'' b'2
	fis'4 fis' b' a' a' gis' a'2 b'4 a' g' fis' e' e' d'2 \bar "|."
}

alto = {
	d'4 d' d' d' d' cis' d'2 d'4 d'8 (cis') b (cis') d'4 d' cis' d'2
	d'4 d' d' d' d' cis' d'2 d'4 d'8 (cis') b (cis') d'4 d' cis' d'2
	cis'4 cis' d' cis' fis' e'8 (d') cis'2 e'8 (fis') g'4 fis' fis' fis' fis'8 (e') d'2
	d'4 d' d' cis' d' d' cis'2 d'4 d'8 (cis') b (cis') d'4 d' cis' d'2 
}

tenor = {
	fis4 fis8 (g) a4 g8 (fis) e (d) e4 d2 fis4 fis g a b a fis2
	fis4 fis8 (g) a4 g8 (fis) e (d) e4 d2 fis4 fis g a b a8 (g) fis2
	a4 a a a b b a2 g4. a8 b4 b b ais b2
	a4 a g8 (fis) e4 d8 (fis) e (d) e2 g4 fis g a b a8 (g) fis2
}

bass = {
	d4 b, fis, g, a, a, d2 d4 d e fis g a d2
	d4 b, fis, g, a, a, d2 d4 d e fis g a d2
	a,4 a, d fis8 (e) d4 e a,2 e4 e b,8 (cis) d (e) fis4 fis b,2
	d4 d g, a, b, b, a,2 g,4 d e fis g a d2
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        Songs of thank -- ful -- ness and praise,
	Je -- sus, Lord, to Thee we raise,
	man -- i -- fest -- ed by the star 
	to the sa -- ges from a -- far;
	branch of roy -- al Da -- vid's stem
	in Thy birth at Beth -- le -- hem;
	an -- thems be to Thee ad -- dressed,
	God in man made man -- i -- fest.
}

sopWordsTwo = \lyricmode
{
	Man -- i -- fest at Jor -- dan's stream,
	Pro -- phet, Priest and King su -- preme;
	and at Ca -- na, wed -- ding guest,
	in Thy God -- head man -- i -- fest;
	man -- i -- fest in pow'r di -- vine,
	chang -- ing wa -- ter in -- to wine;
	an -- thems be to Thee ad -- dressed,
	God in man made man -- i -- fest.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Man -- i -- fest in mak -- ing whole
	pal -- sied limbs and faint -- ing soul;
	man -- i -- fest in val -- iant fight,
	quell -- ing all the dev -- il's might;
	man -- i -- fest in gra -- cious will,
	ev -- er bring -- ing good from ill;
	an -- thems be to Thee ad -- dressed,
	God in man made man -- i -- fest.
}

sopWordsFour = \lyricmode
{
	Sun and moon shall dark -- ened be,
	stars shall fall, the heav'ns shall flee;
	Christ will then like light -- ning shine,
	all will see His glo -- rious sign;
	all will then the trum -- pet hear,
	all will see the Judge ap -- pear;
	Thou by all wilt be con -- fessed,
	God in man made man -- i -- fest.
}

sopWordsFive = \lyricmode
{
 	Grant us grace to see Thee, Lord,
	mir -- rored in Thy ho -- ly Word;
	may we im -- i -- tate Thee now,
	and be pure, as pure art Thou;
	that we like to Thee may be
	at Thy great E -- pi -- pha -- ny;
	and may praise Thee, ev -- er blest,
	God in man made man -- i -- fest.
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
