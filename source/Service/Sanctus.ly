\version "2.12.3"

Title = "Sanctus"

\include "header.ly"

\paper { ragged-right = ##f }

global =
{
	\override Staff.TimeSignature #'stencil = ##f
	\key f \major
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
}

Hallelujah = \lyricmode
{
	"" Hal -- le -- lu -- jah! Praise to God the Fa -- ther, Son, and Ho -- ly Spi -- rit.
	Glo -- ry to You, O Lord, both now and for -- ev -- er. Hal -- le -- lu -- jah!
}

WeLift = \lyricmode
{
	We lift them up to the Lord.
}

Proper = \lyricmode
{
        It is pro -- per and right to do so.
}

Sanctus = \lyricmode
{
        "" Ho -- ly! Ho -- ly! Ho -- ly! Lord, God of Hosts.
	Hea -- ven and earth are full of Your glo -- ry!
	Ho -- san -- na in the High -- est!
	Bless -- ed is he who comes in the name of the Lord.
	Ho -- san -- na in the High -- est!
}

    %\book {


	\markup {
		\line { \italic "Minister:"
			\column { \override #'(line-width . 96) \justify-string #"Arise and hear the good news! Brothers and sisters, your sins are forgiven and your lives are rescued in our Lord Jesus Christ. Believe this, and rejoice!"
     		 		}
    			}
 		}

\markup { \fill-line { \center-column { \bold \fontsize #2 "Opening Acclamation" }}}

\score
{	
	%\transpose es' d'
	<<
		\new Staff
		<<
			%\set Score.midiInstrument = "Orchestral Strings"
			%\set Score.midiInstrument = "Choir Aahs"
			\new Voice = "sopranos"
			{
				\voiceOne
				\global
				%\override Score.MetronomeMark #'transparent = ##t
				\override Score.MetronomeMark #'stencil = ##f
				\override Staff.TimeSignature #'style = #'()
				#(set-accidental-style 'piano)
				\set Score.timing = ##f
  				\override Staff.TimeSignature #'transparent = ##t
				\tempo 4 = 120
				\cadenzaOn
				f'2\fff-> \bar "||"
				<a c' f'>4 <bes des' g'> <c' f' a'> <c' f' a'> \bar "|"
				<c' f' a'> <c' f' a'> <des' f' bes'> <c' f' a'> \times 2/3 { <bes d' g'> ( <c' f' a'> ) <d' g' bes'> } <c' f' a'>2~ \bar "|"
				<c' f' a'>4 <a c' f'> <bes des' g'> <a c' f'> <bes d' g'>4. (<c' f' a'>8) <c' f' a'>1 \bar "|"
				\times 2/3 { <c' f' a' c''>4 <c' f' a' c''> <c' f' a' c''> } <c' f' a' c''> <c' f' a'> <d' f' bes'>2 \bar "|"
				<d' f' bes'>4~ (<d' f' a'>) \times 2/3 { <bes d' g'> <c' a'> <d' g' bes'> } <c' f' a'>2. <a c' f'>4 \bar "|"
				<bes des' g'> <bes des' f'> <bes des' g'>4. (<c' f' a'>8) <c' f' a'>1 \bar "|."
			}

			\new Lyrics = sopranos { s1 }
		>>


		\new Staff
		
		<<
			\clef bass
			%#(set-accidental-style 'modern-voice)
			\new Voice = "tenors"
			{
				\voiceThree
				\global
				<f,, f, f>2\fff->
				<f,, f,>1 <f,, f,> <f,, f,> <f,, f,>1. <f,, f,>1
				<a, a> <bes,, bes,>2 <bes,, bes,>4 <d, d> <g, g>2 <a, a>2. <f, f>4 <bes,, bes,>1 <f,, f,>
			}

		>>
		\context Lyrics = sopranos \lyricsto sopranos \Hallelujah	>>
	

	\midi {}
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


\markup { \fill-line { \center-column { \bold \fontsize #2 "Ascension" }}}


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


	\markup {
		\line { \italic "Minister:"
			\column { \override #'(line-width . 96) \justify-string #"Truly it is fitting, right, wholesome, and beneficial that we should at all times and in all places, give thanks to You O Lord, holy Father, almighty and everlasting God.  Therefore, with angels and archangels, with all the company of heaven, and with all the Church on earth, we laud and magnify Your glorious name, evermore praising You and singing:"
     		 		}
    			}

		} 

\markup { \fill-line { \center-column { \bold \fontsize #2 "Sanctus" }}}

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
%}
