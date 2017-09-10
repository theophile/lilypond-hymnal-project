\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "All Praise to God, Who Reigns Above"

Writer = "Johann J. Schütz, 1675"

Translator = ""

Composer = "Melchior Vulpius, 1609"

Arranger = ""

Tune = "LOBET DEN HERRN"

Meter = " 8.7.8.7.8.8.7"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key f \major
	\tempo 4 = 96	
}

soprano = {	
	c''4 c'' c'' a'4. (g'8) f'4 e' (f') d' c'2. c''4 c'' a' d''4. (c''8) bes'4 a' (g'2) f'2 \oneVoice r4 \voiceOne
	c''4 c'' c'' a'4. (g'8) f'4 e' (f') d' c'2. c''4 c'' a' d''4. (c''8) bes'4 a' (g'2) f'2 \oneVoice r4 \voiceOne
	f'4 f' g' a'2 c''4 bes'2 a'4 g'2. f'4 g' a' g'2 f'4 e'2 d'4 c'2.
	f'4 a' c'' bes'4. (a'8) g'4 f'2 (e'4) f'2. \bar "|."
}

alto = {
	f'4 f' e' d'2 c'4 c'2 b4 c'2. c'4 f' f' f'2 d'4 c'2. a2 s4
	f'4 f' e' d'2 c'4 c'2 b4 c'2. c'4 f' f' f'2 d'4 c'2. a2 s4
	c'4 d' e' f'2 f'4 f'2 f'4 e'2. d'4 c' c' c'2 d'4 d'4 (c') b c'2.
	c'4 f' f' f'2 d'4 c' (d' c') c'2.
}

tenor = {
	a4 a g f4. (g8) a4 g (a) g e2. a4 a c' bes4. (c'8) f4 f2 (e4) f2 \oneVoice r4 \voiceOne
	a4 a g f4. (g8) a4 g (a) g e2. a4 a c' bes4. (c'8) f4 f2 (e4) f2 \oneVoice r4 \voiceOne
	a4 a c' c'2 c'4 d'2 c'4 c2. a4 g f e2 a4 g2 g4 e2.
	f4 c' c' d'4. (c'8) bes4 a (g2) a2.
}

bass = {
	f4 f c d4. (e8) f4 c (f,) g, c2. f4 f f bes,4. (a,8) bes,4 f, (c2) f,2 s4
	f4 f c d4. (e8) f4 c (f,) g, c2. f4 f f bes,4. (a,8) bes,4 f, (c2) f,2 s4
	f4 d c f,2 a,4 bes,2 f4 c2. d4 e f c2 f,4 g,2 g,4 c2. a,4 f, a, bes,4. (f,8) g,4 a, (bes, c) f,2.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

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
	All praise to God, who reigns a -- bove,
        The God of all cre -- a -- tion,
        The God of won -- ders, pow'r, and love,
        The God of our sal -- va -- tion!
        With hea -- ling balm my soul He fills,
        The God who ev -- 'ry sor -- row stills,
        \dropLyrics To God all praise and glo -- ry! \raiseLyrics
}
sopWordsTwo = \lyricmode
{
        What God's al -- might -- y pow'r hath made
        His gra -- cious mer -- cy keep -- eth;
        By mor -- ning dawn or ev -- 'ning shade
        His watch -- ful eye ne'er sleep -- eth;
        With -- in the king -- dom of His might
        Lo, all is just and all is right,
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
        I cried to Him in time of need:
        Lord God, oh, hear my call -- ing!
        For death He gave me life in -- deed
        And kept my feet from fall -- ing.
        For this my thanks shall end -- less be;
        Oh, thank Him, thank our God, with me,
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	The Lord for -- sa -- keth not His flock,
        His cho -- sen gen -- er -- a -- tion;
        He is their Re -- fuge and their Rock,
        Their Peace and their Sal -- va -- tion.
        As with a mo -- ther's ten -- der hand
        He leads His own, His cho -- sen band,
}
sopWordsFive = \lyricmode
{
	Ye who con -- fess Christ's ho -- ly name,
        To God give praise and glo -- ry!
        Ye who the Fa -- ther's pow'r pro -- claim,
        To God give praise and glo -- ry!
        All i -- dols un -- der foot be trod,
        The Lord is God! The Lord is God!
}
sopWordsSix = \lyricmode
{
	Then come be -- fore His pres -- ence now
        And ban -- ish fear and sad -- ness;
        To your Re -- deem -- er pay your vow
        And sing with joy and glad -- ness:
        Though great dis -- tress my soul be -- fell,
        The Lord, my God, did all things well,
}

sopWordsSeven = \lyricmode
{
 
}

sopWordsEight = \lyricmode
{
 
}

musicScore = \context StaffGroup <<
   \include "insertchords.ly"
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
