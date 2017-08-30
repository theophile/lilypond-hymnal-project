\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "Come, Thou Holy Spirit, Come!"

Writer = "12th Century Latin Hymn"

Translator = "Trans. Edward Caswall, 1849"

Composer = "Samuel Webbe, 1782"

Arranger = ""

Tune = "VENI SANCTE SPIRITUS"

Meter = " 7.7.7.7.7.7."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key ees \major
	\tempo 4 = 96
	
}

soprano = {	
	e'4 e' e' fis' gis'4. fis'8 e'2 fis'4 gis' fis' b' b' ais' b'2 cis''4 b' a' gis' fis'4. e'8 e'2
	e'4 a' gis' a' cis'' b' a'2 gis'4 b' a' gis' fis'4. e'8 dis'2 fis'4 a' gis' fis' e' dis' e'2 \bar "|."
}

alto = {
	b4 cis' b dis' e' dis' b2 b4 e' dis' dis' fis' fis'8 e' dis'2 e'4 e' cis'8 (dis') e'4 e' dis' e'2
	cis'4 e' d' cis' e'4. d'8 cis'2 b4 dis' e' e'8 (dis') cis'4 cis' b2 dis'4 e'8 (fis') e'4 cis' b b b2
}

tenor = {
	gis4 a b a b4. a8 gis2 b4 b b b cis' cis' b2 a4 gis a b b a gis2
	a4 a b a a gis a2 e4 fis e b b ais b2 fis4 cis'8 (b) b4 a gis fis8 (a) gis2
}

bass = {
	e4 a gis fis e b, e2 dis4 e b, gis fis fis b,2 a4 e fis e b, b, e2
	a,4 cis b, fis cis8 (d) e4 a,2 e4 b, cis e fis fis, b,2 b,4 cis8 (dis) e4 a, b, b, e2
}

sopWords = \lyricmode
{
        Come, Thou Ho -- ly Spir -- it, come!
	And from Thy ce -- les -- tial home
	Shed a ray of light di -- vine!
	Come, Thou Fa -- ther of the poor!
	Come, Thou Source of all our store!
	Come, with -- in our bo -- soms shine!
}

sopWordsTwo = \lyricmode
{
	Thou, of com -- fort -- ers the best;
	Thou, the soul's most wel -- come Guest;
	Sweet re -- fresh -- ment here be -- low;
	In our la -- bor, rest most sweet;
	Grate -- ful cool -- ness in the heat;
	So -- lace in the midst of woe.
}

sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	O most bless -- èd Light di -- vine,
	Shine with -- in these hearts of Thine,
	And our in -- most be -- ing fill!
	Where Thou art not, man hath naught,
	No -- thing good in deed or thought,
	No -- thing free from taint of ill.
}

sopWordsFour = \lyricmode
{
	Heal our wounds, our strength re -- new;
	On our dry -- ness pour Thy dew;
	Wash the stains of guilt a -- way;
	Bend the stub -- born heart and will;
	Melt the fro -- zen, warm the chill;
	Guide the steps that go a -- stray.
}

sopWordsFive = \lyricmode
{
 	On the faith -- ful, who a -- dore
	And con -- fess Thee, ev -- er -- more
	In Thy sev'n -- fold gift de -- scend;
	Give them vir -- tue's sure re -- ward
	Give them Thy sal -- va -- tion, Lord;
	Give them joys that nev -- er end.
}

sopWordsSix = \lyricmode
{
 	 
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
      \context Voice = "one" { \global \voiceOne \transpose e ees \soprano }
      \context Voice = "two" { \global \voiceTwo \transpose e ees \alto }
    >>

	\include "lyrics-midstaff.ly"

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree \transpose e ees \tenor }
      \context Voice = "two" { \global \voiceFour \transpose e ees \bass }
    >>
	
	\include "lyrics-understaff.ly"

  >>
	
\include "standard-layout.ly"
\include "tag.ly"
