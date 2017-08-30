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
	"" Hal -- le -- lu -- jah! Praise to God the Fa -- ther, Son, __ and Ho -- ly Spi -- rit.
	Glo -- ry to You, O Lord, both now and for -- ev -- er. Hal -- le -- lu -- jah!
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
				%\voiceOne
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
				f'4 g' a' a' \bar "|"
				a' a' bes' a' \times 2/3 { g' (a') bes' } a'2~ \bar "|"
				a'4 f' g' f' g'4. (a'8) a'1 \bar "|"
				\times 2/3 { c''4 c'' c'' } c'' a' bes'2 \bar "|"
				bes'4 (a') \times 2/3 { g' a' bes' } a'2. f'4 \bar "|"
				g' f' g'4. (a'8) a'1 \bar "|."
			}

			\new Lyrics = sopranos { s1 }
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
