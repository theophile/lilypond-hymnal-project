\version "2.10.29"

Title = "The Day is Surely Drawing Near"

Writer = "Bartholomäus Ringwaldt, 1565"

Translator = "Trans. Philip A. Peter, 1872"

Composer = "Joseph Klug, 1535 (mod. 2010)"

Arranger = "Arr: C. Meredith, 2010"

Tune = "ES IST GEWISSLICH"

Meter = "8.7 8.7 8.8.7"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'stencil = ##f
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 10/4
	\key g \minor	
	\tempo 4 = 100
}

soprano = {	
	\oneVoice r4 \voiceOne g' g' bes' a' g' a' a' bes'2 g' bes'4 c'' d'' bes' a'2 g'
	\oneVoice r4 \voiceOne g' g' bes' a' g' a' a' bes'2 g' bes'4 c'' d'' bes' a'2 g'
	\oneVoice r4 \voiceOne bes' bes' a' g' fis' g' ees' d'2 \oneVoice r4 \voiceOne d'4 g' g' g' fis' g' a' bes'2
	g'2 bes'4 c'' d'' bes' a'2 g'2  \bar "|."
}

alto = {
	s4 d' ees' d' fis' g' ees' d' d'2 ees' d'4 c' fis' d' fis'2 d'
	s4 d' ees' d' fis' g' ees' d' d'2 ees' g'4 g' fis' g'2 fis'4 g'2
	s4 d' d' d' d'8 (c') d'4 d' c' d'2 s4 a bes c' d' d' bes d' d'2
	ees'2 g'4 g' fis' g' g'8 ( fis'16 e' fis'8 d' )  d'2	
}

tenor = {
	\oneVoice r4 \voiceOne bes g g a g g fis g2 g g4 g a bes a2 bes 
	\oneVoice r4 \voiceOne bes g g a g g fis g2 c' d'4 c' d' d' ees' ( d'8 c') bes2
	\oneVoice r4 \voiceOne g g a g a bes a fis2 \oneVoice r4 \voiceOne fis g ees bes a g fis g2
	c'2 d'4 c' a g a2 b2
}

bass = {
	s4 g, c bes, d ees c d g,2 c bes,4 ees d g d2 g
	s4 g, c bes, d ees c d g,2 c g,4 ees a g c ( d ) g,2
	s4 g, bes, d ees d g a d2 s4 d d c g d ees d g,2
	c g4 ees fis g d2 g,2
}

sopWords = \lyricmode
{
The day is sure -- ly draw -- ing near,
	When God’s Son, the An -- oint -- ed,
	Shall with great ma -- jes -- ty ap -- pear,
	As Judge of all ap -- point -- ed.
	All mirth and laugh -- ter then shall cease
	When flames on flames will still in -- crease,
	As Scrip -- ture tru -- ly teach -- eth.
}
sopWordsTwo = \lyricmode
{
	A trum -- pet loud shall then re -- sound,
	And all the earth be sha -- ken;
	Then all who in their graves are found
	Shall from their sleep a -- wa -- ken.
	But all that live shall in that hour,
	By the Al -- migh -- ty’s bound -- less power
	Be changed at His com -- mand -- ing.
}
sopWordsThree = \lyricmode
{
	A book is o -- pened then to all,
	A re -- cord tru -- ly tell -- ing
	What each hath done, both great and small,
	When he on earth was dwell -- ing;
	And ev -- 'ry heart be clear -- ly seen,
	And all be known as they have been,
	In thoughts and words and ac -- tions.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	Then woe to those who scorned the Lord,
	And sought but car -- nal pleas -- ures,
	Who here des -- pised His pre -- cious Word,
	And loved their earth -- ly treas -- ures!
	With shame and trem -- bling they will stand,
	And at the Ju -- dge’s stern com -- mand
	To Sa -- tan be de -- liv -- ered.
}
sopWordsFive = \lyricmode
{
	O Je -- sus, who my debt didst pay
	And for my sin wast smit -- ten
	With -- in the Book of Life, oh, may
	My name be al -- so writ -- ten!
	I will not doubt; I trust in Thee,
	From Sa -- tan Thou hast made me free
	And from all con -- dem -- na -- tion.
}
sopWordsSix = \lyricmode
{
	There -- fore, my In -- ter -- ces -- sor be,
	And for Thy blood and mer -- it
	De -- clare my name from judg -- ment free,
	With all who life in -- her -- it;
	That I may see Thee face to face
	With all thy saints in that blest place
	Which Thou for us hast pur -- chased.
}
sopWordsSeven = \lyricmode
{
	O Je -- sus Christ, do not de -- lay,
	O has -- ten our sal -- va -- tion!
	We of -- ten trem -- ble on our way
	In fear and tri -- bu -- la -- tion.
	Then hear us when we cry to Thee;
	Come, migh -- ty Judge, and make us free
	From ev -- 'ry e -- vil. A -- men!
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
\include "tag.ly"
