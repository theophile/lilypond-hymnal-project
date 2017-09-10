\version "2.10.29"

Title = "Nunc Dimittis"

Writer = ""

Translator = ""

Composer = "Clifford Boyd, 1981"

Arranger = ""

Tune = ""

Meter = ""

\include "header.ly"
\header { 	title = \Title 
		composer = \Composer }

global =
{
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0		
	\tempo 4 = 100
	\key f \major
}




sopWords = \lyricmode
{
	Mas -- ter, now \once \override LyricText #'self-alignment-X = #-1 "lettest thou Thy servant depart in" peace: ac -- cord -- ing to Thy word.
	Which Thou hast pre -- par -- èd: \once \override LyricText #'self-alignment-X = #-1 "before the face of" all __ peo -- ple.
	Glo -- ry \once \override LyricText #'self-alignment-X = #-1 "be to the Father, and to the" Son: and to the Ho -- ly Ghost.
	
}
sopWordsTwo = \lyricmode
{
	\override LyricText #'font-series = #'bold
	For mine eyes have seen: Thy sal -- va -- tion.
	\once \override LyricText #'self-alignment-X = #-1 "To be a light to" light -- en the Gen -- tiles: \once \override LyricText #'self-alignment-X = #-1 "And to be the" glo -- ry of Thy peo -- ple Is -- ra -- el.
	\once \override LyricText #'self-alignment-X = #-1 "As it was in the beginning, is now, and" ev -- er shall be: world with -- out end. A -- men!
}
sopWordsThree = \lyricmode
{
 
}
sopWordsFour = \lyricmode
{
 
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


altoWords = \lyricmode
{

}
tenorWords = \lyricmode
{

}
bassWords = \lyricmode
{

}


leader = {
  \clef bass
  \autoBeamOff

	\time 15/8 f8^\markup { \box { "Leader" } } f g bes1 c'4 r4 \time 7/8  bes8 bes a bes g f4 \bar "||" \break
	s1 s1 s1 s2
	\time 5/4 f8^\markup { \box { "Leader" } } g bes bes c'4 bes r4 \time 7/4 bes1 a8[ bes] g4 f \bar "||" \break
	s1 s1 s1 s1 s2.
	\time 7/4 f8^\markup { \box { "Leader" } } g bes1 c'4 r4 \time 7/8 bes8 a bes g f f4 \bar "||" \break
	
  
}


soprano = {
  \autoBeamOff
	s4. s1. s2. s8
	\time 2/4 f'4.^\markup { \box { "People" } } f'8 \time 4/4 f'4 f' e' (f') \oneVoice r4 \voiceOne bes' (a') g'8[ f'] f'4 (e') f'2 \bar "||" \break
	s1 s1 s1
	\time 4/4 f'1^\markup { \box { "People" } } \time 5/4 f'4 f'8 f' e'4 f' \oneVoice r4 \voiceOne \time 6/4 bes'1 a'8 a' g' f' \time 4/4 f'4 e' f'8. f'16 f'4 \bar "||" \break
	s1 s1 s2 s8
	\time 4/4 f'1^\markup { \box { "All" } } f'4 f' e' f' \oneVoice r4 \voiceOne c'' d'' f'' bes' a' (g' f'~ f'8[ e'16 d'] e'4) f'2 \bar "|."
	
}

alto = {
  \autoBeamOff
  	s4. s1. s2. s8
	\time 2/4 f'4. f'8 \time 4/4 d'4 f' c'2 s4 f'2 d'8[ c'] bes4 (c') c'2 \break
	s1 s1 s1
	\time 4/4 f'1 \time 5/4 d'4 f'8 f' c'4 c' s4 \time 6/4 f'1 f'8 f' d' c' \time 4/4 bes4 c' c'8. c'16 c'4 \break
	s1 s1 s2 s8
	f'1 d'4 f' c' c' s4 f' f' a' g' c' (d'8[ e'] f'4 d' c') c'2
}

tenor = {
  \autoBeamOff
	s4. s1. s2. s8
	\time 2/4 a4. a8 \time 4/4 bes4 c' bes (a) \oneVoice r4 \voiceOne f2 f4 g2 <f a> \break
	s1 s1 s1
	\time 4/4 a1 \time 5/4 bes4 c'8 c' bes4 a \oneVoice r4 \voiceOne \time 6/4 f1 f8 f f f \time 4/4 g4 g <a f>8. <a f>16 <a f>4 \break
	s1 s1 s2 s8
	\time 4/4 a1 bes4 c' bes a \oneVoice r4 \voiceOne f' f' d' d' f (g a bes g) <f a>2 \bar "|."
}

bass = {
  \autoBeamOff
	s4. s1. s2. s8
	\time 2/4 f4. f8 \time 4/4 bes4 a g (f) s4 d (c) bes,8[ a,] g,4 (c) <f, c>2 \break
	s1 s1 s1
	\time 4/4 f1 \time 5/4 bes4 a8 a g4 f s4 \time 6/4 d1 c8 c bes, a, \time 4/4 g,4 e <f, c>8. <f, c>16 <f, c>4 \break
	s1 s1 s2 s8
	\time 4/4 f1 bes4 a g f s4 a bes d' g f (bes, a, g, c) <f, c>2
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

musicScore = <<
   \include "insertchords.ly"
    \new Voice = "mel" { \global \leader }

    	\new Lyrics \lyricsto mel \sopWords    

  \context StaffGroup <<

    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne \soprano }
      \context Voice = "two" { \global \voiceTwo \alto }
    >>

	\lyricsto "one" \new Lyrics { \sopWordsTwo }

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree \tenor }
      \context Voice = "two" { \global \voiceFour \bass }
    >>
  >>
>>
	
\include "standard-layout.ly"
