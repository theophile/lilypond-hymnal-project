
#(ly:set-option 'point-and-click #f)



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
