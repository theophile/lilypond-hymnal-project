\version "2.10.29"

Title = "For All The Saints"

Writer = "William Walsham How, 1864"

Translator = ""

Composer = "Ralph Vaughn Williams, 1906"

Arranger = ""

Tune = "SINE NOMINE"

Meter = "10.10.10.4"

\include "header.ly"

global =
{
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0		
	\tempo 4 = 100
}

sopWords = \lyricmode
{
	%\override Score . LyricText #'font-size = #-1
	%\override Score . LyricHyphen #'minimum-distance = #1
	%\override Score . LyricSpace #'minimum-distance = #0.8
	%\override Score . LyricText #'self-alignment-X = #-1
	\set stanza = "1. "
	%\set vocalName = "Men/Women/Unison/SATB"
	For all the saints, who from their la -- bors rest,
	Who Thee __ \skip 4 by faith be -- fore the world con -- fessed,
	Thy Name, O __ \skip 4 Je -- sus, be for -- ev -- er blessed.
	Al -- le -- lu -- ia, Al -- le -- lu -- ia!
}
sopWordsTwo = \lyricmode
{
	\set stanza = "2. "
	Thou wast their Rock, their For -- tress and their Might; __ \skip 4
	Thou, Lord, their Cap -- tain in the well fought fight; __ \skip 4
	Thou, in the dark -- ness drear, their one true Light.
}
sopWordsThree = \lyricmode
{
	\set stanza = "3. "
	\override LyricText #'font-shape = #'italic
	O may Thy sol -- diers, faith -- ful, true and bold, __ \skip 4
	Fight as the saints who no -- bly fought of old,
	And win with __ \skip 4 them the vic -- tor’s crown of gold.
}
sopWordsFour = \lyricmode
{
	\set stanza = "4. "
	%\override LyricText #'font-shape = #'italic
	O blest com -- mun -- ion, fel -- low -- ship di -- vine!
	We fee -- bly strug -- gle, they in glo -- ry shine;
	Yet all are __ \skip 8 one in Thee, for all are Thine.
}
sopWordsFive = \lyricmode
{
	\set stanza = "5. "
	%\override LyricText #'font-shape = #'italic
	And when the strife is fierce, the war -- fare long,
	Steals on the ear the dis -- tant tri -- umph song,
	And hearts are __ \skip 8 brave, a -- gain, and arms are strong.
	Al -- le -- lu -- ia, Al -- le -- lu -- ia!
}
sopWordsSix = \lyricmode
{
	\set stanza = "6. "
	The gol -- den eve -- ning bright -- ens in the west;
	Soon, soon to faith -- ful war -- riors comes their rest; __ \skip 4
	Sweet is the calm of pa -- ra -- dise the blessed.
}
sopWordsSeven = \lyricmode
{
	\set stanza = "7. "
	%\override LyricText #'font-shape = #'italic
	But lo! there breaks a yet more glo -- rious day;
	The saints __ \skip 4 tri -- um -- phant rise in bright ar -- ray;
	The King of __ \skip 4 glo -- ry pass -- es on His way.
}
sopWordsEight = \lyricmode
{
        \set stanza = "8. " 
	%\override LyricText #'font-shape = #'italic
	From earth’s wide bounds, from o -- cean’s far -- thest coast,
	Through gates __ \skip 4 of pearl streams in the count -- less host, __ \skip 4
	Sing -- ing to Fa -- ther, Son and Ho -- ly Ghost:
}


altoWords = \lyricmode
{

}
tenorWords = \lyricmode
{

}
bassWords = \lyricmode
{

}


melody = {
  \clef treble
  \key g \major
  \time 4/4
  %\tempo 4 = 120

	r4^"Unison" d'' b' a' g'2. d'4 e' g' a' d' \phrasingSlurDashed b'2.\( b'4\) \phrasingSlurDashed a'2\( a'4\) g' fis'2 fis' g'4 a' fis' e' \phrasingSlurDashed d'2.\( d'4\) g'2 \phrasingSlurDashed g'4\( g'\) d''2. d''4 c'' d'' c''8 (b') a' (g') a'2 \bar "||" \break
	d''2 ( e''4) d''8 (c'') d''2 g'2. a'8 ( b' c''4 ) b' a'2 g'1 \bar "||"
  
}


upper = {
  \clef treble
  \key g \major
  \time 4/4
	r4 <d' g' b' d''> <e' g' b'> <c' fis' a'> << { b2 c'4 } \override Stem #'direction = #DOWN  \\ { <e' g'>2. } >> <g d'>4 <g e'> <d' g'>  <a' c' e'> d' <d' g' b'>2.~ <d' g' b'>4
	<cis' e' a'>2 <a' d'>4 <e' g'> <a e' fis'>2 <a d' fis'> <g d' g'>4 <a d' a'> <b d' fis'> <g cis' e'> <fis a d'>2.~ <fis a d'>4
	<< {d'4 e' d' c'} \\ {<g' g>2 <g' g>} >> <d' g' b' d''>2. <g' b' d''>4 <c' g' c''> <a' d''> << {c''8 b' a' g'} \\ {<d' g'>4 d'} >> <d' fis' a'>2
	<< {d''2} \\ {<d' g'>4 <f' b'>} >> << { e''4 d''8 c'' <d'' g'>2 g'2. a'8 b' c''4 b' a'2 } \\ { <g' e'>2 d'4 e'8 fis' g'4 b e' <d' g'>~ <e' g'> <g' d'> <g' d'> <c' fis'> }>> <g' d' b>1 
 
}

lower = {
  \clef bass
  \key g \major
  \time 4/4
  
  	g,4 b, c d e d c b, << {c4 b, a,} \override Stem #'direction = #DOWN \\ {g2.} \override Stem #'direction = #UP >> <d fis>4 g e fis g a a, b, cis d e d cis b, fis, g, a, d e d c b, c b, a, g, a, g, fis, e, fis, g, b, d c 
	<< { b,4 g, c a, b, c8 d e4 d c b, } \override Stem #'direction = #DOWN  \\ { g2 g g g g } \override Stem #'direction = #UP  >> a,4 b,8 c d4 d, g,1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	g4 g4/b e4:m/c d4:7 e2:m c4 g4:/b c4 g4:/b a4:m d4 g1 a2 d4:/b a4:/cis d2:sus2 d2 g4:/b d4:/fis b4:m/g a4:7 d1 
	g4:/b c4 g4:/b a4:m7 g1 c4:/e d4:/fis g4 g4:/b d4 d4:/c g4:/b g4:7 c4 c4:/a g2:/b e2:m c4 g4:/b a4:m g4:/b d4:sus d4:7 g1
}

musicScore = <<
   \include "insertchords.ly"
    \new Voice = "mel" { \melody }
	\new Lyrics = sopranos { s1 }
        \new Lyrics = sopranosTwo { s1 }
        \new Lyrics = sopranosThree { s1 }
        %\new Lyrics = sopranosFour { s1 }
        %\new Lyrics = sopranosFive { s1 }
        %\new Lyrics = sopranosSix { s1 }
        \new Lyrics = sopranosSeven { s1 }
        \new Lyrics = sopranosEight { s1 }

    \new Lyrics \lyricsto mel \sopWords    
    \new Lyrics \lyricsto mel \sopWordsTwo
\new Lyrics \lyricsto mel \sopWordsThree
\new Lyrics \lyricsto mel \sopWordsSeven
\new Lyrics \lyricsto mel \sopWordsEight


    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>

\include "standard-layout.ly"

musicScore = <<
		\new ChordNames \chordmode
		{
		\set majorSevenSymbol = "maj7"
		  %g2:m d4:m g4:m/bes c4:m6 d4 g2:m
		  %g2:m c4.:m g8:m f4 bes2.
		  %bes4 f4 bes4 ees4 c4:m g8:m/d d8 g2:m
		  %ees4 c4:m d4:m bes4 d8 g8:m/d d4 g2
		}
		\new Staff
		<<
			%\set Score.midiInstrument = "Orchestral Strings"
			%\set Score.midiInstrument = "Choir Aahs"
			\new Voice = "sopranos"
			{
				\voiceOne
				\global
				%\override Score.MetronomeMark #'transparent = ##t
				\override Score.MetronomeMark #'stencil = ##f
				\tempo 4 = 120
				r4^"Harmony" d'' b' a' g'2. d'4 e' g' a' d' b'1 a'2 a'4 g' fis'2 fis' g'4 a' fis' e' \phrasingSlurDashed d'2.\( d'4\) g'2 \phrasingSlurDashed g'4.\( g'8\) d''2. d''4 c'' d'' c''8 (b') a' (g') a'2 \bar "||" \break
				d''2 (e''4) d''8 (c'') d''2 g'2. a'8 (b' c''4) b' a'2 g'1 \bar "|."
			}

			\new Voice = "altos"
			{
				\voiceTwo
				s4 g'4 g' fis' e'2. d'4 c' d' c' d' d'1 d'2 d'4 e' e'2 d'2 d'4 d' d' cis' \phrasingSlurDashed d'2.\( a4\) d'2 d'4 (c') b2 g' g'4 a' g' d' fis'2
				g'4 (f' e') g' g' (fis') e'2 (g'4) f' (e') d' c' (d') b1
			}

			%\new Lyrics = sopranos { s1 }
			%\new Lyrics = sopranosTwo { s1 }
			%\new Lyrics = sopranosThree { s1 }
			\new Lyrics = sopranosFour { s1 }
			\new Lyrics = sopranosFive { s1 }
			\new Lyrics = sopranosSix { s1 }
			%\new Lyrics = sopranosSeven { s1 }
			%\new Lyrics = sopranosEight { s1 }
			%\new Lyrics = altos { s1 }
			%\new Lyrics = tenors { s1 }
			%\new Lyrics = basses { s1 }
		>>


		\new Staff
		
		<<
			\clef bass
			#(set-accidental-style 'modern-voice)
			\new Voice = "tenors"
			{
				\voiceThree
				\global
				r4 d' e' c' b2. g4 g g g fis g1 a2 b4 cis' a2 a b4 a b g \phrasingSlurDashed fis2.\( fis4\) g2 \phrasingSlurDashed g4\( g4\) g2 b c'4 a d' d' d'2
				d' (c'4) e' d'2 d'4 (c' b) a8 (g c'4) g g (fis) g1
			}

			\new Voice = "basses"
			{
				\voiceFour
				g,4 b, c d e2. b,4 c b, a, d g,1 fis2 fis4 e d2 cis b,4 fis, g, a, \phrasingSlurDashed d2.\( c4\) b,4 (c) b, (a,) g,2 g4 (fis) e fis g b, d (c) b,2 (c4) a, b,2 e d (c4) d e (d) g,1 
			}
		>>
		\context Lyrics = sopranosFour \lyricsto sopranos \sopWordsFour
		\context Lyrics = sopranosFive \lyricsto sopranos \sopWordsFive
		\context Lyrics = sopranosSix \lyricsto sopranos \sopWordsSix
	>>
	
\include "standard-layout.ly"
\include "tag.ly"
