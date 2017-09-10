\version "2.10.29"

Title = "Hail to the Lord's Anointed"

Writer = "James Montgomery, 1771-1854"

Translator = ""

Composer = "Leonhart Schröter, 1540-1602"

Arranger = ""

Tune = "FREUT EUCH, IHR LIEBEN"

Meter = " 7.6.7.6 D"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\override Staff.TimeSignature #'style = #'()
	#(set-accidental-style 'piano)
  	\override Staff.TimeSignature #'transparent = ##t
	%\time 3/2
	\key f \major
	\tempo 4 = 96	
}

divisioMinima = {
  \once \override BreathingSign #'stencil = #ly:breathing-sign::divisio-minima
  %\once \override BreathingSign #'extra-X-extent = #'(-1.0 . 0)
  \breathe
}

soprano = {	
	\cadenzaOn
	f'2 f'4 f' g' a' bes'2 a'4 \divisioMinima a' g' f' f' e' f'2 \bar "|"
	\oneVoice r4 \voiceOne f' f' f' g' a' bes'2 a'4 \divisioMinima a' g' f' g' g' a'2 \bar "|"
	\oneVoice r4 \voiceOne a' c'' c'' c'' b' c''2 c''4 \divisioMinima c''4 b' c'' c'' b' c''2 \bar "|"
	r4 c'' c'' c'' bes' bes' a'2 g'4 \divisioMinima g' a' bes' c''4. (bes'8 a'4 bes') g'2 f'1  \bar "|."
}

alto = {
	c'2 d'4 e' d' e' f' (g') f' e' d'2 c' c'
	s4 d' c' d' e' f' d' (e') f'2 d' e'4 d' e'2
	s4 f' e'2 f'4 d' e'2 f'4 g'2 e'4 d' e' e'2
	(f'4) g' a'2 g'4 e' f' (e') d' e' f'2 e'2 (f'2.) e'4 c'1 
}

tenor = {
	a2 a bes4 a f c'2 c'4 bes a g2 a
	\oneVoice r4 \voiceOne bes bes a bes c' bes (c') c' d' bes a c' d' cis'2
	\oneVoice r4 \voiceOne d' c' bes a g2 c' c'4 d' c' a b a (bes
	a) c' f' e' d' bes c'2 bes a4 g a (g a f) bes2 a1
}

bass = {
	f2 d4 c bes, c d (e) f a bes bes, c2 f
	s4 bes,4 f2. f4 g c (f) d g2 c4 bes, a,2
	s4 d a g f g c2 d4 e g a fis gis a (g
	f) e f2 g a4 (f) g2 d a, (d2.) c4 f1
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

sopWords = \lyricmode
{
        Hail to the Lord’s a -- noint -- ed, great Da -- vid’s great -- er Son!
	Hail in the time ap -- point -- ed, His reign on earth be -- gun!
	He comes to break op -- pres -- sion, to set the cap -- tive free;
	To take a -- way trans -- gres -- sion and rule in e -- qui -- ty.
}

sopWordsTwo = \lyricmode
{
	He comes in suc -- cor spee -- dy to those who suf -- fer wrong;
	To help the poor and nee -- dy, and bid the weak be strong;
	To give them songs for sigh -- ing, their dark -- ness turn to light,
	Whose souls, con -- demned and dy -- ing, were pre -- cious in His sight.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	By such shall He be fear -- èd while sun and moon en -- dure;
	Be -- loved, o -- beyed, re -- ver -- èd; for He shall judge the poor
	Through chang -- ing gen -- er -- a -- tions, with jus -- tice, mer -- cy, truth,
	While stars main -- tain their sta -- tions, or moons re -- new their youth.
}

sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	He shall come down like show -- ers up -- on the fruit -- ful earth;
	Love, joy, and hope, like flow -- ers, spring in His path to birth.
	Be -- fore Him, on the moun -- tains, shall peace, the her -- ald, go,
	And right -- eous -- ness, in foun -- tains, from hill to val -- ley flow.
}

sopWordsFive = \lyricmode
{
 	A -- ra -- bia’s des -- ert ran -- ger to Him shall bow the knee;
	The E -- thi -- o -- pian stran -- ger His glo -- ry come to see;
	With off -- 'rings of de -- vo -- tion ships from the isles shall meet,
	To pour the wealth of o -- ceans in tri -- bute at His feet.
}

sopWordsSix = \lyricmode
{
 	Kings shall fall down be -- fore Him, and gold and in -- cense bring;
	All na -- tions shall a -- dore Him, His praise all pe -- ople sing;
	For He shall have do -- min -- ion o’er riv -- er, sea and shore,
	Far as the ea -- gle’s pin -- ion or dove’s light wing can soar.
}

sopWordsSeven = \lyricmode
{
 
}

sopWordsEight = \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \include "insertchords.ly
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

\markup
 \fill-line {
 \hspace #4
 \column {
   \line {
     "7. "
     \column {
       	"For Him shall prayer unceasing and daily vows ascend;"
	"His kingdom still increasing, a kingdom without end:"
	"The mountain dews shall nourish a seed in weakness sown,"
	"Whose fruit shall spread and flourish and shake like Lebanon."
     }
   }
   \vspace #1
   \line {
     "8. "
     \column {
       	"O’er every foe victorious, He on His throne shall rest;"
	"From age to age more glorious, all blessing and all blest."
	"The tide of time shall never His covenant remove;"
	"His Name shall stand forever, His Name to us is Love."
     }
   }
 }
 \vspace #2
}

\include "tag.ly"
