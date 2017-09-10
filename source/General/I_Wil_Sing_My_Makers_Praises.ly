\version "2.10.29"

\paper
{
	page-count = 2
}

Title = "I Will Sing My Maker's Praises"

Writer = "Paul Gerhardt, 1659"

Translator = ""

Composer = "Johann Schop, 1641"

Arranger = ""

Tune = "SOLLT' ICH MEINEM GOTT"

Meter = "8 7.8 7.8 7.7 8.7 7"

\include "header.ly"

global = {
	\override Staff.TimeSignature #'style = #'()
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
	\time 3/4
	\key c \minor		
	\tempo 4 = 120
}

soprano = {	
	\oneVoice r4 \voiceOne c' c' g'2 c''4 b'2 b'4 c''-^ c''-^ \oneVoice r4 \voiceOne ees''2 d''4 c''2 bes'4 c'' a'2 g'2. \break
	\oneVoice r4 \voiceOne c' c' g'2 c''4 b'2 b'4 c''-^ c''-^ \oneVoice r4 \voiceOne ees''2 d''4 c''2 bes'4 c'' a'2 g'2. \break
	g'2 g'4 bes'2 ees'4 d'2 ees'4 f'-^ f'-^ \oneVoice r4 \voiceOne f'2 f'4 f'2 gis'4 g'2 g'4 f'2. \break
	g'2 g'4 g'2 bes'4 aes'2 g'4 f'2. 
	c'2\p d'4 ees'2 d'4 ees'2\< f'4 g'-^ g'-^\! \oneVoice r4 \voiceOne 
	ees'2\mf f'4 g'2 f'4 g'2 a'4 bes'2.\< c''2\f d''4 ees''2 f''4 d''2 d''4 c''2. \bar "|."
}

alto = {
	s4 g g c'2 ees'4 d'2 d'4 ees'-^ ees'-^ s g'2 g'4 ees'2 d'4 ees' d'2 d'2. \break
	s4 g g c'2 ees'4 d'2 d'4 ees'-^ ees'-^ s g'2 g'4 ees'2 d'4 ees' d'2 d'2. \break
	ees'2 ees'4 ees'2 c'4 bes2 bes4 c'-^ c'-^ s d'2 bes4 c'2 c'4 c'2 c'4 aes2. \break
	c'2 c'4 d'2 d'4 c'2 bes4 bes2. 
	c'2 b4 c'2 d'4 c'2 c'4 b-^ b-^ s 
	c'2 bes4 bes2 bes4 bes2 ees'4 d'2. g'2 g'4 g'2 aes'4 g'2 g'4 e'2. \bar "|."
}

tenor = {
	\oneVoice r4 \voiceOne ees ees g2 g4 g2 g4 g-^ g-^ \oneVoice r4 \voiceOne c'2 d'4 g2 g4 g g (fis) b2. \break
	\oneVoice r4 \voiceOne ees ees g2 g4 g2 g4 g-^ g-^ \oneVoice r4 \voiceOne c'2 d'4 g2 g4 g g (fis) b2. \break
	bes2 c'4 bes2 aes4 f2 g4 aes-^ aes-^ \oneVoice r4 \voiceOne bes2 d4 f2 f4 f2 e4 f2. \break
	ees2 ees4 d2 g4 ees2 ees4 d2. 
	g2\p f4 g2 g4 g2\< f4 d-^ g-^\! \oneVoice r4 \voiceOne 
	g2\mf f4 ees2 d4 ees2 ees4 f2.\< g2\f b4 c'2 c'4 c' (a) b4 g2. \bar "|."
}

bass = {
	s4 c c ees2 c4 g2 g,4 c-^ c-^ s c2 b,4 c2 g4 c d2 g,2. \break
	s4 c c ees2 c4 g2 g,4 c-^ c-^ s c2 b,4 c2 g4 c d2 g,2. \break
	ees2 c4 g,2 aes,4 bes,2 g,4 f,-^ f,-^ s bes,2 bes,4 aes,2 f,4 c2 c4 f,2. \break
	c2 c4 bes,2 g,4 aes,2 ees,4 bes,2. 
	ees2 d4 c2 b,4 c2 aes,4 g,-^ g,-^ s 
	c2 d4 ees2 bes,4 ees2 c4 bes,2. ees2 d4 c2 f4 g2 g4 c2. \bar "|."
}

thechords = \chordmode  { \set majorSevenSymbol = "maj7"
	s4 c2:m c2:m/ees c4:m g2. c2.:m s2 g4:/b c2:m g4:m c4:m d4:sus4 d4 g2.:m
	s4 c2:m c2:m/ees c4:m g2. c2.:m s2 g4:/b c2:m g4:m c4:m d4:sus4 d4 g2.:m
	ees2 c4:m ees2:/g aes4 bes2 ees4:/g f2.:m bes2. f2:m/aes f4:m c2:sus4 c4 f2.:m
	c2.:m g2:m/bes g4:m aes2 ees4 bes2. c2:m/ees b4:dim/d c2:m g4:/b c2:m aes4 g2.
	c2:m bes4:/d ees2 bes4 ees2 a4:dim/c bes2.
	c2:m/ees g4:/b c2:m f4:m g4:sus4 g4:sus2 g4 c2.
}

sopWords = \lyricmode
{
I will sing my Ma -- ker’s prai -- ses and in Him most joy -- ful be,
        For in all things I see tra -- ces of His ten -- der love to me.
        No -- thing else than love could move Him with such sweet and ten -- der care
        Ev -- er -- more to raise and bear all who try to serve and love Him.
        All things else have but their day, God’s great love a -- bides for aye.
}
sopWordsTwo = \lyricmode
{
        Yea, so dear did He es -- teem me that His Son he loved so well
        He hath gi -- ven to re -- deem me from the quench -- less flames of hell.
        O Thou Spring of bound -- less bless -- ing, how could e’er my fee -- ble mind
        Of Thy depth the bot -- tom find though my eff -- orts were un -- ceas -- ing?
        All things else have but their day, God’s great love a -- bides for aye.
}
sopWordsThree = \lyricmode
{
	\override LyricText #'font-shape = #'italic
        All that for my soul is need -- ful He with lo -- ving care pro -- vides,
        Nor of that is He un -- heed -- ful which my bo -- dy needs be -- sides.
        When my strength can -- not a -- vail me, when my pow'rs can do no more,
        Doth my God His strength out -- pour; in my need He doth not fail me.
        All things else have but their day, God’s great love a -- bides for aye.
}
sopWordsFour = \lyricmode
{
	\override LyricText #'font-shape = #'italic
	When I sleep, He still is near me, o’er me rests His guar -- dian eye;
	And new gifts and bless -- ings cheer me when the mor -- ning streaks the sky.
	Were it not for God’s pro -- tec -- tion, had His coun -- ten -- ance not been
	Here my guide, I had not seen e’er the end of my aff -- lic -- tion.
	All things else have but their day, God’s great love a -- bides for aye.
}
sopWordsFive = \lyricmode
{
	As a fa -- ther ne -- ver turn -- eth whol -- ly from a way -- ward child,
	For the pro -- di -- gal still yearn -- eth, long -- ing to be re -- con -- ciled,
	So my ma -- ny sins and er -- rors find a ten -- der, pard -- oning God,
	Chas -- tening frail -- ty with His rod, not, in ven -- geance, with His ter -- rors.
	All things else have but their day, God’s great love a -- bides for aye.
}
sopWordsSix = \lyricmode
{
	Since, then, nei -- ther change nor cold -- ness, in my Fa -- ther’s love can be,
	Lo! I lift my hands with bold -- ness, as Thy child I come to Thee.
	Grant me grace, O God, I pray Thee, that I may with all my might,
	All my life -- time, day and night, love and trust Thee and o -- bey Thee
	And, when this brief life is o’er, praise and love Thee ev -- er -- more.
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
