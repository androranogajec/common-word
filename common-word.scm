
;Write a procedure common–words that takes two
;sentences as arguments and returns a sentence containing only
;those words that appear both in the first sentence and in the second sentence


(define(common-word first-arg second-arg)
  (define member-both
    (lambda (first-arg second-arg)
      (if (equal? first-arg second-arg)
         (word first-arg)
         '())))
  (every (lambda(first-wd)
          (every (lambda (second-wd)
                  (se (member-both first-wd second-wd)))
                second-arg)) first-arg))


(common-word '(first second third fourth fifth)
             '(first sixts seventh eight third))