lemma congruence_properties:
  fixes a b c d :: nat
  assumes "b > 0" "d > 0"
  shows "a mod b = c mod b \<longleftrightarrow> a - c = k * b" for some integer k