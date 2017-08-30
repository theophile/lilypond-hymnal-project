\version "2.10.29"

Title = "The Coventry Carol"

Writer = "Robert Croo, ca. 1534"

Translator = ""

Composer = "16th Century English Carol"

Arranger = "Arr. Kemper Crabbe, Trans. C.Meredith"

Tune = "COVENTRY CAROL"

Meter = " 8.6.8.6"

#(ly:set-option 'point-and-click #f)
#(set-global-staff-size 17.82)


\paper
{
	#(define fonts
        (make-pango-font-tree "TeX Gyre Pagella"
                           "Nimbus Sans"
                           "Luxi Mono"
                            (/ 18 20)))
	#(set-paper-size "letter")
	indent = 0.0
	line-width = 180 \mm
	%ragged-bottom = ##f
	top-margin = 0.5 \in
	bottom-margin = 0.5 \in
	%foot-separation = 0.1 \mm
	%head-separation = 0.1 \mm
	%after-title-space = 0.1 \mm
	%before-title-space = 0.1 \mm
	%paper-height = 32 \cm
	%print-page-number = ##t
	%print-first-page-number = ##t
	%between-title-space = 0.1 \mm
	 between-system-space = 1.0\cm
 	 between-system-padding = #1
  	ragged-bottom=##f
  	ragged-last-bottom=##f
	%horizontal-shift
	%system-count
	left-margin = 0.7 \in
	%right-margin = 0.6 \in
	%paper-width
	%printallheaders
	%systemSeparatorMarkup
	print-page-number = ##t
  	print-first-page-number = ##t
	first-page-number = 1 	
	oddHeaderMarkup = \markup \fill-line { " " }
  	evenHeaderMarkup = \markup \fill-line { " " }
  	%oddFooterMarkup = \markup { \fill-line {
     	%\bold \fontsize #3 \on-the-fly #print-page-number-check-first
     	%\fromproperty #'page:page-number-string } }
  	%evenFooterMarkup = \markup { \fill-line {
     	%\bold \fontsize #3 \on-the-fly #print-page-number-check-first
     	%\fromproperty #'page:page-number-string } }
}

%  BACKPORT OF THE VSPACE COMMAND FROM THE 2.13 BRANCH

#(define-markup-command (vspace layout props amount)
 (number?)
 (let ((amount (* amount 3.0)))
   (if (> amount 0)
       (ly:make-stencil "" (cons 0 0) (cons 0 amount))
       (ly:make-stencil "" (cons 0 0) (cons amount amount)))))


%  CODE TO ALIGN THE CONTENTS OF SUBSEQUENT COLUMNS
%  http://lsr.dsi.unimi.it/LSR/Item?id=464

#(define-markup-command (columns layout props args) (markup-list?)
   (let ((line-width (/ (chain-assoc-get 'line-width props
                         (ly:output-def-lookup layout 'line-width))
                        (max (length args) 1))))
     (interpret-markup layout props
       (make-line-markup (map (lambda (line)
                                (markup #:pad-to-box `(0 . ,line-width) '(0 . 0)
                                  #:override `(line-width . ,line-width)
                                  line))
                               args)))))

\header { title = \Title }

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	%\override Staff.TimeSignature #'style = #'()
	%#(set-accidental-style 'modern-cautionary)
  	%\override Staff.TimeSignature #'transparent = ##t
	\autoBeamOff	
	\time 3/4
	\key bes \major
	\tempo 4 = 90
}

sopranonotes = {
\clef "treble_8"
\set midiInstrument = #"voice oohs"
\voiceOne
  d'4\f d' d' d'2 g'4 f'8 f' f'4 d' d'2.
  d'4 f' f' g'2 fis'4 g'2. \bar "||"\break
  R2.*11
  d'4 f' f' g'2 fis'4 g'2. \bar "||" \break

  d'4\mf d' d' d'2 g'4 f'2 d'4 d'2.
  d'4 f' f' g'2 fis'4 g'2 \bar "" \break
  g'4 a'2 g'4 f'2 g'4 f'2 ees'4 d'2.
  d'4 d' d' g'2 fis'4 g'2. \bar "||" \break

  d'2.\mp~( d'2 g'4 f'2 ees'4 d'2.)
  d'4( f'2 g' fis'4 g'2) \bar "" \break
  g'4( a'2 g'4 f'4) r4 g'4( f'2 ees'4 d'2.)
  d'4 d' d' g'2 fis'4 g'2. \bar "||" \break

  d'4\mf d' d' d'2 g'4 f'8 f' f'4 d' d'2.
  d'4\< f' f' g'2 fis'4 g'2.\f \bar "|."
}
sopranowords = \lyricmode { 
Lu -- lly, lu -- lah, Thou lit -- tle ti -- ny Child,
Bye, bye, lu -- lly, lu -- llay.
Bye, bye, lu -- lly, lu -- llay.

Her -- od, the king, in his ra -- ging,
Char -- gèd he hath this day
His men of might, in his owne sight,
All young chil -- dren to slay.

Ooh __
Ooh __
Ooh __
Ooh __
Bye, bye, lu -- lly, lu -- llay.

Lu -- lly, lu -- lah, Thou lit -- tle ti -- ny Child,
Bye, bye, lu -- lly, lu -- llay!
}
altonotes = {
\clef bass
\set midiInstrument = #"voice oohs"
\voiceTwo
  g4-"Melody"\f g fis g2 g4 a8 a a4 g fis2.
  g4 a bes a a2 g2.
  g4 g fis g2 bes4 a2 g4 fis2.
  g4 a bes c' a2 g \bar "" \break d'4 c'2 bes4 a2 bes4 a4 a g fis2.
  g4 a bes c' a2 g2.

  g4\mf g fis g2 g4 a2 g4 fis2.
  g4 a bes a a2 g2
  d'4 c'2 bes4 a2 bes4 a2 g4 fis2.
  g4 a bes c' a2 g2.

  R2.*11
  bes4\mp f g g d'2 d'2.

  g4-"Melody"\mf g fis g2 g4 a8 a a4 g fis2.
  g4\< a bes a a2 b2.\f
}
altowords = \lyricmode { 
Lu -- lly, lu -- lah, Thou lit -- tle ti -- ny Child,
Bye, bye, lu -- lly, lu -- llay.
O sis -- ters too, how may we do,
For to pre -- serve this day
This poor young -- ling of whom we do sing
Bye, bye, lu -- lly, lu -- llay.

Her -- od, the king, in his ra -- ging,
Char -- gèd he hath this day
His men of might, in his owne sight,
All young chil -- dren to slay.

Bye, bye, lu -- lly, lu -- llay.

Lu -- lly, lu -- lah, Thou lit -- tle ti -- ny Child,
Bye, bye, lu -- lly, lu -- llay!
}

tenornotes = {
\clef bass
\set midiInstrument = #"voice oohs"
\voiceThree
  bes4\f bes a bes2 bes4 c'8 c' c'4 bes a2.
  bes4 c' d' ees' d'2 d'2.
  R2.*11
  bes4 c' d' ees' d'2 d'2.

  bes4\mf bes a bes2 bes4 c'2 bes4 a2.
  bes4 c' d' ees' d'2 d'2
  bes4 a2 d'4 d'2 g4 c'2 bes4 a2.
  g4 f g ees' d'2 d'2.

  g4-"Melody"\mp g fis g2 bes4 a2 g4 fis2.
  g4 a bes c' a2 g2
  d'4 c'2 bes4 a a bes a2 g4 fis2.
  g4 a bes c' a2 g2.

  bes4\mf bes a bes2 bes4 c'8 c' c'4 bes a2.
  bes4\< c' d' ees' d'2 d'2.\f
}
tenorwords = \lyricmode { 
Lu -- lah, lu -- lah, Thou lit -- tle ti -- ny Child,
Bye, bye, lu -- lly, lu -- llay.
Bye, bye, lu -- lly, lu -- llay.

Her -- od, the king, in his ra -- ging,
Char -- gèd he hath this day
His men of might, in his owne sight,
All young chil -- dren to slay.

That woe is me, poor Child for Thee!
And ev -- er mourn and say,
For thy part -- ing nei -- ther say nor sing,
Bye, bye, lu -- lly, lu -- llay.

Lu -- lly, lu -- lah, Thou lit -- tle ti -- ny Child,
Bye, bye, lu -- lly, lu -- llay!
}
bassnotes = {
\clef bass
\set midiInstrument = #"voice oohs"
\voiceFour
  g4\f g d g2 d4 f8 f f4 g d2.
  g4 f d c d2 g2.
  R2.*11
  g4 f d c d2 g2.

  g4\mf g d g2 d4 f2 g4 d2.
  g4 f d c d2 g2
  g4 f2 g4 d2 d4 f2 g4 d2.
  g4 d g c d2 g2.

  g2\mp( d4 g2 d4 f2 g4 d2.)
  g4( f d c d2 g2)
  g4( f2 g4 d4) r4 ees4( f2 g4 d2.)
  g4 d g c d2 g2.

  g4\mf g d g2 d4 f8 f f4 g d2.
  g4\< f d c d2 g2.\f
}
basswords = \lyricmode { 
Lu -- lly, lu -- lah, Thou lit -- tle ti -- ny Child,
Bye, bye, lu -- lly, lu -- llay.
Bye, bye, lu -- lly, lu -- llay.

Her -- od, the king, in his ra -- ging,
Char -- gèd he hath this day
His men of might, in his owne sight,
All young chil -- dren to slay.

Ooh __
Ooh __
Ooh __
Ooh __
Bye, bye, lu -- lly, lu -- llay.

Lu -- lly, lu -- lah, Thou lit -- tle ti -- ny Child,
Bye, bye, lu -- lly, lu -- llay!
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
      \lyricsto "soprano" \new Lyrics \sopranowords
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
      \lyricsto "alto" \new Lyrics \altowords
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \lyricsto "tenor" \new Lyrics \tenorwords
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
      \lyricsto "bass" \new Lyrics \basswords
    >>
  >>
  \midi { }
  \layout { }
}
%\include "standard-layout.ly"

\include "tag.ly"
