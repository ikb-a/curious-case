lemma negation_multiplicative:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(-a) * (-b) = a * b"
  by (simp add: assms)