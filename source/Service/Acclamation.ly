\version "2.12.3"

Title = "Opening Acclamation"

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

\markup {
		\line { \italic "Minister:"
			\column { \override #'(line-width . 100) \justify-string #"Arise and hear the good news! Brothers and sisters, your sins are forgiven and your lives are rescued in our Lord Jesus Christ. Believe this, and rejoice!"
     		 		}
    			}
 		}

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
