\version "2.12.3"
#(ly:set-option 'point-and-click #f)
#(set-global-staff-size 15.87)


\paper
{
        #(define fonts
        (make-pango-font-tree "TeX Gyre Pagella"
                           "Nimbus Sans"
                           "Luxi Mono"
                            (/ 20 20)))

	%before-title-spacing = #'((space . 8) (padding . 1) (minimum-distance . 8))
        %between-scores-system-spacing = #'((space . 24) (padding . 1) (minimum-distance . 16))
	%annotate-spacing = ##t
	#(set-paper-size "letter")
	indent = 0.0
	line-width = 180 \mm
	%between-system-space = #'((space . 80) (padding . 1) (minimum-distance . 8))
	%between-system-padding = #2
	%ragged-bottom = ##f
	top-margin = 0.5 \in
	bottom-margin = 0.5 \in
	%foot-separation = 0.1 \mm
	%head-separation = 0.1 \mm
	%after-title-space = 0.1 \mm
	%before-title-space = 0.1 \mm
	%paper-height = 32 \cm
	%print-page-number = ##t
	%print-first-page-number = ##t
	%between-title-space = 0.1 \mm
	%ragged-last-bottom = ##f
	%horizontal-shift
	%system-count
	left-margin = 0.7 \in
	%right-margin = 0.6 \in
	%paper-width
	%printallheaders
	%systemSeparatorMarkup
	print-page-number = ##t
  	print-first-page-number = ##t
	first-page-number = 1 
 	oddHeaderMarkup = \markup \fill-line { " " }
  	evenHeaderMarkup = \markup \fill-line { " " }
  	oddFooterMarkup = \markup { \fill-line {
     	\bold \fontsize #3 \on-the-fly #print-page-number-check-first
     	\fromproperty #'page:page-number-string } }
  	evenFooterMarkup = \markup { \fill-line {
     	\bold \fontsize #3 \on-the-fly #print-page-number-check-first
     	\fromproperty #'page:page-number-string } }
}

%\markup { \fill-line { \center-column { \bold \fontsize #5 \Title }}}
\header { title = \Title }
