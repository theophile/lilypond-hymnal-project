\version "2.10.29"

Title = "This Little Babe"

Writer = "Robert Southwell, 1561-95"

Translator = ""

Composer = "Melchior Vulpius, 1609"

Arranger = "Harm. J.S. Bach"

Tune = "DAS NEUGEBORNE KINDELEIN"

Meter = " 8.8.8.8.8.8."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key c \major
	\tempo 4 = 96	
}

soprano = {	
	d'4 d' d' a'4. (g'8 f'4) a' g' f' e'2 \oneVoice r4 \voiceOne a'4 a' b' c''2 b'4 a'2 gis'4 a'2 \oneVoice r4 \voiceOne
	d'4 d' d' a'4. (g'8 f'4) a' g' f' e'2 \oneVoice r4 \voiceOne a'4 a' b' c''2 b'4 a' gis'2 a'2 \oneVoice r4 \voiceOne
	a'4 g' e' f'4. (g'8 a'4) g'4 f' e' f'2 \oneVoice r4 \voiceOne c''4 d'' c'' a'4. (g'8 f'4) e' d' cis' d'2. \bar "|." 
}

alto = {
	d'4 d' d' f'4. (g'8 c'4) f'4 e' d' cis'2 s4 e'4 f' g' g'2 g'4 e' (f') e' e'2 s4
	d'4 d' d' e'2 (d'4) d' cis' d' cis'2 s4 d'8 (e') f'4 f' e'2 d'4 c' b2 cis' s4
	d'4 b a a (d' c') d' c' c' c'2 s4 f'4 f' e' e'2 (d'4) b a a a2.
}

tenor = {
	a4 a b d' (c' a) c' c' a a2 \oneVoice r4 \voiceOne cis'4 d' d' e'2 d'4 cis' (d') b cis'2 \oneVoice r4 \voiceOne
	f8 (g) a4 g8 (f) e8 (f g4 a) f g a a2 \oneVoice r4 \voiceOne a4 d' d' c' (fis) gis a e2 e \oneVoice r4 \voiceOne
	f4 e e d (b a) b a g a2 \oneVoice r4 \voiceOne a4 g g e (a2) g4 f e f2.
}

bass = {
	d4 f g d4. (e8 f4) f, c d a,2 s4 a4 d g c2 g4 a (d) e a,2 s4
	d8 (e) f4 e8 (d) cis2 (d4) f e d a,2 s4 f4 e8 (d) gis,4 a,2 b,4 c8 (d) e4~ <e \parenthesize e, > a,2 s4
	d4 d cis d4. (e8 f4) b,4 c c f,2 s4 f4 bes, c cis2 (d4) g, a, a, <d, d>2. 
}

sopWords = \lyricmode
{
        This lit -- tle Babe __ so few days old,
	Is come to rif -- le Sa -- tan's fold;
	All hell doth at __ His pre -- sence quake,
	Though he him -- self for cold do shake;
	For in this weak, __ un -- arm -- ed wise,
	The gates of hell __ He will sur -- prise.
}

sopWordsTwo = \lyricmode
{
	With tears He fights __ and wins the field,
	His na -- ked breast stands for a shield;
	His bat -- t'ring shot __ are bab -- ish cries,
	His ar -- rows made of weep -- ing eyes,
	His mar -- tial en -- signs cold and need,
	And fee -- ble flesh __ His war -- rior's steed.
}

sopWordsThree = \lyricmode
{
	%\override LyricText #'font-shape = #'italic
	His camp is pitch -- ed in a stall,
	His bul -- wark but a bro -- ken wall;
	The crib His trench, __ hay stalks His stakes,
	Of shep -- herds He His mus -- ter makes;
	And thus as sure __ His foe to wound,
	The an -- gels' trumps __ a -- lar -- um sound.
}

sopWordsFour = \lyricmode
{
	My soul with Christ __ join thou in fight,
	Stick to the tents that He hath dight;
	With -- in His crib __ is sur -- est ward,
	This lit -- tle Babe will be thy guard;
	If thou wilt foil __ thy foes with joy,
	Then flit not from __ the heav'n -- ly Boy. 
}

sopWordsFive = \lyricmode
{

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
		%g2:m d4:m g4:m/bes c4:m6 d4 g2:m
		%g2:m c4.:m g8:m f4 bes2.
		%bes4 f4 bes4 ees4 c4:m g8:m/d d8 g2:m
		%ees4 c4:m d4:m bes4 d8 g8:m/d d4 g2 
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
