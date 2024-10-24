lemma congruence_properties:
  fixes a b c d :: nat
  assumes "a > 0" "b < a" "c > 0" "d < c"
  shows "b + a * k mod c = d" for some integer k