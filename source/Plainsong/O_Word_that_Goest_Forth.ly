\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "O Word, that Goest Forth on High"

Writer = "7th Century Latin Chant"

Translator = ""

Composer = "Verbum Supernum"

Arranger = ""

Tune = "Sarum Plainsong, Mode II, trans."

Meter = ""

\include "header.ly"
\header { subtitle = \markup { \italic "(Plainsong)" } }


global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key d \major	
	\tempo 8 = 96
}

melody = {	
	\cadenzaOn 
	\autoBeamOff
	fis'8 d' fis' a' b' cis'' b' b'4 \divisioMinima
	a'8 g' d'' d'' cis''[ a'] b' cis'' b'4 \divisioMaior \bar "" \break
	b'8 b' cis'' a' fis'[ a'] g' fis' e'4 \divisioMinima
	fis'8 d' fis' a' b' cis'' b' b'4\fermata \bar "|."
	

}

soprano = {	
	\cadenzaOn 
	\autoBeamOff
	fis'8 d'[ fis' a' b'] cis''[ b'] b'4 \divisioMinima
	a'8 g'[ d''] d'' cis''[ a'] b'[ cis''] b'4 \divisioMaior
	b'8 b'[ cis''] a' fis'[ a'] g'[ fis'] e'4 \divisioMinima
	fis'8 d'[ fis' a' b'] cis''[ b'] b'4\fermata 
	

}

alto = {
 	s8 d'2 e'4 d' fis' g'8 a'4.~ a'4 g'
	g'4. fis' d'4 cis' d'4. d'4 e' d'

}

tenor = {
	a4. fis4 a fis d e8 fis4 d'8~ d'2
	e'4. cis' b4 a~ a4. fis4 g fis\fermata 
}

bass = {
	d4.~ d8 b, a,4 b, d e8 fis4. g2
	e4. fis g4 a4 d4.~ d8 cis b,2
}

sopWords = \lyricmode
{
	\set stanza = "1. "
	O Word, that go -- est forth on high
	From God's own depths e -- ter -- nal -- ly,
	And in these lat -- ter days wast born
	For suc -- cor to a world for -- lorn;
}
sopWordsTwo = \lyricmode
{
	\set stanza = "2. "
	Pour light up -- on us from a -- bove,
	And fire our hearts with ar -- dent love,
	That, as we hear Thy truth to -- day,
	All wrong de -- sires may burn a -- way;
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	\set stanza = "3. "
	And when, as judge, Thou draw -- est nigh
	The se -- crets of our hearts to try,
	To re -- com -- pense each hid -- den sin
	And bid the saints their reign be -- gin;
}
sopWordsFour = \lyricmode
{
	%\override LyricText #'font-shape = #'italic
	\set stanza = "4. "
	O let us not, weak sin -- ful men,
	Be driv -- en from Thy pre -- sence then,
	But with Thy saints for -- ev -- er stand
	In per -- fect love at Thy right hand.
}
sopWordsFive = \lyricmode
{
	\set stanza = "5. "
	To God the Fa -- ther, God the Son,
	And God the Spir -- it, ev -- er one,
	Praise, hon -- or, might, and glo -- ry be
	From age to age, e -- ter -- nal -- ly.
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

musicScore = <<
	\new ChordNames \chordmode
                {
                \set majorSevenSymbol = "maj7"
 
                }
    \new Voice = "mel" { \global \melody }
	\new Lyrics = sopranos { s1 }
        \new Lyrics = sopranosTwo { s1 }
        \new Lyrics = sopranosThree { s1 }
        \new Lyrics = sopranosFour { s1 }
        \new Lyrics = sopranosFive { s1 }
        %\new Lyrics = sopranosSix { s1 }
        %\new Lyrics = sopranosSeven { s1 }
        %\new Lyrics = sopranosEight { s1 }

    	\new Lyrics \lyricsto mel \sopWords    
    	\new Lyrics \lyricsto mel \sopWordsTwo
	\new Lyrics \lyricsto mel \sopWordsThree
	\new Lyrics \lyricsto mel \sopWordsFour
	\new Lyrics \lyricsto mel \sopWordsFive
	%\new Lyrics \lyricsto mel \sopWordsSix

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
\include "tag.ly"
