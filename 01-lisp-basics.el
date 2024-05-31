(+ 3 4)
;; => 7

(+ 1 2)
;; => 3

(message "Name is: %s" "Joe")
;; => Name is: Joe

(insert "something")somethingsomethingsomethingsomething
;; => nil

(warn "Name is: %s" "Joe")
;; => t

(length "abc")
;; => 3

(substring "abc123" 0 3)
;; => abc

(concat "some" "thing")
;; => something

(split-string "xy_007_cat" "_")
;; => (xy 007 cat)

(string-trim " abc     ")
;; => abc

(upcase "abc")
;; => ABC

(format "Name: %s, age: %d" "jane" 25)
;; => Name: jane, age: 25

(+ 4 5 1)
;; => 10

(- 9 2)
;; => 7

(- 9 2 3)
;; => 4

(* 2 3)
;; => 6

(* 2 3 2)
;; => 12

(/ 7 2)
;; => 3

(/ 7 2.)
;; => 3

(/ 7 2.0)
;; => 3.5

(integerp 2)
;; => t

(integerp 2.)
;; => t

(integerp 2.0)
;; => nil

(floatp 2)
;; => nil

(floatp 2.)
;; => nil

(floatp 2.0)
;; => t

(float 3)
;; => 3.0

(truncate 3.3)
;; => 3

(truncate 3.8)
;; => 3

(floor 3.3)
;; => 3

(floor 3.8)
;; => 3

(ceiling 3.3)
;; => 4

(round 3.4)
;; => 3

(string-to-number "3")
;; => 3

(number-to-string 3)
;; => 3

(stringp (number-to-string 3))
;; => t

(format "%d" 3)
;; => 3

(if nil "true" "false")
;; => false

(if 'nil "true" "false")
;; => false

(if () "true" "false")
;; => false

(if '() "true" "false")
;; => false

(if (list) "true" "false")
;; => false

(if () "true" "false")
;; => false

(if t "true" "false")
;; => true

(if y "true" "false")
;; => Error: (void-variable y)

(if 0 "true" "false")
;; => true

(if "" "true" "false")
;; => true

(if (vector ) "true" "false")
;; => true

(and t nil)
;; => nil

(and t nil t t t t t)
;; => nil

(or t nil)
;; => t

(not t)
;; => nil

(not nil)
;; => t

(not 2)
;; => nil

(= 3 3)
;; => t

(= 3.8 3.8)
;; => t

(= 3 3.0)
;; => t

(= 3 3.1)
;; => nil

(= 3 3.00000000000)
;; => t

(= 3 3.00000000000000000000001)
;; => t

(= 3 3.000000000000001)
;; => nil

(/= 3 4)
;; => t

(string-equal "abc" "abc")
;; => t

(string-equal "abc" "Abc")
;; => nil

(string-equal 'abc 'abc)
;; => t

(string-equal "abc" 'abc)
;; => t

(equal 3 3)
;; => t

(equal 3.0 3.0)
;; => t

(equal 3 3.0)
;; => nil

(equal '(3 4 5) '(3 4 5))
;; => t

(equal '(3 4 5) '(3 4 "5"))
;; => nil

(equal "e" "e")
;; => t

(equal 'abc 'abc)
;; => t

(eq 'x 'x)
;; => t

(eq 2 2)
;; => t

(let (aa bb)
  (setq aa '(3 4))
  (setq bb '(3 4))
  (eq aa bb))
;; => nil

(let (aa bb)
  (setq aa '(3 4))
  (setq bb aa)
  (eq aa bb))
;; => t

(not (equal 3 4))
;; => t

;;; Variable

(setq x 3)
;; => t
(equal x 3)
;; => t

(equal
 (setq xa 1 xb 2 xc 3)
 3)
;; => t

(equal
 (setq xa 1
       xb (+ xa 3))
 5)
;; => nil

(let (a b)
  (setq a 3)
  (setq b 4)
  (+ a b))
;; => 7

(let ((a 3) (b 4))
  (+ a b))
;; => 7

(equal
 (let* ((xa 3)
        (xb xa))
   xb
   )
 3)
;; => t


;;; Conditionals

(progn
  (message "aa")
  (message "bb"))
;; => bb

(if (< 1 2)
    (progn
      (message "a1")
      (message "a2"))
    (progn
      (message "b1")
      (message "b2")))
;; => a2

(if (< 3 2)
    (progn 8)
  (progn 7))
;; => 7

(if (< 3 2)
    (progn 8))
;; => nil

;;; Loop

(let ((x 0))
  (while (< x 4)
    (print (format "number is %d" x))
    (setq x (1+ x))))
;; => nil

(let ((xx '(a b c)))
  (while xx
    (print (format "%s" (pop xx)))
    (sleep-for 1)))
;; => nil

(let (xx ii)
  (setq xx [0 1 2 3 4 5])
  (setq ii 0)

  (while (< ii (length xx))
    (insert (format "%d" (aref xx ii)))
    (setq ii (1+ ii))))

(dotimes (i 4)
  (insert (number-to-string i)))

;;; Lisp Data Structure

(eq nil '())
;; => t

(eq nil (list))
;; => t

(length '(3 4))
;; => 2

(make-vector 3 0)
;; => [0 0 0]

(let ((xx 3))
  (vector 1 2 xx))
;; => [1 2 3]

(setq xx [3 yy 5])
;; => [3 yy 5]

(aref xx 1)
;; => yy

(symbolp (aref xx 1))
;; => t

(setq xx [3 4 5])
;; => [3 4 5]

(fillarray xx 1)
;; => [1 1 1]

xx
;; => [1 1 1]

(fillarray [3 4 5] 1)
;; => [1 1 1]

(length [7 4 5])
;; => 3

(aref ["a" "b" "x"] 0)
;; => a

(let ((xx ["3" "4" "5"]))
  (aset xx 0 "b")
  (print (format "%s" xx)))
;; => [b 4 5]

(setq xx
      #s(hash-table
          size 30
          test equal
          data (
                "aa" 3
                "bb" 9
                "cc" 5)))
;; => #s(hash-table size 30 test equal rehash-size 1.5 rehash-threshold 0.8125 data (aa 3 bb 9 cc 5))

(gethash "aa" xx)
;; => 3

(setq xx (make-hash-table :test 'equal))
;; => #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ())

(puthash 'aa 9 xx)
;; => 9

(setq xx (make-hash-table))
;; => #s(hash-table size 65 test eql rehash-size 1.5 rehash-threshold 0.8125 data ())

(puthash 'aa 9 xx)
;; => 9

(puthash 'bb 10 xx)
;; => 10

(remhash 'aa xx)
;; => nil

xx
;; => #s(hash-table size 65 test eql rehash-size 1.5 rehash-threshold 0.8125 data (bb 10))

(defun mkug-print-hash-table (hash-table)
  "Print the contents of HASH-TABLE."
  (maphash (lambda (key value)
             (print (format "Key: %s, Value: %s" key value)))
           hash-table))
;; => mkug-print-hash-table

(mkug-print-hash-table xx)
;; => nil

(let ((xx (make-hash-table :test 'equal)))
  (puthash 'aa 9 xx)
  (gethash 'bb xx)
  (gethash 'bb xx 10)
  )
;; => 10


(let (xx)
  (setq xx (make-hash-table :test 'equal))
  (puthash "aa" 19 xx)
  (puthash "bb" 20 xx)
  (puthash "dd" 17 xx)
  (puthash "cc" 21 xx)
  (maphash
   (lambda (k v)
     (princ (format "%s, %s" k v))
     (princ "\n"))
   xx))
;; => nil

(let (xx)
  (setq xx
        #s(hash-table
            size 30
            test equal
            data (
                  "aa" 3
                  "bb" 9
                  "cc" 5
                  )))
  (require 'subr-x)
  (hash-table-keys xx))
;; => (cc bb aa)

(let (xx)
  (setq xx
        #s(hash-table
            size 30
            test equal
            data (
                  "aa" 3
                  "bb" 9
                  "cc" 5
                  )))
  (require 'subr-x)
  (hash-table-values xx))
;; => (5 9 3)

;;; Function

(defun ff ()
  "print yay"
  (princ "Yay!"))
;; => ff

(ff)
;; => Yay!

(defun gg (x)
  "add two"
  (+ x 2))
;; => gg

(gg 100)
;; => 102

(defun ff (x y)
  "add x and y"
  (+ x y))
;; => ff

(ff 100 200)
;; => 300

(defun ff (aa bb &optional cc dd)
  "test optional params"
  (interactive)
  (message "%s %s %s %s" aa bb cc dd))
;; => ff

(ff 1 2)
;; => 1 2 nil nil

(ff 1 2 3)
;; => 1 2 3 nil

(ff 1 2 3 4)
;; => 1 2 3 4

(defun ff (aa bb &rest cc)
  "test rest arguments"
  (message "%s" cc))
;; => ff

(ff "1" "2" "3" "4")
;; => (3 4)

((lambda (x)
   (let (a b c)
     (setq a 1)
     (setq b 2)
     (setq c 3)
     (list a b c x))) 100)
;; => (1 2 3 100)

((lambda (x)
   (1+ x)) 3)
;; => 4

(mapcar
 (lambda (x) (aref x 1))
 [[1 2] [3 4] [5 6]])
;; => (2 4 6)

(fset 'f1 (lambda (y) "add 1 to arg" (1+ y)))
;; => (lambda (y) add 1 to arg (1+ y))

(f1 2)
;; => 3

;;; Lisp Symbol

(set (quote x) 3)
;; => 3

(setq x 3)
;; => 3

(setq x 4)
;; => 4

(defun evaluate (x)
  (eval x))
;; => evaluate

(evaluate '(+ 1 2))
;; => 3

(evaluate '(quote (+ 1 2)))
;; => (+ 1 2)

(fboundp 'setq)
;; => t

(fboundp 'xyz)
;; => nil

(boundp 'tab-width)
;; => t

(boundp 'xyz)
;; => nil

(featurep 'dired)
;; => t
