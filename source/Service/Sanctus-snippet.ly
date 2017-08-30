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

Sanctus = \lyricmode
{
        "" Ho -- ly! Ho -- ly! Ho -- ly! Lord, God of Hosts.
	Hea -- ven and earth are full of Your glo -- ry!
	Ho -- san -- na in the High -- est!
	Bless -- ed is he who comes in the name of the Lord.
	Ho -- san -- na in the High -- est!
}
	\markup {
		\line { \italic "Minister:"
			\column { \override #'(line-width . 100) \justify-string #"Truly it is fitting, right, wholesome, and beneficial that we should at all times and in all places, give thanks to You O Lord, holy Father, almighty and everlasting God.  Therefore, with angels and archangels, with all the company of heaven, and with all the Church on earth, we laud and magnify Your glorious name, evermore praising You and singing:"
     		 		}
    			}

		} 

\score
{
	<<
		\new Staff
		<<
			\new Voice = "sopranos"
			{
				\voiceOne
				\global
				\override Score.MetronomeMark #'stencil = ##f
				#(set-accidental-style 'piano)
				\tempo 4 = 120
				\cadenzaOn
				<bes d' f' bes'>2\fff-> \bar "||"
				<d' f' bes'>4 <d' f' bes'> <d' f' a'> <d' f' a'> <bes d' g'>2 <a d' f'> <bes d' g'> <c' f'>4 <c' e'> <a c' f'>1 \bar "|"
                                \times 2/3 { <c' f'a'>4 <c' f'a'> <c' f'a'> } <c' f'a'>4 <c' f'a'> <d' f' bes'>2 <d' f' bes'>4 <bes d' f'> <c' f' a'> <c' f' a'>2 \bar "|"
				<f' a' c''>4 <f' a' c''> <f' a' c''> <c' f' bes'> <c' f' a'> <d' f' bes'>2 (<bes d' f'>) <c' f' a'>1 \bar "|"
                                \times 2/3 { f'4 f' f' } f' f' f'2 f'4 f' 
				<< { \voiceOne ees'2 des'4 ees' } 
				   \new Voice {
        			   \voiceTwo
        			   <ges bes>1
      				   }
   				>>
				\oneVoice
				< a c' f'>2. \bar "|"
				<f' a' c''>4 <f' a' c''> <f' a' c''> <c' f' bes'> <c' f' a'> <des'! f' bes'>2 (<bes des' f'>) <c' f' a'>1 \bar "|."
			}

			\new Lyrics = sopranos { s1 }
		>>


		\new Staff
		
		<<
			\clef bass
			\new Voice = "tenors"
			{
				\voiceThree
				\global
                                <bes,, bes,>2-> 
				<bes,, bes,> <d, d> <g, g> <d, d> <bes,, bes,> <c, c> <f, f>1
				<f, f>1 <bes,, bes,> <f, f>2.
				<a, a>4 <a, a>2 <f, f> <bes,, bes,> <d, d> <f, f>1
				<f,, f,>\breve <f,, f,>1 <f,, f,>2.
				<a, a>4 <a, a>2 <f, f> <bes,, bes,> <des, des> <f, f>1
			}

		>>
		\context Lyrics = sopranos \lyricsto sopranos \Sanctus
	>>
	
	\layout
	{	
		\context
		{
			\Lyrics
			\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
			\override LyricText #'font-size = #0
                }
	}
}
