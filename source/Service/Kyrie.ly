\version "2.12.3"

Title = "Kyrie"

\include "header.ly"
%\header { composer = "J. B. Jordan" }

\paper { ragged-right = ##f }

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\key f \major
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\override Score.MetronomeMark #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	#(set-accidental-style 'piano)
  	\override Staff.TimeSignature #'transparent = ##t
	\override Staff.BarLine #'allow-span-bar = ##f
	\tempo 4 = 120
}

KyrieOneTwo = \lyricmode
{
	For ev -- er -- last -- ing is His lov -- ing -- kind  -- ness.
}


KyrieThree = \lyricmode
{
        O Lord, have mer -- cy up -- on __ us.
}

KyrieFour = \lyricmode
{
        Lord Je -- sus Christ have mer -- cy.
}

KyrieFive = \lyricmode
{
        O Lord, be gra -- cious un -- to us.
}

KyrieSix = \lyricmode
{
        A -- men!
}


OneUp = {	\time 3/4 <a c' f'>4 <a c' f'> <a c' f'>
		\time 4/4 <ges bes ees'>2. <ges bes des'>4
		<ges bes ees'> <ges bes ees'> <ges bes des'> <ges bes ees'>
		\time 6/4 <a c' f'>1 (<ges bes ees'>2)
		\time 4/4 <a c' f'>1 \bar "||" }
OneDown = {	<f, f>2. <f,, f,>1 <f, f> <f,, f,> <f, f>2 <f,, f,>1 }

TwoUp = {	\time 3/4 <a c' f'>4 <a c' f'> <a c' f'>
		\time 4/4 <bes des' f' g'>2. <a c' f'>4
		<bes des' f' g'>4 <bes des' f' g'> <a c' f'> <bes des' f' g'>
		\time 6/4 <c' f' a'>1 (<bes f' g'>2)
		\time 4/4 <c' f' a'>1 \bar "||" }
TwoDown = {	<f, f>2. <f,, f,>1 <f, f> <f,, f,> <f, f>2 <f,, f,>1 }

ThreeUp = {	\time 2/4 <c' f' a'>2
		\time 4/4 <b d' g'>2. <b d' f'>4
		\time 3/4 <b d' g'> <b d' g'> <b d' g'>
		\time 6/4 <c' f' a'>1 (<b d' g'>2)
		\time 4/4 <c' f' a'>1 \bar "||" }
ThreeDown = {	<f, f>2 <f,, f,>1 <f, f>2. <f,, f,>1 <f, f>2 <f,, f,>1 }

FourUp = {	\time 2/4 <c' f' a'>2
		\time 4/4 <des' f' bes'>2. <des' f' a'>4
		\time 2/4 <des' f' bes'> <des' f' bes'>
		\time 6/4 <c' f' a' c''>1 (<des' f' bes'>2)
		\time 4/4 <f' a' c''>1 \bar "||" }
FourDown = {	<f, f>2 <f,, f,>1 <f, f>2 <f,, f,>1 <f, f>2 <f,, f,>1 }

FiveUp = {	\time 2/4 a'2
		\time 4/4 <aes des' f' aes'>2. <g des' f' g'>4
		\time 2/4 <aes des' f' aes'> <aes des' f' aes'>
		\time 6/4 <g bes ees' g'>1 <a c' f'>2
		\time 4/4 <a c' f'>1 \bar "||" }
FiveDown = {	<f, f>4 <ees, ees> <des, aes, des>2. <des, aes, des>4 <des, aes, des> <des, aes, des> <ees bes, ees,>1 <f, c f>2 <f, c f>1 }

SixUp = {	\time 12/4 <a c' f'>2~ (<ges bes ees' f'>2. <ges bes des'>4 <ges! bes ees'>2) <a c' f'>1  \bar "|." }
SixDown = {	<f, f>2 <f,, f,>1 <f,, f,>2 <f,, f,>1 }

    %\book {

\markup { \line { \italic "Minister:" \column { \override #'(line-width . 100) \justify-string #"O give thanks to the Lord, for He is good." }}}

\score { \new PianoStaff << \set PianoStaff.instrumentName = \markup { \italic "People:" }
   \new Staff = upper { \new Voice = "sopranos" \voiceOne \global \OneUp }
	\new Lyrics \lyricsto "sopranos" \KyrieOneTwo
   \new Staff = lower { \clef bass \voiceThree \global \OneDown } >>
	\midi {}
	\layout { 
		indent = 0.68\in
		\context { \Lyrics 
				\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
				\override LyricText #'font-size = #0 }
		\context { \PianoStaff \accepts "Lyrics" }
       		
	}
}


\markup { \line { \italic "Minister:" \column { \justify-string #"In peace let us pray to the Lord." }}}


\score { \new PianoStaff << \set PianoStaff.instrumentName = \markup { \italic "People:" }
   \new Staff = upper { \new Voice = "sopranos" \voiceOne \global \TwoUp }
	\new Lyrics \lyricsto "sopranos" \KyrieOneTwo
   \new Staff = lower { \clef bass \voiceThree \global \TwoDown } >>
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
			\column { \override #'(line-width . 100) \justify-string #"For the peace that is from above, and for strength and blessing, let us pray to the Lord."
     		 		}
    			}
 		}

\score { \new PianoStaff << \set PianoStaff.instrumentName = \markup { \italic "People:" }
   \new Staff = upper { \new Voice = "sopranos" \voiceOne \global \ThreeUp }
	\new Lyrics \lyricsto "sopranos" \KyrieThree
   \new Staff = lower { \clef bass \voiceThree \global \ThreeDown } >>
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
			\column { \override #'(line-width . 100) \justify-string #"For the peace of the whole world, for the well-being of the churches of God, and for the unity of all, let us pray to the Lord."
     		 		}
    			}

		} 


\score { \new PianoStaff << \set PianoStaff.instrumentName = \markup { \italic "People:" }
   \new Staff = upper { \new Voice = "sopranos" \voiceOne \global \FourUp }
	\new Lyrics \lyricsto "sopranos" \KyrieFour
   \new Staff = lower { \clef bass \voiceThree \global \FourDown } >>
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
			\column { \override #'(line-width . 100) \justify-string #"For this holy household, and for those who in faith, piety, and fear of God offer here their worship and praise, let us pray to the Lord."
     		 		}
    			}

		} 


\score { \new PianoStaff << \set PianoStaff.instrumentName = \markup { \italic "People:" }
   \new Staff = upper { \new Voice = "sopranos" \voiceOne \global \FiveUp }
	\new Lyrics \lyricsto "sopranos" \KyrieFive
   \new Staff = lower { \clef bass \voiceThree \global \FiveDown } >>
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
			\column { \override #'(line-width . 100) \justify-string #"Help us, save us, hear us, and defend us, O Triune God, by Your grace."
     		 		}
    			}

		} 


\score { \new PianoStaff << \set PianoStaff.instrumentName = \markup { \italic "People:" }
   \new Staff = upper { \new Voice = "sopranos" \voiceOne \global \SixUp }
	\new Lyrics \lyricsto "sopranos" \KyrieSix
   \new Staff = lower { \clef bass \voiceThree \global \SixDown } >>
	\midi {}
	\layout { 
		indent = 0.68\in
		\context { \Lyrics 
				\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
				\override LyricText #'font-size = #0 }
		\context { \PianoStaff \accepts "Lyrics" }
       		
	}
}



%}
