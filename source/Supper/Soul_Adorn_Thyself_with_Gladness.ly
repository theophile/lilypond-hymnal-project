\version "2.10.29"

\paper
{
	page-count = 1
}

Title = "Soul, Adorn Thyself with Gladness"

Writer = "Johann Franck, 1649"

Translator = "Trans. Catherine Winkworth, 1858, alt."

Composer = "Johann Crüger, 1649"

Arranger = ""

Tune = "SCHMÜCKE DICH"

Meter = " 8.8.8.8.8.8.8.8."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 4/4
	\key d \major
	\tempo 2 = 80	
}

soprano = {	
	fis'2 e' d'4 e' fis' a' g'2 fis' a' fis' g'4 fis'8 (e') d'4 fis' e'2 d'
	fis'2 e' d'4 e' fis' a' g'2 fis' a' fis' g'4 fis'8 (e') d'4 fis' e'2 d'
	a' b'4 d''~ d'' d''4 cis'' a' b'2 a' a' b'4 d''~ d'' d''4 cis'' a' b'2 a'
	e' fis' g'4 g' fis' e' e' (dis') e'2 fis' a' g'4 fis' e' d' e'2 d' \bar "|."
}

alto = {
	d'2 cis' b4 cis' d' e' d' (cis') d'2 e' d' d'4 cis' b d' d' (cis') d'2
	d'2 cis' b4 cis' d' e' d' (cis') d'2 e' d' d'4 cis' b d' d' (cis') d'2
	d'2 d'4 fis'~ fis' d'4 g' a' a' (g') fis'2 d'2 d'4 fis'~ fis' e'4 e' e' fis' (e') cis'2
	cis' dis' e'4 e' dis' e' c' (b) b2 d' d' d'4 d' cis' d' d' (cis') a2 
}

tenor = {
	a2 a fis4 a a a b (a) a2 a a b4 a8 (g) fis4 a b (a) fis2
	a2 a fis4 a a a b (a) a2 a a b4 a8 (g) fis4 a b (a) fis2
	a g4 a~ a a4 g d' d'2 d' fis g4 a~ a gis4 a a a (gis) a2
	a a b4 b b g a (fis) g2 a a b4 a a fis a2 fis2
}

bass = {
	d2 a, b,4 a, d cis e (a,) d2 cis d g,4 a, b, fis, g, (a,) d2
	d2 a, b,4 a, d cis e (a,) d2 cis d g,4 a, b, fis, g, (a,) d2
	fis g4 d~ d fis4 e fis g2 d d g4 d~ d b,4 a, cis d (e) a,2
	a fis e4 g, b, c a, (b,) e2 d fis, g,4 d a, b, a,2 d
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
	Soul, a -- dorn thy -- self with glad -- ness,
        Leave be -- hind all gloom and sad -- ness;
        Come in -- to the day -- light's splen -- dor,
        There with joy thy prais -- es ren -- der
        Un -- to Him whose grace un -- bound -- ed
        Hath this won -- drous sup -- per found -- ed.
        High o'er all the heav'ns He reign -- eth,
        Yet to dwell with thee He deign -- eth.
}
sopWordsTwo = \lyricmode
{
        Has -- ten as a bride to meet Him
        And with lov -- ing rev -- 'rence greet Him;
        For with words of life im -- mor -- tal
        Now He knock -- eth at thy por -- tal.
        Haste to ope the gates be -- fore Him,
        Say -- ing, while thou dost a -- dore Him,
        Suf -- fer, Lord, that I re -- ceive Thee,
        And I ne -- ver -- more will leave Thee.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
        He who craves a pre -- cious trea -- sure
        Nei -- ther cost nor pain will mea -- sure;
        But the price -- less gifts of hea -- ven
        God to us hath free -- ly giv -- en.
        Though the wealth of earth were prof -- fered,
        Naught would buy the gifts here of -- fered:
        Christ's true bo -- dy, for thee riv -- en,
        And His blood, for thee once giv -- en.
}
sopWordsFour = \lyricmode
{
	Ah, how hun -- gers all my spir -- it
        For the love I do not mer -- it!
        Oft have I, with sighs fast throng -- ing,
        Thought up -- on this food with long -- ing,
        In the bat -- tle well -- nigh worst -- ed,
        For this cup of life have thirst -- ed,
        For the Friend who here in -- vites us
        And to God Him -- self u -- nites us.
}
sopWordsFive = \lyricmode
{
	In my heart I find as -- cend -- ing
        Ho -- ly awe, with rap -- ture blend -- ing,
        As this mys -- ter -- y I pon -- der,
        Fill -- ing all my soul with won -- der,
        Bear -- ing wit -- ness at this hour __ \skip1
        Of the great -- ness of Thy pow -- er;
        Far be -- yond all hu -- man tell -- ing
        Is the pow'r with -- in Him dwell -- ing.
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

#(define-markup-command (vspace layout props amount)
 (number?)
 (let ((amount (* amount 3.0)))
   (if (> amount 0)
       (ly:make-stencil "" (cons 0 0) (cons 0 amount))
       (ly:make-stencil "" (cons 0 0) (cons amount amount)))))

\markup
 \fill-line {
 \hspace #4
 \column {
   \line {
     "6. "
     \column {
       "Human reason, though it ponder,"
       "Cannot fathom this great wonder"
       "That Christ's body e'er remaineth"
       "Though it countless souls sustaineth,"
       "And that He His blood is giving"
       "With the wine we are receiving."
       "These great mysteries unsounded"
       "Are by God alone expounded."
     }
   }
   \vspace #1
   \line {
     "7. "
     \column {
       "Jesus, Sun of Life, my Splendor,"
       "Jesus, Thou my Friend most tender,"
       "Jesus, Joy of my desiring,"
       "Fount of life, my soul inspiring, --"
       "At Thy feet I cry, my Maker,"
       "Let me be a fit partaker"
       "Of this blessed food from heaven,"
       "For our good, Thy glory, given."
     }
   }
 }
 \hspace #4
 \column {
   \line {
     "8. "
     \column {
       "Lord, by love and mercy driven"
       "Thou hast left Thy throne in heaven"
       "On the cross for us to languish"
       "And to die in bitter anguish,"
       "To forego all joy and gladness"
       "And to shed Thy blood in sadness."
       "By this blood, redeemed and living,"
       "Lord, I praise Thee with thanksgiving."
     }
   }
   \vspace #1
   \line {
     "9. "
     \column {
       "Jesus, Bread of Life, I pray Thee,"
       "Let me gladly here obey Thee."
       "By Thy love I am invited,"
       "Be Thy love with love requited;"
       "From this Supper let me measure,"
       "Lord, how vast and deep love's treasure."
       "Though the gifts Thou here dost give me"
       "As Thy guest in heaven receive me."
     }
   }
 }
 \vspace #2
}

\include "tag.ly"
