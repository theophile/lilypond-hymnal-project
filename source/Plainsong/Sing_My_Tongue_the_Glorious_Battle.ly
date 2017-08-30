\version "2.10.29"

\paper
{
	%page-count = 2
	%annotate-spacing = ##t
}

Title = "Sing, My Tongue, The Glorious Battle"

Writer = "Pange Lingua"

Translator = ""

Composer = "Venantius Honorius Fortunatus, 569"

Arranger = ""

Tune = "Sarum Plainsong, Mode III, trans."

Meter = ""

\include "header.ly"



global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\key bes \major	
	\tempo 8 = 96
}

melody = {	
	\cadenzaOn 
	\autoBeamOff
	d'8 d' d' c' f' f' g'[ bes'] bes'4 \divisioMinima
	bes'8[ c''] bes' bes' bes' g' bes' a'[ (g'] f'4) \divisioMaior \bar "" \break
	f'8 g' bes' a' g' f' g' g'4 \divisioMinima
	g'8 a' f' e' d' g' g'4 (c') \divisioMaior \bar "" \break
	f'8 f' f' d' f' g' g' f'4 \divisioMinima
	g'8 a' f' g'[ f'] ees' c' d'4\fermata \bar "|."
	

}

soprano = {	
	\cadenzaOn 
	d'8 d' d' c' f' f' g'[ bes'] bes'4 \divisioMinima
	bes'8[ c'' bes'] bes'4 g'8 bes' a'[ (g'] f'4) \divisioMaior \bar "" \break
	f'8[ g'] bes'[ a' g' f'] g' g'4 \divisioMinima
	g'8[ a'] f'[ e' d' g'] g'4 (c') \divisioMaior \bar "" \break
	f'8 f' f'[ d' f' g'] g' f'4 \divisioMinima
	g'8[ a'] f'[ g' f'] ees'[ c'] d'4\fermata \bar "|."
	

}

alto = {
 	s2 a4 c' d' d'4.~ d'2~ d'
	d'2~ d'8 c' d'4. c'2 d'4 c'2
	a4 d'2 ees'8 f'4 ees' d'4. c'4 a

}

tenor = {
	a4 g f ees f f4. g2 f8 g a4
	bes4 f g8 a c' bes4 e f2 e
	f bes4~ bes8 a4 c' a8 bes a g4~ g8[\fermata f]\fermata 
}

bass = {
	d4 ees d c bes, bes,4. g,4 bes, d2
	bes,2~ bes,8 a, g,4. c4 a, bes, c2
	d4 bes,2 ees8 f4 c d8 bes,4 c8 ees d4\fermata
}

sopWords = \lyricmode
{
	\set stanza = "1. "
	Sing, my tongue, the glo -- rious bat -- tle,
	Sing the end -- ing of the fray;
	Now a -- bove the cross, the tro -- phy,
	Sound the loud tri -- um -- phant lay:
	Tell how Christ the world’s Re -- deem -- er,
	As a vic -- tim won the day.
}
sopWordsTwo = \lyricmode
{
	\set stanza = "2. "
	He, our Mak -- er, deep -- ly griev -- ing
	That the first -- made A -- dam fell,
	When he ate the fruit for -- bid -- den
	Whose re -- ward was death and hell,
	Marked e’en then this Tree the ru -- in
	Of the first tree to dis -- pel.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	\set stanza = "3. "
	Tell how, when at length the full -- ness,
	Of th'ap -- point -- ed time was come,
	Christ, the Word, was born of woman,
	Left for us His heav'n -- ly home;
	Showed us hu -- man life made per -- fect,
	Shone as light a -- mid the gloom.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	\set stanza = "4. "
	Lo! He lies an In -- fant weep -- ing,
	Where the nar -- row man -- ger stands,
	While the mo -- ther -- maid His mem -- bers
	Wraps in mean and lowly bands,
	And the swad -- dling clothes is wind -- ing
	Round His help -- less feet and hands.
}
sopWordsFive = \lyricmode
{
	\set stanza = "5. "
	Thus, with thir -- ty years ac -- com -- plished,
	Went He forth from Na -- za -- reth,
	Des -- tined, de -- di -- cat -- ed, will -- ing,
	Wrought His work, and met His death.
	Like a lamb He hum -- bly yield -- ed
	On the cross His dy -- ing breath.
}

sopWordsSix = \lyricmode
{
	\set stanza = "6. "
	There the nails and spears He suf -- fers,
	Vin -- e -- gar, and gall, and reed;
	From His sa -- cred bo -- dy pierc -- èd
	Blood and wa -- ter both pro -- ceed;
	Pre -- cious flood, which all cre -- a -- tion
	From the stain of sin hath freed.
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

\markup
 \fill-line {
 \hspace #2
 \column {
   \line {
     "7.   "
     \column {
       	"Faithful cross, thou sign of triumph,"
	"Now for us the noblest tree,"
	"None in foliage, none in blossom,"
	"None in fruit thy peer may be;"
	"Symbol of the world’s redemption,"
	"For the weight that hung on thee!"
     }
   }
   \vspace #1
   \line {
     "8.   "
     \column {
       	"Bend thy boughs, O tree of glory!"
	"Thy relaxing sinews bend;"
	"For awhile the ancient rigor"
	"That thy birth bestowed, suspend;"
	"And the King of heavenly beauty"
	"On thy bosom gently tend!"
     }
   }
 }
 \hspace #2
 \column {
   \line {
     "9.   "
     \column {
       	"Thou alone wast counted worthy"
	"This world’s ransom to sustain,"
	"That a shipwrecked race forever"
	"Might a port of refuge gain,"
	"With the sacred blood anointed"
	"Of the Lamb of sinners slain."
     }
   }
   \vspace #1
   \line {
     "10. "
     \column {
       	"To the Trinity be glory"
	"Everlasting, as is meet:"
	"Equal to the Father, equal"
	"To the Son, and Paraclete:"
	"God the Three in One, whose praises"
	"All created things repeat."
     }
   }
 }
 \vspace #2
} 


\include "tag.ly"
