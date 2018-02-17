	
\score {
	%#(override-auto-beam-setting '(end 1 8 4 4) 1 4)
	%#(override-auto-beam-setting '(end 1 8 4 4) 2 4)
	%#(override-auto-beam-setting '(end 1 8 4 4) 3 4)
  	\musicScore
	\layout {
		\context { \RemoveEmptyStaffContext }
    		\context { \Lyrics 
				%\override LyricText #'font-size = #-1
				%\override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 3)
				\override LyricSpace #'minimum-distance = #0.6 }
    		\context { \ChordNames \override ChordName #'font-size = #-1 }
    		\context { \ChordNames \override ChordName #'font-family = #'Times }
		%\context { \ChordNames \override ChordName #'stencil = ##f }
		\context { \StaffGroup \remove "Span_bar_engraver" }
		\context { \Score \omit BarNumber }
		%\context { \Score \override MetronomeMark #'stencil = ##f }
		
		}
	 }

