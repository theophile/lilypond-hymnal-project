\version "2.10.29"

\paper
{
	%page-count = 1
}

Title = "O Worship the King"

Writer = "Robert Grant, 1833"

Translator = ""

Composer = "Verses 3-5:  HANOVER  10.10.11.11 (William Croft, 1708)"

Arranger = "Verse 6 Arranged by C. Meredith, 2010"

Tune = "Verses 1-2, 6:  LYONS"

Meter = " 10.10.11.11"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\tempo 4 = 96	
}

voltaFirst = \markup { 1. }

lyonsMelody = {
  \key g \major
  \partial 4
  d'4 g'4 g'4 a'4 b'2 g'4 c''4 c''4 b'4 a'2 \bar "" d'4
  g'4 g'4 a'4 b'2 c''4 d''8. c''16 b'4 a'4 g'2 \bar "" d'4
  d'4 d'4 e'4 fis'4 fis'4 g'4 a'4 a'4 b'4 c''2 \bar "" d'4
  g'4 g'4 a'4 b'4 b'4 c''4 d''8. (c''16) b'4 a'4 
  \set Score.repeatCommands = #(list (list 'volta voltaFirst) ) \partial 2 g'2 \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
  << {g'2} \\ { <b d' g'>4 <b d' g'> } >> <b d' g'>  \set Score.repeatCommands = #'((volta #f))
  \key a \major << { a'4 (gis'!) } \\ { <b e'>2 } >>
}

lyonsAlto = {
  	\key g \major
  	d'4 d' d' d' d'2 d'4 c' d' d' d'2 d'8 c' b4 d' d' d'2 e'4 d'8. e'16 d'4 c' b2 
	d'4 d' d' cis' c' c' b d' d' g' fis'2 d'8 c' b4 d' d' d' d' e' d'8. e'16 d'4 c' b2 s2. s2
}

lyonsTenor = {
  \key g \major
  d'4 b g fis g2 g4 g a g fis2 fis4 g g fis g2 g4 g g fis g2 fis4 fis fis g a a g fis fis g a2 fis4 g g fis g g g g g fis g2 s2. s2
}

lyonsBass = {
  \key g \major
  d4 g, b, d g2 b,4 e fis g d2 d4 g, b, d g2 e4 b,8. c16 d4 d g,2 d4 d d d d d d d d d d2 d4 g, b, d g g e b,8. c16 d4 d
  g,2
  << {g2} \\ { <g, g>4 <g, g> } >> <f, f>4
  \key a \major <e, e>2 


}

%lyonsTransUpper = {
%  {g'2} } c'1
%}
voltaSecond = \markup { 3.-5. }

hanoverSoprano = {
	\bar "|:" \break
	d'4 g' g' a' b'2 d''4 g' a' fis' g'2 \bar "" 
	a'4 b' a' g' fis'2 g'4 a' g'8 (fis') e'4 d'2 \bar "" 
	fis'4 g' a' b' g' e' c'' b' a' g' d''2 \bar "" 
	d'4 e' fis' g' a' d' b' e' a' fis' \set Score.repeatCommands = #(list (list 'volta voltaSecond) ) \partial 2 g'2   \set Score.repeatCommands = #'((volta #f) (volta "6.") end-repeat)
	<b d' g'>4 <b d' g'> < d' f' g' b'> \set Score.repeatCommands = #'((volta #f))
	\key aes \major
	<< { aes'4 g' } \\ { <des' ees' bes'>2 } >> \bar "" \break

}

hanoverAlto = {
	d'4 b d' d' d'2 d'4 e' e' d' d'2
	d'4 d' d'4. cis'8 d'2 d'4 d' e'8 (d') cis'4 d'2
	dis'4 e' e' dis' b b d' d' d' g' fis'2
	d'4 c' c' d' d' d' d' c' e' d' d'2 s2. s2
}

hanoverTenor = {
	\bar "|:"
	d4 g g fis g2 a4 b c' a b2
	fis4 g a a a2 b4 a b g fis2
	b4 b e fis g g a g d'4. cis'8 d'2
	g4 g c' b a fis g g c' a b2 s2. s2
}

hanoverBass = {
	d4 g, b, d g2 fis4 e c d g,2
	d4 g fis e d2 b,4 fis, g, a, d2
	b,4 e c b, e e fis g fis e d2
	b,4 c a, g, fis, b, g, c a, d g,2
	<g, g>4 <g, g> <f, f> 
	\key aes \major <ees ees,>2
}

anthemSoprano = {	
	\tempo 4=82
	ees'4 aes' aes' bes' c''2 aes'4 des'' des'' c'' bes'2 \bar "" 
	ees'4 aes' aes' bes' c''2 des''4 ees''8 des'' c''4 bes' aes'2 \bar "" \break
	ees'4 c'' c'' ces'' bes' bes' aes' g' g' aes' bes'2 \bar "" 
	ees'4 aes'^\markup {\bold \italic rall.} aes' bes' c'' c'' des'' ees''8 (des'') c''4 bes' aes'2. \bar "||" 
	ces''2. (bes'2 ges'4) aes'2. \bar "|."
}

anthemAlto = {
	ees'4 c' c' c' ees'2 ees'4 f' f' f' des'2
	ees'4 ees' g' f' f' (e') ees' ees' f' g' ees'2
	ees'4 aes' aes' aes' ees' ees'8 (des') c'4 des' ees' ees' ees'2
	ees'4 c' c' ees' ees' aes' f' ees'8 (f') ees'4 ees'8 (des') c'2.
	ees'2. (des') ees'
}

anthemTenor = {
	ees4 ees es ees aes2 c'4 aes4 aes bes aes2
	ees4 c' bes aes g2 g4 aes4 aes des' des' (c')
	ees4 ees ees f g g aes bes bes c' des'2
	ees4 ees ees g c' c' aes aes8 (bes) aes4 g ees2.
	aes2. (aes2 bes4) c'2.
}

anthemBass = {
	ees4 aes, aes, g, f,2 f4 bes, bes, aes, ges,2
	ees4 f ees des c2 bes,4 c des ees aes,2
	ees4 ees ees f g g aes bes bes c' des'2
	ees4 aes,^\markup {\bold \italic rall.} aes, ees aes f bes, c8 (des) ees4 ees aes,2.
	fes2. (ges2 bes,4) aes,2.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"

}

skipThree = \repeat unfold 2 { \skip 8 }

sopWords = \lyricmode
{
	O wor -- ship the King, all glo -- rious a -- bove,
	O grate -- ful -- ly sing His pow -- er and His love;
	Our Shield and De -- fend -- er, the An -- cient of Days,
	Pa -- vil -- ioned in splen -- dor, and gird -- ed with praise.
	\skip 1

}
sopWordsTwo = \lyricmode
{
        O tell of His might, O sing of His grace,
	Whose robe is the light, whose can -- \skip 1 o -- py space,
	His char -- iots of wrath the deep thun -- der -- clouds form,
	And dark is His path on the wings of the storm.
	\skip 1

}
sopWordsThree = \lyricmode
{
	The earth with its store of won -- ders un -- told,
	Al -- might -- y, Thy power hath found -- ed of old;
	Es -- tab -- lished it fast by a change -- less de -- cree,
	And 'round it hath cast, like a man -- tle, the sea.
	\skip 1 \skip 1 \skip 1
}
sopWordsFour = \lyricmode
{
	Thy boun -- ti -- ful care, what tongue can re -- cite?
	It breathes in the air, it shines in the light;
	It streams from the hills, it des -- cends to the plain,
	And sweet -- ly dis -- tills in the dew and the rain.
	\skip 1 \skip 1
}
sopWordsFive = \lyricmode
{
	Frail child -- ren of dust, and fee -- ble as frail,
	In Thee do we trust, nor find Thee to fail;
	Thy mer -- cies how ten -- der, how firm to the end,
	Our Ma -- ker, De -- fend -- er, Re -- deem -- er, and Friend.
	\skip 1 \skip 1 
}
sopWordsSix = \lyricmode
{
	O meas -- ure -- less might! In -- ef -- fa -- ble love!
	While an -- gels de -- light to wor -- ship Thee a -- bove,
	The hum -- bler cre -- a -- tion, though fee -- ble their lays,
	With true a -- do -- ra -- tion shall all sing Thy praise!
	A -- men!
}

lyricsBlank = \lyricmode { \repeat unfold 43 { \skip 1 } \skip 1 }

musicScore = \context StaffGroup <<
   \include "insertchords.ly"
    \context Staff = "upper" <<

      \clef treble
      \context Voice = "one" { \global \voiceOne  \transpose g f {\lyonsMelody} \hanoverSoprano \anthemSoprano }
      \context Voice = "two" { \global \voiceTwo  \transpose g f {\lyonsAlto} \hanoverAlto \anthemAlto }
    >>

	\lyricsto "one" \new Lyrics { \set stanza = "1." \sopWords \set stanza = "3." \sopWordsThree \set stanza = "6." \sopWordsSix }
	\lyricsto "one" \new Lyrics { \set stanza = "2." \sopWordsTwo \set stanza = "4." \sopWordsFour }
	\lyricsto "one" \new Lyrics { \set stanza = ""   \lyricsBlank \set stanza = "5." \sopWordsFive }
	%\lyricsto "one" \new Lyrics { \set stanza = "4." \sopWordsFour }
	%\lyricsto "one" \new Lyrics { \set stanza = "5." \sopWordsFive }
	%\lyricsto "one" \new Lyrics { \set stanza = "6." \sopWordsSix }
	%\lyricsto "one" \new Lyrics { \set stanza = "7." \sopWordsSeven }
	%\lyricsto "one" \new Lyrics { \set stanza = "8." \sopWordsEight }

    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" { \global \voiceThree  \transpose g f {\lyonsTenor} \hanoverTenor \anthemTenor }
      \context Voice = "two" { \global \voiceFour  \transpose g f {\lyonsBass} \hanoverBass \anthemBass }
    >>
  >>
	
\include "standard-layout.ly"
\include "tag.ly"
