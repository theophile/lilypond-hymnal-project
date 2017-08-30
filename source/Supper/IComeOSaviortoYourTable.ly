\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "I Come, O Savior, to Thy Table"

Writer = "Friedrich C. Heyder, 1677-1754"

Translator = ""

Composer = "Emskirchner Choralbuch (Leipzig), 1756"

Arranger = ""

Tune = "ICH STERBE TÄGLICH"

Meter = " 9.8.9.8.8.8"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key c \major
	\tempo 4 = 90	
}

soprano = {	
	\oneVoice r4 \voiceOne c'' b' a' g' a' f' g' e'8 (d') c'4 \oneVoice r4 \voiceOne e' d' g' fis' c'' b' a' g'2
	\oneVoice r4 \voiceOne c'' b' a' g' a' f' g' e'8 (d') c'4 \oneVoice r4 \voiceOne e' d' g' fis' c'' b' a' g'2
	\oneVoice r4^\markup {\italic Refrain} \voiceOne g' c'' c'' a' a' d'' d'' b'2 \oneVoice r4 \voiceOne c''4 f' e' d' c'' c'' b' c''2 \bar "|."
}

alto = {
	s4 g'2 e'4 e'2 d' c' s4 c' d' e'2 e'4 g' fis' d'2
	s4 g'2 e'4 e'2 d' c' s4 c' d' e'2 e'4 g' fis' d'2
	s4 e'2 e'4 f' e' d' fis' e'2 s4 e' d'2 d'4 c' d' f' e'2
}

tenor = {
	\oneVoice r4 \voiceOne e' d' c' b a a g g2. a4 a b2 a4 d'2 b2
	\oneVoice r4 \voiceOne e' d' c' b a a g g2. a4 a b2 a4 d' c' b2
	\oneVoice r4 \voiceOne c'2 a4 c' cis' a b gis2 \oneVoice r4 \voiceOne a4 a2. g4 a g g2
}

bass = {
	s4 c2. e4 c d b, c2 b,4 a, b, e d c d2 g2
	s4 c2. e4 c d b, c2 b,4 a, b, e d c d2 g,2
	s4 c a, c f g fis b, e2 s4 a, d e f e f g c2
}

dropLyrics =
{
    \override LyricText #'extra-offset = #'(0 . -8)
    \override LyricHyphen #'extra-offset = #'(0 . -8)
    \override LyricExtender #'extra-offset = #'(0 . -8)
}

raiseLyrics =
{
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	I come, O Sav -- ior, to Thy ta -- ble,
	For weak and wea -- ry is my soul;
	Thou, Bread of Life, a -- lone art a -- ble
	To sat -- is -- fy and make me whole:
	Lord, may Thy bo -- dy and Thy blood
	Be for my soul the high -- est good!
}
sopWordsTwo = \lyricmode
{
	Oh, grant that I in man -- ner wor -- thy
	May now ap -- proach Thy heav’n -- ly board
	And, as I low -- ly bow be -- fore Thee,
	Look on -- ly un -- to Thee, O Lord!
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Un -- wor -- thy though I am, O Sav -- ior,
	Be -- cause I have a sin -- ful heart,
	Yet Thou Thy lamb wilt ban -- ish nev -- er,
	For Thou my faith -- ful Shep -- herd art:
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
 	Oh, let me loathe all sin for -- ev -- er
	As death and poi -- son to my soul
	That I through will -- ful sin -- ning nev -- er
	May see Thy judg -- ment take its toll!
}
sopWordsFive = \lyricmode
{
 	Thy heart is filled with fer -- vent yearn -- ing
	That sin -- ners may sal -- va -- tion see
	Who, Lord, to Thee in faith are turn -- ing;
	So I, a sin -- ner, come to Thee.
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

#(define-markup-command (vspace layout props amount)
 (number?)
 (let ((amount (* amount 3.0)))
   (if (> amount 0)
       (ly:make-stencil "" (cons 0 0) (cons 0 amount))
       (ly:make-stencil "" (cons 0 0) (cons amount amount)))))


\markup { \hspace #5 
 \columns  { 
  \column { \line {
     "6.   "
     \column {
       	"Weary am I and heavy laden,"
	"With sin my soul is sore opprest;"
	"Receive me graciously and gladden"
	"My heart, for I am now Thy guest."
     }
   } 
  } 
  \column { \line {
     "11. "
     \column {
       "Thy body, giv’n for me, O Savior,"
	"Thy blood which Thou for me didst shed,"
	"These are my life and strength forever,"
	"By them my hungry soul is fed."
     }
   } 
  }
 }
 \vspace #1
}

\markup { \hspace #5 
 \columns  { 
  \column { \line {
     "7.   "
     \column {
       	"Thou here wilt find a heart most lowly"
	"That humbly falls before Thy feet,"
	"That duly weeps o’er sin, yet solely"
	"Thy merit pleads, as it is meet."
     }
   } 
  } 
  \column { \line {
     "12. "
     \column {
       "With Thee, Lord, I am now united;"
	"I live in Thee and Thou in me."
	"No sorrow fills my soul, delighted"
	"It finds its only joy in Thee."
     }
   } 
  }
 }
 \vspace #1
}

\markup { \hspace #5 
 \columns  { 
  \column { \line {
     "8.   "
     \column {
       	"By faith I call Thy holy table"
	"The testament of Thy deep love;"
	"For, lo, thereby I now am able"
	"To see how love Thy heart doth move."
     }
   } 
  } 
  \column { \line {
     "13. "
     \column {
       	"Who can condemn me now? For surely"
	"The Lord is nigh, who justifies."
	"No hell I fear, and thus securely"
	"With Jesus I to Heaven rise."
     }
   } 
  }
 }
 \vspace #1
}

\markup { \hspace #5 
 \columns  { 
  \column { \line {
     "9.   "
     \column {
       	"What higher gift can we inherit?"
	"It is faith’s bond and solid base;"
	"It is the strength of heart and spirit,"
	"The covenant of hope and grace."
     }
   } 
  } 
  \column { \line {
     "14. "
     \column {
       	"Though death may threaten with disaster,"
	"It cannot rob me of my cheer;"
	"For He Who is of death the Master,"
	"With aid and comfort e’er is near."
     }
   } 
  }
 }
 \vspace #1
}

\markup { \hspace #5 
 \columns  { 
  \column { \line {
     "10. "
     \column {
       	"This feast is manna, wealth abounding"
	"Unto the poor, to weak ones power,"
	"To angels joy, to hell confounding,"
	"And life for me in death’s dark hour."
     }
   } 
  } 
  \column { \line {
     "15. "
     \column {
       	"My heart has now become Thy dwelling,"
	"O blessèd, holy Trinity."
	"With angels I, Thy praises telling,"
	"Shall live in joy eternally."
     }
   } 
  }
 }
 \vspace #1
}

\include "tag.ly"
