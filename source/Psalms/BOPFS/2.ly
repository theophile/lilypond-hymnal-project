\version "2.10.29"

\paper
{
        page-count = 1
}

Title = "Why Do Heathen Nations Rage?"

Writer = "Based on Psalm 2"

Translator = "The Book of Psalms for Singing, 1998 (Psalm 2)"

Composer = "Jakob Hintze, (1678)"

Arranger = "Harm. J.S. Bach"

Tune = "SALZBURG (HINTZE)"

Meter = " 7.7.7.7.D"

\include "header.ly"
\header {       title = \Title
                subtitle = "Psalm 2" }


global = {
	\time 4/4
	\key d \major
	\tempo 4 = 96
	\autoBeamOff
}

soprano = {
	a'4 d'' a' b' a'4. g'8 fis'2 a'4 a' g' fis' e' e' d'2 
	a'4 d'' a' b' a'4. g'8 fis'2 a'4 a' g' fis' e' e' d'2
	e'4 e' fis'8[ gis'] a'4 a' gis' a'2 b'4. cis''8 d''4 d'' cis'' cis'' b'2
	fis'4 fis' b' a' a' gis' a'2 b'4 a' g' fis' e' e' d'2 \bar "|."
}

alto = {
	d'4 d' d' d' d' cis' d'2 d'4 d'8[ cis'] b[ cis'] d'4 d' cis' d'2
	d'4 d' d' d' d' cis' d'2 d'4 d'8[ cis'] b[ cis'] d'4 d' cis' d'2
	cis'4 cis' d' cis' fis' e'8[ d'] cis'2 e'8[ fis'] g'4 fis' fis' fis' fis'8[ e'] d'2
	d'4 d' d' cis' d' d' cis'2 d'4 d'8[ cis'] b[ cis'] d'4 d' cis' d'2
}

tenor = {
	fis4 fis8[ g] a4 g8[ fis] e[ d] e4 d2 fis4 fis g a b a fis2
	fis4 fis8[ g] a4 g8[ fis] e[ d] e4 d2 fis4 fis g a b a8[ g] fis2
	a4 a a a b b a2 g4. a8 b4 b b ais b2
	a4 a g8[ fis] e4 d8[ fis] e[ d] e2 g4 fis g a b a8[ g] fis2
}

bass = {
	d4 b, fis, g, a, a, d2 d4 d e fis g a d2
	d4 b, fis, g, a, a, d2 d4 d e fis g a d2
	a,4 a, d fis8[ e] d4 e a,2 e4 e b,8[ cis] d[ e] fis4 fis b,2
	d4 d g, a, b, b, a,2 g,4 d e fis g a d2
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	d4 b:m d:/fis g a:sus4 a d1 e4:m d:/fis e:m7/g a d2
	d4 b:m d:/fis g a:sus4 a d1 e4:m d:/fis e:m7/g a:7 d2
	a2 d4 fis4:m b:m7/d e:7 a2 e2:m b4:m b:m/d fis:sus4 f:7 b2:m
	d2 g4 a b:m7 e:7/b a2 g4 d e:m d:/fis g a:7 d2
}

skipFour = \repeat unfold 4 { \skip 8 }

sopWords = \lyricmode
{
	Why do hea -- then na -- tions rage? Why do peo -- ples fol -- ly mind?
	Kings of earth in plots en -- gage; Rul -- ers are in league com -- bined;
	Then a -- gainst Je -- ho -- vah high, And a -- gainst Mes -- si -- ah's sway,
	"\"Let" us break their "bands,\"" they cry, "\"Let" us cast their cords a -- "way.\""
}
sopWordsTwo = \lyricmode
{
	But the Lord will scorn them all; He will laugh Who sits on high.
	Then His wrath will on them fall; Sore dis -- pleased He will re -- ply:
	"\"Yet" ac -- cord -- ing to My will I have set My King to reign,
	And on Zi -- on's ho -- ly hill My A -- noint -- ed I'll main -- "tain.\""
}
sopWordsThree = \lyricmode
{
	His de -- cree I will make known: Un -- to Me the \markup { \smallCaps "Lord" } did say,
	"\"Thou" art My be -- lov -- ed Son; I've be -- got -- ten Thee this day.
	Ask of Me, and Thee I'll make Heir to earth and na -- tions all;
	Them with i -- ron Thou shalt break, Dash -- ing them in piec -- es "small.\""
}
sopWordsFour = \lyricmode
{
	There -- fore, kings, be wise, give ear; Hear -- ken, judg -- es of the earth;
	Serve the \markup { \smallCaps "Lord" } with god -- ly fear; Min -- gle trem -- bling with your mirth.
	Kiss the Son, His wrath to turn, Lest ye per -- ish in the way,
	For His an -- ger soon will burn. Blessed are all that on Him stay.
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
