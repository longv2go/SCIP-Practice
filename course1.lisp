; p1.2 
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 7 2)))

; p1.3
(define (sum x y z)
	(define s (+ x y z))
	(cond ((and (<= x y) (<= x z)) (- s x))
		((< y z) (- s y))
		(else (- s z))))


; p1.5 
(define (p) (p)) ; p是一个死循环 


(define (abs x)
	(if (< x 0)
		(- x)
		x))

(define (square x) (* x x))


; 1.1.7
(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) 
			x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
	(sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		(else else-clause)))

(define (new-sqrt-iter guess x)
	(new-if (good-enough? guess x)
			guess
			(sqrt-iter (improve guess x) 
				x)))

; p1.7
(define (new-good-enough? guess x)
	(< (/ (abs (- guess (improve guess x))) guess) 
		0.01))


(define (new-sqrt-iter guess x)
	(if (new-good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) 
			x)))

; 1.8
(define (cube-root-iter guess x)
	(if (good-enough-cube? guess x)
		guess
		(cube-root-iter (improve-cube guess x) x)))

(define (improve-cube guess x)
	(/ (+ (/ x 
			(* guess guess)) 
		(* 2 guess))
		3))

(define (good-enough-cube? guess x)
	(< (abs (- (cube guess) x)) 0.001))

(define (cube x)
	(* x x x))

(define (cube-root x)
	(cube-root-iter 1.0 x))




