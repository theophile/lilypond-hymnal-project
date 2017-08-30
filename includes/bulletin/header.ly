
#(ly:set-option 'point-and-click #f)
#(set-global-staff-size 14)


\paper
{
	#(set-paper-size "bulletin")
	indent = 0.0
	line-width = 129 \mm
	%between-system-space = 0.1 \mm
	%between-system-padding = #1
	%ragged-bottom = ##f
	%top-margin = 0.5 \in
	%bottom-margin = 0.5 \in
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
	left-margin = 2 \mm
	%right-margin = 0.6 \in
	%paper-width
	%printallheaders
	%systemSeparatorMarkup
	%print-page-number = ##t
  	%print-first-page-number = ##t
	%first-page-number = 1 
 	%oddHeaderMarkup = \markup \fill-line { " " }
  	%evenHeaderMarkup = \markup \fill-line { " " }
  	oddFooterMarkup = \markup { \fill-line {} }
     	%\bold \fontsize #3 \on-the-fly #print-page-number-check-first
     	%fromproperty #'page:page-number-string } }
  	%evenFooterMarkup = \markup { \fill-line {
     	%\bold \fontsize #3 \on-the-fly #print-page-number-check-first
     	%\fromproperty #'page:page-number-string } }
}

%  BACKPORT OF THE VSPACE COMMAND FROM THE 2.13 BRANCH

#(define-markup-command (vspace layout props amount)
 (number?)
 (let ((amount (* amount 3.0)))
   (if (> amount 0)
       (ly:make-stencil "" (cons 0 0) (cons 0 amount))
       (ly:make-stencil "" (cons 0 0) (cons amount amount)))))


%  CODE TO ALIGN THE CONTENTS OF SUBSEQUENT COLUMNS
%  http://lsr.dsi.unimi.it/LSR/Item?id=464

#(define-markup-command (columns layout props args) (markup-list?)
   (let ((line-width (/ (chain-assoc-get 'line-width props
                         (ly:output-def-lookup layout 'line-width))
                        (max (length args) 1))))
     (interpret-markup layout props
       (make-line-markup (map (lambda (line)
                                (markup #:pad-to-box `(0 . ,line-width) '(0 . 0)
                                  #:override `(line-width . ,line-width)
                                  line))
                               args)))))

divisioMinima = {
  \once \override BreathingSign #'stencil = #ly:breathing-sign::divisio-minima
  \once \override BreathingSign #'extra-X-extent = #'(-1.0 . 0)
  \breathe
}
divisioMaior = {
  \once \override BreathingSign #'stencil = #ly:breathing-sign::divisio-maior
  \once \override BreathingSign #'Y-offset = #0
  \once \override BreathingSign #'extra-X-extent = #'(-1.0 . 0)
  \breathe
}
divisioMaxima = {
  \once \override BreathingSign #'stencil = #ly:breathing-sign::divisio-maxima
  \once \override BreathingSign #'Y-offset = #0
  \once \override BreathingSign #'extra-X-extent = #'(-1.0 . 0)
  \breathe
}
finalis = {
  \once \override BreathingSign #'stencil = #ly:breathing-sign::finalis
  \once \override BreathingSign #'Y-offset = #0
  \once \override BreathingSign #'extra-X-extent = #'(-1.0 . 0)
  \breathe
}

\header { title = \Title }
