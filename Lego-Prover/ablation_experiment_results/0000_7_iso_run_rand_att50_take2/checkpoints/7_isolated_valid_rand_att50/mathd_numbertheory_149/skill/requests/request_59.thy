lemma congruence_class_representation:
  fixes n m :: nat
  assumes "n mod m = r" and "0 ≤ r" and "r < m"
  shows "n = m * k + r" for some integer k