# Scheme / Racket

- `car` - returns the first element of a list (requires a nonempty list as its argument)
- `cdr` - returns the remainder of the list (requires a nonempty list as its argument)

### examples:

```scheme
(car '(a b c)) ⇒ a

(cdr '(a b c)) ⇒ (b c)

(cdr '(a)) ⇒ ()

(car (cdr '(a b c))) ⇒ b

(cdr (cdr '(a b c))) ⇒ (c) 

(car '((a b) (c d))) ⇒ (a b)

(cdr '((a b) (c d))) ⇒ ((c d))
```

- `cons` - constructs lists. It takes two arguments. The second argument is usually a list, and in that case `cons` returns a list.

### examples:

```scheme
(cons 'a '()) ⇒ (a)

(cons 'a '(b c)) ⇒ (a b c)

(cons 'a (cons 'b (cons 'c '()))) ⇒ (a b c)

(cons '(a b) '(c d)) ⇒ ((a b) c d) 

(car (cons 'a '(b c))) ⇒ a

(cdr (cons 'a '(b c))) ⇒ (b c)

(cons (car '(a b c))
      (cdr '(d e f))) ⇒ (a e f)

(cons (car '(a b c))
      (cdr '(a b c))) ⇒ (a b c)
```

- `list` - similar to `cons`, except that it takes an arbitrary number of arguments and always builds a proper list.

### examples:

```scheme
(list 'a 'b 'c) ⇒ (a b c)

(list 'a) ⇒ (a)

(list) ⇒ ()
```

- `sub1` - subtracts one. It takes one argument and subtracts one from it.
- `add1` - add one. It takes one argument and adds one to it.

### examples:

```scheme
(add1 1) ⇒ 2

(sub1 2) ⇒ 1
```

### functions:

```scheme
(define pow
  (lambda (x n)
    (if (< n 0)
      0
      (if (= n 0)
        1
        (* x (pow x (sub1 n)))
      )
    )
  )
)

(pow 2 10) ⇒ 1024
(pow 3 -1) ⇒ 0

(define factorial
  (lambda (n)
    (if (= n 0)
      1
      (* n (factorial (sub1 n)))
    )
  )
)

(factorial 5) ⇒ 120
(factorial 0) ⇒ 1

(fibonacci n
  (lambda (n)
    (if (= n 1)
      1
      (fibonacci )
    )
  )
)

```

### utility functions

- sum of list of numbers

```scheme
(define (sum list)
  (if (null? list)
    0
    (+ (car list) (sum (cdr list)))
  )
)

(sum (list 1 2 3 4 5)) ⇒ 15
```

- average of list of numbers

```scheme
(define (average list)
  (when (< 0 (length list))
    (/ (sum list) (length list))
  )
)

(average (list 1 2 3 4 5)) ⇒ 3
```

- flatten a nested list into a flat list

```scheme
(define (flatten lst)
  (match lst
    [(list) (list)]
    [(? (compose not list?)) (list lst)]
    [(list x xs ...) (append (flatten x) (flatten xs))]))

(flatten (list 1 2 (list 3 4 (list 5 6) 7) 8)) ⇒ '(1 2 3 4 5 6 7 8)
```

- zip two lists together

```scheme
(define ziplst
  (lambda (a b)
    (define size (min (length a) (length b)))
    (map 
      (lambda (i)
        (list (list-ref a i)(list-ref b i))
      )
      (range 0 size 1)
    )
  )
)

(ziplst '(1 2 3) '(a b c)) ⇒ '((1 a) (2 b) (3 c)))
```