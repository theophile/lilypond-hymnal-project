\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "Lo! He Comes with Clouds Descending"

Writer = "John Cennick, 1752"

Translator = "Adapt. Charles Wesley, 1758"

Composer = "John Francis Wade, 1751"

Arranger = ""

Tune = "HOLYWOOD"

Meter = " 8.7.8.7.8.7."

\include "header.ly"

global = {
	%\override Staff.TimeSignature #'style = #'()
	%\override Staff.TimeSignature #'stencil = ##f
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key d \major
    	\time 4/4
	\tempo 4 = 120	
}

soprano = {
	d'4 e' fis' d' e'4 fis' g' fis'  b' a' g' fis'  e' e' d'2 \break
	d''4 cis'' d'' a'  b' a' g' fis'  b' cis'' d'' cis'' b' b' a'2 \break
	a'4 a' fis' d' e' fis' g' fis' a' fis' b' a'8 (g') fis'4 e' d'2 \bar "|."
}

alto = {
	a4 cis' d' d' a d' cis' d' d' d' d'8 (cis') d'4 d' cis' d'2
	fis'4 g' a' fis' g'4 d' cis' d' fis'4. e'8 d'4 e' e'4. d'8 cis'2
	d'4 e' d' d' cis' d' d'8 (cis') d'4 d'4. cis'8 b8 (cis') d'4 d' cis' d'2
}

tenor = {
	fis4 a a a a a a a g a b8 (g) a4 a4. g8 fis2
	a4 a a d' d' a a a d' cis' b a a gis a2
	a4 a a a a a g a a a g a8 (b) a4. g8 fis2
}

bass = {
	d4 a, d fis cis d e d g fis e d a, a, d2
	d4 e fis d g fis e d b, ais, b, cis8 (d) e4 e, a,2
	fis4 cis d fis g fis e d fis d g fis8 (g) a4 a, d2
}

sopWords = \lyricmode
{
        Lo! He comes with clouds de -- scend -- ing, once for our sal -- va -- tion slain; 
	Thou -- sand, thou -- sand saints at -- tend -- ing swell the tri -- umph of His train. 
	Al -- le -- lu -- ia! Al -- le -- lu -- ia! 
	God ap -- pears on earth to reign.
}

sopWordsTwo = \lyricmode
{
	Ev -- 'ry eye shall now be -- hold Him, robed in dread -- ful maj -- es -- ty; 
	those who set at naught and sold Him, pierced, and nailed Him to the tree, 
	deep -- ly wail -- ing, deep -- ly wail -- ing, 
	shall the true Mes -- ia -- ah see.
}

sopWordsThree = \lyricmode
{
 	Those dear to -- kens of His pas -- sion still His daz -- zling bo -- dy bears; 
	cause of end -- less ex -- ul -- ta -- tion to His ran -- somed wor -- ship -- pers: 
	With what rap -- ture, with what rap -- ture 
	gaze we on those glo -- rious scars!
}

sopWordsFour = \lyricmode
{
 	Yea, a -- men! Let all a -- dore Thee, high on Thine e -- ter -- nal throne; 
	Sa -- vior take the pow'r and glo -- ry; claim the king -- dom for Thine own: 
	Al -- le -- lu -- ia! Al -- le -- lu -- ia! 
	Thou shalt reign and Thou a -- lone.
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
