\version "2.10.29"

\paper
{
        page-count = 1
}

Title = "Jehovah's Perfect Law"

Writer = "Based on Psalm 19:7-14"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 19B)"

Composer = "Traditional English Melody (1826)"

Arranger = ""

Tune = "MILLENIUM"

Meter = " 6.6.6.6.8.8."

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 19:7-14" }


global = {
	\time 4/4
	\key a \major
	\tempo 4 = 132
	\autoBeamOff
}

soprano = {
	\partial 4
	e'4 a' a' a' gis'8[ fis'] e'2. e'4 fis' a' gis' b' a'2.
	a'8[ b'] cis''4 cis'' cis'' cis'' e''2. cis''4 b' a' gis' fis' e'2.
	e'4 b'2 cis''4. (b'8) a'2 e' d'' e''4. (d''8) cis''2.
	e'4 fis' (gis') a' (b') cis''2 e''4 (d'') cis''2 b' a'2. \bar "|."
}

alto = {
	e'8[ d'] cis'4 cis' e' e'8[ d'] cis'2. e'4 d' fis' e' d' cis'2.
	cis'8[ e'] e'4 e' e' e' e'2. a'4 gis' fis' e' dis' e'2.
	e'4 d'2 e'4. (d'8) cis'2 e' e' e' e'2.
	e'4 d'2 cis'4 (e') e'2 e'4 (fis') e'2 e'4 (d') cis'2.
}

tenor = {
	gis4 a a a a a2. cis'4 a d' b gis a2.
	a8[ gis] a4 a a a cis'2. e'4 e' cis'8[ dis'] e'4 b8[ a] gis2.
	gis4 gis2 gis a a b4 (a) gis2 a2.
	a4 a (gis) cis' (b) a2 a a gis a2.
}

bass = {
	e4 a, a, cis d a,2. a,4 d b, e e a,2.
	e4 a, a, a, a, a, (cis e) a b b b b, e2.
	e4 e2 e a4 (e) cis (e) gis (fis) e2 a2.
	cis4 d (e) fis (gis) a2 cis4 (d) e2 e a,2.
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	e4 a2 a4:/cis d a1 d4 d:6/b e2 a2.
	e4 a1 a1 e4:/b b:7 e:/b b:7 e1
	e2:7 cis4.:m/e e8:7 a1 e:7 a
	d4 e fis:m e:/gis a2 a4:/cis d a2:/e e:7 a2.
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	Je -- ho -- vah's per -- fect law Re -- stores the soul a -- gain;
	\markup { \smallCaps "His" } test -- ti -- mo -- my sure Gives wis -- dom un -- to men;
	The pre -- cepts of the \markup { \smallCaps "Lord" } are right,
	And fill the heart with great de -- light.
}
sopWordsTwo = \lyricmode
{
	The \markup { \smallCaps "Lord's" } com -- mand is pure, En -- light -- en -- ing the eyes;
	Je -- ho -- vah's fear is clean, More last -- ing than the skies.
	The judg -- ments of the \markup { \smallCaps "Lord" } ex -- press
	His truth and per -- fect right -- eous -- ness.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
 	They're more to be de -- sired Than stores of fin -- est gold;
	Than ho -- ney from the comb More sweet -- ness far they hold.
	With warn -- ings they Thy ser -- vant guard;
	In keep -- ing them is great re -- ward.
}
sopWordsFour = \lyricmode
{
 	His err -- ors who can know? Cleanse me from hid -- den stain.
	Keep me from wil -- ful sins, Nor let them o'er me reign.
	And then I up -- right shall ap -- pear
	And be from great trans -- gres -- sion clear.
}
sopWordsFive = \lyricmode
{
	Let all the words I speak And all the thoughts with -- in
	Come up be -- fore Thy sight And Thine ap -- prov -- al win.
	O Thou Je -- ho -- vah, un -- to me
	My rock and my Re -- deem -- er be.
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
