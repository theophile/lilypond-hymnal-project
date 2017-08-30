	
	\midi { }
	\layout {
	    %oddFooterMarkup = ##f
	    %oddHeaderMarkup = ##f
	    %bookTitleMarkup = ##f
	    %scoreTitleMarkup = ##f
	    %ragged-right = ##f
	    %ragged-last = ##f
		\context { \RemoveEmptyStaffContext }
    		\context { \Lyrics 
				\override LyricText #'font-size = #-1 
				%\override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 3)
				\override LyricSpace #'minimum-distance = #0.3 }
		\context { \Staff
      				\remove "Time_signature_engraver"
      				\override Stem #'transparent = ##t }
    		\context { \ChordNames \override ChordName #'font-size = #-1 }
    		\context { \ChordNames \override ChordName #'font-family = #'Times }
		\context { \StaffGroup \remove "Span_bar_engraver" }
		\context { \Score barNumberVisibility = #(lambda (barnum) #f) }
		\context { \Score barAlways = ##f }
		\context { \Voice \override Stem #'length = #0 }
		}
	 }

