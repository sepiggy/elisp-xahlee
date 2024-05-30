(+ 3 4)
;; => 7

(+ 1 2)
;; => 3

(message "Name is: %s" "Joe")
;; => Name is: Joe

(insert "something")somethingsomething
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
