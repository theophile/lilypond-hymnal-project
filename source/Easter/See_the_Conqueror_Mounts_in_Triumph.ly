\version "2.10.29"

\paper
{
	%page-count = 1
	%annotate-spacing = ##t
}

Title = "See, the Conqueror Mounts in Triumph"

Writer = "Christopher Wordsworth, 1862"

Translator = ""

Composer = "Traditional Dutch Melody"

Arranger = "Harm. W. D., 1918"

Tune = "IN BABILONE"

Meter = " 8.7.8.7.D."

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\set Score.beatLength = #(ly:make-moment 1 8)
  	\set Score.beatGrouping = #'(2 2 2 2)
	\time 4/4
	\key g \major
	\tempo 4 = 90	
}

soprano = {	
	g'4 fis'8 (e') d'4 g' a' g'8 (a') b'4 g' c'' b'8 (a') b'4 a'8 (g') fis' (g') a' (fis') g'2 \break
	g'4 fis'8 (e') d'4 g' a' g'8 (a') b'4 g' c'' b'8 (a') b'4 a'8 (g') fis' (g') a' (fis') g'2 \break
	g'4 a'8 (b') c''4 b' a' gis' a' a' a' b'8 (c'') d''4 g' a' g'8 (fis') e'4 (d') \break
	g'4 fis'8 (e') d'4 g' a' g'8 (a') b'4 g' c'' b'8 (a') b'4 a'8 (g') fis' (g') a' (fis') g'2
	 \bar "|."
}

alto = {
	d'4 c' b b d' b8 (d') d'4 d' e' d' d' c' d' d' d'2
	d'4 c' b b d' b8 (d') fis' (e') d'4 e' d' d' c' d' c' b2
	b4 e' e'8 (g') f'4 e' e' e' e' d' <d' \tweak #'font-size #-2 fis'  > <d' \tweak #'font-size #-2 g'  > b cis' cis' cis' d'
	d'4 c' b b e' e' e'8 (dis') e'4 fis'8 (e') d'4 d'8 (fis') e'4 d' e'8 (d') d'2
}

tenor = {
	b4 a8 (fis) g4 g fis e8 (fis) g4 g g fis fis g a8 (g) fis (a) b2
	b4 a8 (fis) g4 g fis e8 (fis) <g \tweak #'font-size #-2 b  >4 g g fis fis g a8 (g) fis (a) g2
	e4 fis8 (g) a4. b8 c' (d') e'4 d' c' c' fis g g g b8 (a) g4 (fis)
	b4 a8 (fis) g4 g c'8 (a) e (fis) fis4 g a8 (g) fis4 g c'8 (b) a (b) c' (b) b2
}

bass = {
	g,4 a, b, e d e8 (d) g,4 b, a, d b, e d d g2
	g,4 a, b, e d e8 (d) g,4 b, a, d b, e d d g,2
	e8 (d) c (b,) a,4 d e <e \tweak #'font-size #-2 b  > a4. g8 fis (e) d (c) b,4 e a, a, d2
	<g, \tweak #'font-size #-2 d  >4 <a, \tweak #'font-size #-2 d  > b, e c c b, e a, d g c d d <g, \tweak #'font-size #-2 d g  >2
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
	See, the Conqu -- 'ror mounts in tri -- umph; see the King in roy -- al state,
	Rid -- ing on the clouds, His char -- iot, to His heav'n -- ly pal -- ace gate.
	Hark! the choirs of an -- gel voic -- es joy -- ful al -- le -- lu -- ias sing,
	And the por -- tals high are lift -- ed to re -- ceive their heav'n -- ly King.
}
sopWordsTwo = \lyricmode
{
	Who is this that comes in glo -- ry, with the trump of ju -- bi -- lee?
	Lord of bat -- tles, God of ar -- mies, He has gained the vic -- to -- ry.
	He Who on the cross did suf -- fer, He Who from the grave a -- rose,
	He has van -- quished sin and Sa -- tan, He by death has spoiled His foes.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	While He lifts His hands in bless -- ing, He is part -- ed from His friends
	While their ea -- ger eyes be -- hold Him, He up -- on the clouds as -- cends;
	He Who walked with God and pleased Him, preach -- ing truth and doom to come,
	He, our E -- noch, is trans -- lat -- ed to His ev -- er -- last -- ing home.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
 	Now our heav'n -- ly Aa -- ron en -- ters, with His blood, with -- in the veil;
	Josh -- ua now is come to Can -- aan, and the kings be -- fore Him quail;
	Now He plants the tribes of Is -- rael in their pro -- mised rest -- ing place;
	Now our great E -- li -- jah of -- fers dou -- ble por -- tion of His grace.
}
sopWordsFive = \lyricmode
{
 	He has raised our hu -- man na -- ture in the clouds to God’s right hand;
	There we sit in heav'n -- ly pla -- ces, there with Him in glo -- ry stand:
	Je -- sus reigns, a -- dored by an -- gels; man with God is on the throne;
	Migh -- ty Lord, in Thine a -- scen -- sion we by faith be -- hold our own.
}
sopWordsSix = \lyricmode
{
	Ho -- ly Ghost, Il -- lu -- min -- a -- tor, shed Thy beams up -- on our eyes,
	Help us to look up with Steph -- en, and to see be -- yond the skies,
	Where the Son of Man in gl -- ory stand -- ing is at God’s right hand,
	Beck -- 'ning on His mar -- tyr ar -- my, suc -- cor -- ing His faith -- ful band.
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




\markup \columns {
 \column {
  \line { \hspace #20
     \bold "7.   "
     \column {
       	"See Him, who is gone before us, heavenly mansions to prepare,"
	"See Him, who is ever pleading for us with prevailing prayer,"
	"See Him, who with sound of trumpet, and with His angelic train,"
	"Summoning the world to judgment, on the clouds will come again."
	""
           }
    }
}}

\markup  \columns {
 \column {
  \line {\hspace #20
      \bold "8.   "
     \column {
       	"Raise us up from earth to Heaven, give us wings of faith and love,"
	"Gales of holy aspirations wafting us to realms above;"
	"That, with hearts and minds uplifted, we with Christ our Lord may dwell,"
	"Where He sits enthroned in glory in His heavenly citadel."
	""
           }
    }
}}

\markup \columns {
 \column {
  \line {\hspace #20
      \bold "9.   "
     \column {
       	"So at last, when He appeareth, we from out our graves may spring,"
	"With our youth renewed like eagles, flocking round our heavenly King."
	"Caught up on the clouds of Heaven, and may meet Him in the air,"
	"Rise to realms where He is reigning, and may reign for ever there."
	""
     }           
    }
} }
\markup \columns {
 \column {
  \line {\hspace #20
     \bold "10. "
     \column {
       	"Glory be to God the Father, glory be to God the Son,"
	"Dying, risen, ascending for us, who the heavenly realm has won;"
	"Glory to the Holy Spirit, to one God in persons Three;"
	"Glory both in earth and Heaven, glory, endless glory, be."
	""
    }           
    }
}}

\include "tag.ly"
