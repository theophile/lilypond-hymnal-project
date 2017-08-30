\version "2.10.29"

Title = "Wedding Song"

Writer = "Noel Paul Stookey"

Translator = ""

Composer = "Noel Paul Stookey"

Arranger = ""

Tune = "THERE IS LOVE"

Meter = ""

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 2/2
	\key d \major		
	\tempo 2=72
}

%%% Definitions
%%% ===========
%% Glyphs
%% ------
theSegnoGlyph = \markup { \musicglyph #"scripts.segno" }
toSegnoGlyph = \theSegnoGlyph
toCodaGlyph = \markup { \musicglyph #"scripts.coda" }
theCodaGlyph = \toCodaGlyph 

%% some general shorthand commands
%% -------------------------------
padSegno = { 
  \once \override Score.RehearsalMark #'padding = #'2 
} 
showClefKey = {
  \once \override Staff.KeySignature #'break-visibility = #all-visible
  \once \override Staff.Clef #'break-visibility = #all-visible
}
blankClefKey = {
  \once \override Staff.KeySignature #'break-visibility = #all-invisible
  \once \override Staff.Clef #'break-visibility = #all-invisible
}

%% segno-coda-markup related shorthands
%% ----------------------------
theSegnoRMark = {
  \padSegno % Pad away from key-accidentals 
  \mark \markup { \theSegnoGlyph }
}
toCodaRMark = {
  \padSegno % keep "To Coda" on same level as Segno
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'font-size = #4 % Enlarge Coda-Sign
  \mark \markup { \toCodaGlyph }
}
toSegnoRMark = {
  \padSegno % keep "To Segno" on same level as "The Segno" and "To Coda"
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \mark \markup { \toSegnoGlyph }
  \stopStaff % \cadenzaOn will suppress the bar count and
  \cadenzaOn % \stopStaff removes the staff lines (and creates some annoyances related to grob positioning, too)
}

%% Textual "dal segno" shorthands 
%% ------------------------------
DSCodaTextLine = { % choice one
  \once \override TextScript #'extra-offset = #'( 2 . -3.5 )
  s1*0^\markup { D.S. al Coda }
}
DSCodaTextCenter = { % choice two
  \once \override TextScript #'extra-offset = #'( 6 . -5.0 )
  | s1*0^\markup { \center-column { D.S. "al Coda" } }
}
DSCodaTextSymbolCenter = { % choice three
  % 'padding or 'staff-padding won't accept negative values in 2.9.10,
  % so I had to use 'extra-offset instead of X-offset and one of the above
  \once \override TextScript #'extra-offset = #'( 8 . -5.5)
  \once \override TextScript #'word-space = #1.5 
  % \once \override TextScript #'baseline-skip = #0
  s1*0^\markup { 
          \center-column { 
            "D.S. al Coda" 
            \line { % some kerning
              \halign #0 \musicglyph #"scripts.coda" 
              \halign #0.7 \musicglyph #"scripts.tenuto" 
              \halign #0 \musicglyph #"scripts.coda" }
          } }
}

%% "The Coda" related markup shorthands
%% ------------------------------------
theCodaRMarkSize = { % Make "the Coda" RehearsalMark easy to spot!
  \once \override Score.RehearsalMark #'font-size = #6 
}

theCodaMiddleLeft = { % Choice 1 of The-Coda-On-New-Line Layout
  \theCodaRMarkSize
  % \once \override Score.RehearsalMark #'staff-padding = #-4.75 % can't use staff-padding (due to removerd staff?) - must use 'extra-offset
  % \once \override Score.RehearsalMark #'X-offset = #-4.5 % produces error - \stopStaff-related? - must use 'extra-offset
  \once \override Score.RehearsalMark #'extra-offset = #'( -1 . -10.65 ) % -10.65: volta bracket present
  \mark \markup { \theCodaGlyph }
}

theCodaTopLeft = { % Choice 2 of The-Coda-On-New-Line Layout
  \theCodaRMarkSize
  % \once \override Score.RehearsalMark #'staff-padding = #3 % can't use - see above
  % \once \override Score.RehearsalMark #'X-offset = #5 % can't use - see above
  \once \override Score.RehearsalMark #'extra-offset = #'( 3.2 . 0 ) % Adjust to your layout
  \mark \markup { \theCodaGlyph }
}

theCodaRMarkNoNewLine = { % The-Coda-No-New-Line Layout
  % \once \override Score.RehearsalMark #'X-offset = #1.75
  \once \override Score.RehearsalMark #'padding = #2
  \once \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \theCodaRMarkSize
  \mark \markup { \theCodaGlyph }
}

%% "The-Coda-On-New-Line": define position of "The Coda"-Markup
%% choices: \theCodaMiddleLeft or \theCodaTopLeft
%% ------------------------------------------------------------
theCodaRMarkOnNewLine = 
  \theCodaMiddleLeft  
  
%% "The-Coda-No-New-Line" Layout: space between "toSegno" and "theCoda"
%% --------------------------------------------------------------------
spacerNoNewLine = { % Increase unfold counter to adjust space 
  \repeat unfold 2 {
    s4 s4 s4 s4
    \noBreak
    \bar ""
  }
}
%% "The-Coda-On-New-Line" Layout: space between "toSegno" and right margin
%% -----------------------------------------------------------------------
spacerWithNewLine = { % Increase unfold counter to adjust space
  \repeat unfold 5 {
    s4 s4 s4 s4
    \noBreak
    \bar ""
  }
}
%% shared Variable for both Layouts
%% --------------------------------
resumeStaff = {
  \cadenzaOff \startStaff % Resume bar count and show staff lines again
  \partial 32 s32 % Add a whee bit of staff before the clef!
  \bar ""
}
%% "The-Coda-On-New-Line" Layout: With indent 
%% ------------------------------------------
doIndentTheCoda = {
  \blankClefKey
  \repeat unfold 1 { % Adjust unfold counter to manipulate indentation
    s4 s4 s4 s4
    \noBreak
    \bar ""
  }
  \theCodaRMarkOnNewLine  
  \partial 64 s64
  \noBreak
  \bar ""
  \resumeStaff
  \showClefKey
}
%% "The-Coda-On-New-Line" Layout: WithOUT indent 
%% ---------------------------------------------
dontIndentTheCoda = {
  \cadenzaOff \startStaff % Resume bar count and show staff lines again
  \theCodaRMarkOnNewLine
}

codaNoNewLine = { } % merely to avoid error message

%%% The Coda layout: uncomment only ONE set of the following 
%%% ========================================================
%% Choice One: The Coda NOT on a new line 
%% (a.k.a. "The-Coda-No-New-Line Layout")
%% --------------------------------------
% { !!Active!!
codaNoNewLine = { \noBreak }
theCodaRMark = { 
  \spacerNoNewLine
  \resumeStaff
  \showClefKey % Show up, you clef and key!
  \theCodaRMarkNoNewLine
}
% } % !!Active!!

%% Choice Two: The Coda INDEED on a new line 
%% (a.k.a. "The-Coda-On-New-Line Layout")
%% -----------------------------------------
%{ !!Off!!
theCodaRMark = { 
  \spacerWithNewLine
  \break % This is the New line!
  \doIndentTheCoda % use \doIndentTheCoda or \dontIndentTheCoda to your liking
} 
%} % !!Off!!

%%% Markup for textual D.S. display
%%% Choices are: \DSCodaTextCenter \DSCodaTextLine \DSCodaTextSymbolCenter 
%%% ======================================================================
DSMarkup = \DSCodaTextSymbolCenter

soprano = {	
	\partial 4
	a'8 a' a'4. a'8 a'4 a'8 a'~ a'4 a'2 a'8 a' a' a'4. a'4 b'8 a'~ a'1
	a'4 g'8 g'~ g'4 g' fis'4. e'8 e' 4 e' e' d' d' a' fis'2.\fermata a'4 \bar "||" \theSegnoRMark
	a'4 a'8 a'~ a'4 a' a' a' a' a' a' a' a' b' a'2.
	fis'8 fis' fis'4 fis' fis' b' a' a'8 a'~ a'4 fis' g' fis' e' d' e'2
	d'4 d' d'1~ d'2 d'4 d' d'1~ d'2. 
	\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\once \override Score.RehearsalMark #'self-alignment-X = #right \mark \markup { \italic \fontsize #-2 { "Fine" } } \bar "|." \break
	
	a'8 a' a'4. a'8 a'4 a' a'8 a'4.~ a'4 a'8 a' a' a'4. a'4 b'8 a'~ a'2. \oneVoice r4 \voiceOne
	fis'4 fis' fis' g' a' a' a'4. fis'8 e'4 e' e' fis' g'2. a'8 a'
	\repeat volta 2 {
		a'4 a' a' a' a' a'2 a'4 a' a' a' b' a'2. 
		\oneVoice r8 \voiceOne fis' fis'4 fis' fis' b' a' a' a'4. fis'8 g'4 fis' e' d' e'4. d'8 d'4 d' d'1~ d'2 d'4 d' }
	   \alternative {
		{ d'1~ d'2 g'4 a' b'4. a'8 b'4 b' b' b'2 b'8 b' a' a'4. a'4 e' fis'2.
		  a'8 a' b'4. b'8 b'4 b' b'2. b'4 a'4. a'8 a'4 e' fis'2. a'8 a' }
	 	{ d'1~ d'2. \oneVoice r8 \voiceOne a'8 
		  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
		  \once \override Score.RehearsalMark #'self-alignment-X = #right \mark \markup { \italic \fontsize #-2 { "D.S. al Fine" } } \bar "||" }
	   }
	
	 
}

alto = {
	\partial 4
	fis'8 fis' fis'4. fis'8 fis'4 fis'8 fis'~ fis'4 fis'2 fis'8 fis' e' e'4. e'4 d'8 cis'8~ (cis'2 e')
	d'4 d'8 d'~ d'4 d' d'4. d'8 d'4 d' b b b b d'2.\fermata fis'4
	fis' fis'8 fis'~ fis'4 fis'4 e' e' e' cis' d' d' d' d' d'2.
	d'8 d' d'4 d' d' d' d' d'8 d'~ d'4 d' d' d' b d' cis'2 b4 b b1~ b2 b4 b a1~ a2.
	fis'8 fis' fis'4. fis'8 fis'4 fis' e'8 e'4.~ e'4 e'8 e' d' d'4. d'4 d'8 d'~ d'2. s4
	d'4 d' d' d' d' d' d'4. d'8 cis'4 cis' cis' d' cis'2. e'8 e'
	\repeat volta 2 {
		fis'4 fis' fis' fis' e' e'2 e'4 d' d' d' d' d'2. 
		s8 d'8 d'4 d' d' d' d' d' d'4. d'8 d'4 d' b d' cis'4. b8 b4 b b1~ b2 b4 b4 }
	   \alternative {
                { a1~ a2 e'4 fis' g'4. g'8 g'4 g' g' g'2 g'8 g' e' e'4. cis'4 cis' d'2. 
		  fis'8 fis' g'4. g'8 g'4 g' g'2. g'4 e'4. e'8 cis'4 cis' d'2. fis'8 fis' }
		{ a1~ a2. s8 fis'8 }
	   }
}

tenor = {
	\partial 4
	a8 a a4. a8 a4 a8 a~ a4 a2 a8 a a a4. a4 g8 a~ a1
	g4 g8 g~ g4 g g4. g8 g4 g g g g g a2.\fermata a4
	a a8 a~ a4 a a a a a b b b g fis2. a8 a b4 b b fis fis fis8 fis~ fis4 a g g g g a2 
	e4 e g1~ g2 d4 e fis1~ fis2.
	a8 a a4. a8 a4 a a8 a4.~ a4 a8 a g g4. g4 g8 fis~ fis2. \oneVoice r4 \voiceOne
	fis4 fis fis e fis fis fis4. a8 a4 a a a a2. a8 a
	\repeat volta 2 {
		a4 a a a a a2 a4 g g g g fis2. 
		\oneVoice r8 \voiceOne a8 b4 b b g fis fis fis4. a8 g4 g g g a4. a8 e4 e g1~ g2 d4 e }
	   \alternative {
		{ fis1~ fis2 d'4 d' d'4. d'8 d'4 d' e' e'2 e'8 e' cis' cis'4. a4 a a2. 
		  d'8 d' d'4. d'8 d'4 d' e'2. e'4 cis'4. cis'8 a4 a a2. a8 a }
		{ fis1~ fis2. \oneVoice r8 \voiceOne a8 }
	   } 
}

bass = {
	d8 d d4. d8 d4 d8 d~ d4 d2 d8 d cis cis4. cis4 b,8 a,~ (a,2 cis)
	b,4 b,8 b,~ b,4 b, b,4. b,8 b,4 b, g, g, g, g, d2.\fermata d4
	d d8 d~ d4 d cis cis cis a, g, g, g, g, d2. d8 d b,4 b, b, b, d d8 d~ d4 d b, b, g, b, a,2
	a,4 a, g,1~ g,2 g,4 g, d1~ d2.
	d8 d d4. d8 d4 d cis8 cis4.~ cis4 cis8 cis b, b,4. b,4 b,8 a,~ a,2. s4
	b,4 b, b, b, d d d4. d8 a,4 a, a, a, a,2. cis8 cis
	\repeat volta 2 {
                d4 d d d cis cis2 cis4 b, b, b, g, d2.
		s8 d8 b,4 b, b, b, d d d4. d8 b,4 b, g, b, a,4. a,8 a,4 a, g,1~ g,2 g,4 g, }
	   \alternative {
                { d1~ d2 d4 d g4. g8 g4 g e e2 e8 e a a4. a,4 a, d2. d8 d g4. g8 g4 g e2. e4 a4. a8 a,4 a, d2. d8 d }
		{ d1~ d2. s8 d8 }
	   }

}

sopWords = \lyricmode
{
	\override StanzaNumber #'stencil = ##f
	He is now to be a -- mong you at the call -- ing of your hearts.
	Rest as -- sured, this trou -- ba -- dor is act -- ing on His part.
	\override StanzaNumber #'stencil = ##t
	\set stanza = "1."
	The un -- ion of your spir -- its here has caused Him to re -- main,
	For when -- ev -- er two or more of you are gath -- ered in His name, there is love, there is love.
	Well, a man shall leave his moth -- er, and a wo -- man leave her home,
	They shall tra -- vel on to where the two shall be as one; As it
	\set stanza = "1."
	was in the be -- gin -- ning, is now, and 'til the end; \skip 1
	Wo -- man draws her life from man and gives it back a -- gain, and there is love, there is love.
	Well, then what's to be the rea -- son for be -- com -- ing man and wife?
	Is it love that brings you here, or love that brings you life?
	For if
	love.
	The
}

sopWordsTwo = \lyricmode
{
	\override StanzaNumber #'stencil = ##f
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
        \override StanzaNumber #'stencil = ##t
	\set stanza = "2."
	The mar -- riage of your spir -- its here has caused Him to re -- main,
	For when -- ev -- er two or more of you are gath -- ered in His name, there is love, there is love.
	\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
	\set stanza = "2."
	lov -- ing is the an -- swer, then who's the giv -- ing for?
	Do you be -- lieve in some -- thing that you've nev -- er seen be -- fore?
	And there is love, there is
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
