\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "Be Gone, Unbelief, My Savior is Near"

Writer = "John Newton, 1779"

Translator = " "

Composer = "Catholisch-Paderbornisches Gesangbuch, 1765"

Arranger = "Harm. Sydney Hugo Nicholson, 1916"

Tune = "PADERBORN"

Meter = " 10.10.11.11"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key g \major
	\tempo 4 = 120	
}

soprano = {	
	\partial 4
	d'4 g' g' a' b'2 b'8 (c'') d''4 b' a' g'2 d'4 g' g' a'
        b'2 b'8 (c'') d''4 b' a' g'2 b'8 (c'') d''4 b' d'' c''8 (b') a'4 c''
        b'8 (a') g'4 b' a'2 d'4 g' g' g'8 (a') b'4 b' b'8 (c'') d''4 b' a' g'2 \bar "|."
}

alto = {
	b4 d' e' fis' g'2 g'4 g' g' fis' d'2 d'4 b e' e'
                                e'4 (dis') e'4 d' e' fis' g'2 g'4 d' g'8 (f') e'4 e' e' d'
                                d'4 d' d'8 (e') fis'2 d'4 d'8 (c') b4 d'4 d' e' fis'8 (g') g'4 g' fis'4 g'2
}

tenor = {
	b4 b b d' d'2 e'4 d' d' c' b2 a4 g b a
                                fis2 g4 g g c' c' (b) d' d' d' b c'4. b8 a4
                                b8 (c') d' (c') b4 d'2 fis4 g g g8 (fis) g4 g d'8 (e') d'4 d'4. c'8 b2
}

bass = {
	g,4 g e d g (fis) e b, b,8 (c) d4 g2 fis4 e4 e8 (d) c4
                                b,2 e4 b,4 c d g2 g8 (a) b4 g gis a4. g8 fis4
                                g8 (a) b (a) g4 d2 d8 (c) b,8 (a,) g,4 b,8 (d) g8 (fis) e4 d8 (c) b,4 b,8 (c) d4 g,2
}

dropLyrics =
{
    \override LyricText #'extra-offset = #'(0 . -8)
    \override LyricHyphen #'extra-offset = #'(0 . -8)
    \override LyricExtender #'extra-offset = #'(0 . -8)
}

raiseLyrics =
{
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	Be -- gone! un -- be -- lief, my Sa -- vior is near,
        And for my re -- lief will sure -- ly ap -- pear;
        By prayer let me wres -- tle, and he will per -- form:
        With Christ on my ves -- sel, I smile thro' the storm.
}
sopWordsTwo = \lyricmode
{
        Though dark be my way, yet he is my guide:
        'Tis mine to o -- bey, 'tis his to pro -- vide;
        %Though walls may be bro -- ken and hel -- pers all fail,
        Though cis -- terns be bro -- ken, and crea -- tures all fail,
        The word he has spo -- ken shall sure -- ly pre -- vail.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
        His love in time past for -- bids me to think
        He'll leave me at last in trou -- ble to sink;
        Each sweet E -- be -- ne -- zer I have in re -- view,
        Con -- firms his good plea -- sure to bring me quite through.
}
sopWordsFour = \lyricmode
{
	%\override LyricText #'font-shape = #'italic
	Why should I com -- plain, when sor -- rows op -- press,
        Temp -- ta -- tion, or pain, or want, or dis -- tress?
        The heirs of sal -- va -- tion, I know from his Word,
        Through much tri -- bu -- la -- tion must fol -- low their Lord.
}
sopWordsFive = \lyricmode
{
	The pro -- mise se -- cure through a -- ges hath stood,
        That all we en -- dure shall work for our good:
        Though pain -- ful at pre -- sent, the path we have found:
        It leads where true plea -- sures for -- ev -- er a -- bound.
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
		s4 g4 e:m d g2 e4:m g2:/b d4:7 g2 d4:/fis e2:m a4:m/c b:sus4 b e:m g:/b e:m/c d:7 g:sus4 g2
		g4:/b g e:/gis a2:m d4:7/fis g2. d g4:/b g g8:/b d g4 e:m b8:m/d c g2:/b d4:7 g2
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
