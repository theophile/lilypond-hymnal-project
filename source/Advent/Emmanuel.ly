\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "O Come, O Come, Immanuel"

Writer = "9th Century Latin Hymn"

Translator = ""

Composer = "Adapt. Thomas Helmore, 1854"

Arranger = ""

Tune = "Plainsong, Mode I"

Meter = ""

\include "header.ly"



global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key g \major	
	\tempo 8 = 96
}

melody = {	
	\cadenzaOn 
	\autoBeamOff
	e'8 g' b' b' b' a'[ c'' b'] a' g'4 \divisioMinima
	a'8 b' g' e' g' a'[ fis' e'] d' e'4 \divisioMaior \bar "" \break
	a'8 a' e' e' fis' g'[ fis'] e' d'4 \divisioMinima
	g'8 a' b' b' b' a'[ c'' b'] a' g'4 \bar "||"
	d''8 d''4 \divisioMinima
	b'8 b'4 \divisioMaior
	b'8 a'[ c'' b'] a' g' a' b' g' e' \divisioMinima
	g'8 a'[ fis' e'] d' e'4 \bar "|."
	

}

soprano = {	
	\cadenzaOn 
	e'8 g' b' b' b' a'[ c'' b'] a' g'4 \divisioMinima
	a'8 b' g' e' g' a'[ fis' e'] d' e'4 \divisioMaior \bar "" \break
	a'8 a' e' e' fis' g'[ fis'] e' d'4 \divisioMinima
	g'8 a' b' b' b' a'[ c'' b'] a' g'4 \bar "||"
	d''8 d''4 \divisioMinima
	b'8 b'4 \divisioMaior
	b'8 a'[ c'' b'] a' g' a' b' g' e' \divisioMinima
	g'8 a'[ fis' e'] d' e'4 \bar "|."
	

}

alto = {
 	e'4. d'4 e'2 e'4~ e'8 d'4 e'8 d' c'4. b8~ b4
	d'8 c'2 d'4 c'8 a4 c' d' d'8 e'4 <d' fis'>4~ d'4
	g'8 fis'4 e'8 d'4 d'8 e'2~ e'4 d' e'8 d' c'4 b8 a b4

}

tenor = {
	b8 g4 fis e4. c'8 b4 \divisioMinima
	e8 fis g~ g4 e8 a4 fis8 g4 \divisioMaior
	fis8 e4 a g4. fis4 \divisioMinima
	e4 fis g8 e4 d b 
	b8 a4 \divisioMinima
	g8 fis4 \divisioMaior
	fis8 e2~ e4 fis8 g~ g4 e8 fis g a g4
}

bass = {
	g8 e4 b, c2 e4 c8 b,4 c8 b, a,4. b,8 e4
	d8 a,2 b,4 c8 d4 c b, g,8 c4 d g
	g8 d4 e8 b,4 b,8 c2 e8 c b,4 c8 b, a,4 g,8 fis, e,4
}

sopWords = \lyricmode
{
	\set stanza = "1. "
	O come, O come, Im -- man -- u -- el,
	And ran -- som cap -- tive Is -- ra -- el,
	That mourns in lone -- ly ex -- ile here
	Un -- til the Son of God ap -- pear.
	Re -- joice! Re -- joice! 
	Im -- man -- u -- el shall come to thee, O Is -- ra -- el!
}
sopWordsTwo = \lyricmode
{
	\set stanza = "2. "
	O come, Thou Wis -- dom from on high,
	Who ord -- 'rest all things might -- i -- ly;
	To us the path of knowl -- edge show,
	And teach us in her ways to go.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	\set stanza = "3. "
	O come, Thou Rod of Jes -- se, free
	Thine own from Sa -- tan’s tyr -- an -- ny;
	From depths of hell Thy peo -- ple save,
	And give them vic -- t'ry o'er the grave.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	\set stanza = "4. "
	O come, Thou Day -- spring, come and cheer
	Our spir -- its by Thine ad -- vent here;
	Dis -- perse the gloo -- my clouds of night,
	And death's dark shad -- ows put to flight.
}
sopWordsFive = \lyricmode
{
	\set stanza = "5. "
	O come, Thou Key of Da -- vid, come,
	And o -- pen wide our heav'n -- ly home;
	Make safe the way that leads on high,
	And close the path to mi -- se -- ry.
}

sopWordsSix = \lyricmode
{
	\set stanza = "6. "
	O come, O come, great Lord of might,
	Who to Thy tribes on Si -- nai's height
	In an -- cient times once gave the law
	In cloud and ma -- jes -- ty and awe.
}

sopWordsSeven = \lyricmode
{
	\set stanza = "7. "
	O come, Thou Root of Jes -- se's tree,
	An en -- sign of Thy peo -- ple be;
	Be -- fore Thee ru -- lers si -- lent fall;
	All peo -- ples on Thy mer -- cy call.
}

sopWordsEight = \lyricmode
{
	\set stanza = "8. "
	O come, De -- sire of na -- tions, bind
	In one the hearts of all man -- kind;
	Bid Thou our sad di -- vis -- ions cease,
	And be Thy -- self our King of Peace.
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
        \new Lyrics = sopranosSix { s1 }
        \new Lyrics = sopranosSeven { s1 }
        \new Lyrics = sopranosEight { s1 }

    	\new Lyrics \lyricsto mel \sopWords    
    	\new Lyrics \lyricsto mel \sopWordsTwo
	\new Lyrics \lyricsto mel \sopWordsThree
	\new Lyrics \lyricsto mel \sopWordsFour
	\new Lyrics \lyricsto mel \sopWordsFive
	\new Lyrics \lyricsto mel \sopWordsSix
	\new Lyrics \lyricsto mel \sopWordsSeven
	\new Lyrics \lyricsto mel \sopWordsEight
	
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
