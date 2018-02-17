	
\score {
  	\musicScore
	\layout {
		\context { \RemoveEmptyStaffContext }
    		\context { \Lyrics 
				\override LyricText #'font-size = #-1
				%\override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 3)
				\override LyricSpace #'minimum-distance = #0.3 }
    		\context { \ChordNames \override ChordName #'font-size = #-1 }
    		\context { \ChordNames \override ChordName #'font-family = #'Times }
		\context { \StaffGroup \remove "Span_bar_engraver" }
	    \context { \Score \omit BarNumber }
		\context { \Score \override VerticalAxisGroup #'remove-first = ##t }
		}
	 }

\score {
   	\unfoldRepeats
  	\musicScore
	\midi { \context { \ChordNameVoice \remove Note_performer } }
	}
