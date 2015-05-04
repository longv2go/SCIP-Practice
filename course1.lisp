; p1.2 
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 7 2)))

; p1.3
(define (sum x y z)
	(define s (+ x y z))
	(cond ((and (<= x y) (<= x z)) (- s x))
		((< y z) (- s y))
		(else (- s z))))


; 1.5 
(define (p) (p)) ; p是一个死循环 
