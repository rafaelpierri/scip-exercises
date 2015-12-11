(define (pascal-pos line col) (
    (cond ((or (= col 1) (= line col)) 1)
          (else (+ (pascal-pos (- line 1) (- col 1)) (pascal-pos (- line 1) col)))
    )
  )
)

(define (pascal-col line col) (
    (pascal-pos line col)
    (if (< line col) (pascal-col line (+ col 1)))
  )
)

(define (pascal-loop line index) (
    (pascal-col index 1)
    (if (< index line) (pascal-loop line (+ index 1)))
  )
)

(define (pascal line) (
    (pascal-line line 1)
  )
)

