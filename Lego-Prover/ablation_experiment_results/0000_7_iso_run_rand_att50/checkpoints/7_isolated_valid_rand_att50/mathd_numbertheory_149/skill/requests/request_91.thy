lemma congruence_manipulation:
  fixes a b c d :: nat
  assumes "a > 0" "b < a" "c > 0" "d < c"
  shows "b + a * k ≡ d mod c" for some integer k, if b + a * k is a solution.