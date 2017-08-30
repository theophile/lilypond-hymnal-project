\version "2.12.3"

Title = "Ascension"

\include "header.ly"

\paper { ragged-right = ##f }

global =
{
	\override Staff.TimeSignature #'stencil = ##f
	\key f \major
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
}

WeLift = \lyricmode
{
	We lift them up to the Lord.
}

Proper = \lyricmode
{
        It is pro -- per and right to do so.
}

	\markup {
		\line { \italic "Minister:"
			\column { \justify-string #"Lift up your hearts!"
     		 		}
    			}
 		}


\score { \new PianoStaff << \set PianoStaff.instrumentName = \markup { \italic "People:" }
   \new Staff = upper { \new Voice = "sopranos" \voiceOne \global
				%\override Score.MetronomeMark #'transparent = ##t
				\override Score.MetronomeMark #'stencil = ##f
				\override Staff.TimeSignature #'style = #'()
				#(set-accidental-style 'piano)
				\set Score.timing = ##f
  				\override Staff.TimeSignature #'transparent = ##t
				\tempo 4 = 120
				\cadenzaOn
				<a c' f'>4 <a c' f'> <g c' e'> <a c' f'> <a c' f'> <bes des' g'> <c' f' a'>2. \bar "|."}
	\new Lyrics \lyricsto "sopranos" \WeLift
   \new Staff = lower { \clef bass \voiceThree \global
				<f, f>4 <f, f> <c, c> <f, f> <f, f> <bes,, bes,> <f, f>2.} >>
	\midi {}
	\layout { 
		indent = 0.68\in
		\context { \Lyrics 
				\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
				\override LyricText #'font-size = #0 }
		\context { \PianoStaff \accepts "Lyrics" }
       		
	}
}


	\markup {
		\line { \italic "Minister:"
			\column { \justify-string #"Let us give thanks to the Lord our God!"
     		 		}
    			}
 		}

\score { \new PianoStaff << \set PianoStaff.instrumentName = \markup { \italic "People:" }
   \new Staff = upper { \new Voice = "sopranos" \voiceOne \global
				%\override Score.MetronomeMark #'transparent = ##t
				\override Score.MetronomeMark #'stencil = ##f
				#(set-accidental-style 'piano)
				\tempo 4 = 120
				\cadenzaOn
				\times 2/3 { r4 <c' f' a'>4 <c' f' a'> } \times 2/3 { <c' f' a'> <c' f' a'> <c' f' a'> } <bes des' f' bes'>2 <bes des' f'>4 <c' f' a'>2 <c' f' a'> \bar "|."}
	\new Lyrics \lyricsto "sopranos" \Proper
   \new Staff = lower { \clef bass \voiceThree \global
				<f, f>2-> <f, f>2 <bes,, bes,>2. <f, f>2 <f, f>2} >>
	\midi {}
	\layout { 
		indent = 0.68\in
		\context { \Lyrics 
				\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
				\override LyricText #'font-size = #0 }
		\context { \PianoStaff \accepts "Lyrics" }
       		
	}
}
