\version "2.10.29"

Title = "What Feast of Love is Offered Here"

Writer = "Delores Dufner, b. 1939"

Translator = ""

Composer = "16th Century English Folk Song"

Arranger = ""

Tune = "GREENSLEEVES"

Meter = " 8.7.8.7.6.7.6.7"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	%\override Staff.TimeSignature #'style = #'()
	%#(set-accidental-style 'modern-cautionary)
  	%\override Staff.TimeSignature #'transparent = ##t
	\time 6/8
	\autoBeamOff
	\key g \major
	\tempo 8 = 116
}

soprano = {
\partial 8 
e'8 g'4 a'8 b'8.[ c''16] b'8 a'4 fis'8 d'8.[ e'16] fis'8 g'4 e'8 e'8.[ dis'16] e'8 fis'4. b4 \bar "" \break
e'8 g'4 a'8 b'8.[ c''16] b'8 a'4 fis'8 d'8.[ e'16] fis'8 g'8.[ fis'16] e'8 dis'8.[ cis'16] dis'8 e'4. e'4. \break
d''4. d''8.[ cis''16] b'8 a'4 fis'8 d'8.[ e'16] fis'8 g'4 e'8 e'8.[ dis'16] e'8 fis'4 (dis'8) b4. \break
d''4. d''8.[ cis''16] b'8 a'4 fis'8 d'8.[ e'16] fis'8 g'8.[ fis'16] e'8 dis'8.[ cis'16] dis'8 e'4. e'4 s8  \bar "|." 
}

alto = {
b8 e'4 d'8 d'4 g'8 fis'4 d'8 d'4 c'8 b4 b8 a8.[ dis'16] e'8 dis'4. b4 
b8 e'4 d'8 d'4 g'8 fis'4 d'8 d'4 c'8 b4 c'8 b8.[ cis'16] b8 b4. b4.
fis'4. b'8.[ a'16] g'8 fis'4 d'8 d'4 c'8 b4 b8 a8.[ dis'16] e'8 dis'4 (b8) b4.
fis'4. b'8.[ a'16] g'8 fis'4 d'8 d'4 c'8 b4 c'8 b8.[ cis'16] b8 b4. b4 s8
}

tenor = {
g8 b4 a8 g4 b8 d'4 a8 fis4 a8 g4 g8 a4 e8 b4. b4
g8 b4 a8 g4 b8 d'4 a8 fis4 a8 g4 a8 fis4 fis8 g4. g4.
b4. d'4 d'8 d'4 a8 fis4 a8 g4 g8 a4 e8 b4 (fis8) b4.
b4. d'4 d'8 d'4 a8 fis4 a8 g4 a8 fis4 fis8 a4. g4 s8
}

bass = {
e8 e4 fis8 g4 g8 d4 d8 d4 dis8 e4 e8 c4 c8 b,4. b,4
e8 e4 fis8 g4 g8 d4 d8 d4 fis8 e4 a,8 b,4 b,8 e4. e4.
b4. g4 g8 d4 d8 d4 dis8 e4 e8 c4 c8 b,4 (b,8) b,4.
b4. g4 g8 d4 d8 d4 dis8 e4 a,8 b,4 b,8 e4. e4 s8
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
What feast of love is of -- fered here, what ban -- quet come from heav -- en?
What food of ev -- er -- last -- ing life, what gra -- cious gift is giv -- en?
This, this is Christ the king, the bread come down from heav -- en.
Oh, taste and see and sing! How sweet the man -- na giv -- en!
}

sopWordsTwo = \lyricmode
{
What light of truth is of -- fered here, what cov -- e -- nant from heav -- en?
What hope of ev -- er -- last -- ing life, what won -- drous word is giv -- en?
This, this is Christ the king, the sun come down from heav -- en.
Oh, see and hear and sing! The Word of God is giv -- en!
}

sopWordsThree = \lyricmode
{
What wine of love is of -- fered here, what ho -- ly drink from heav -- en?
What stream of ev -- er -- last -- ing life, what pre -- cious blood is giv -- en?
This, this is Christ the king, the sweet -- est wine of heav -- en.
Oh, taste and see and sing! The Son of God is giv -- en!
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
