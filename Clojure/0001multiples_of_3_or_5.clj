
;;
;; Clojure 1.12.0.1530
;; 0001multiples_of_3_or_5.clj
;; 
;; Copyright 2025 @GitHub JoergEm
;;
;; This program is WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
;; 
(defn summe [num]
  (reduce + (range num 1000 num) ) )
(defn sum_of_multiples []
  (- (+ (summe 3) (summe 5) ) (summe 15) ) )
(println (sum_of_multiples) )