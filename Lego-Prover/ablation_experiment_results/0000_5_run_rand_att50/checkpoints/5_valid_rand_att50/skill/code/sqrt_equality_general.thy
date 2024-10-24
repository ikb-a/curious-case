lemma sqrt_equality_general:
  fixes a b :: real
  assumes "sqrt a = sqrt b" "a \<ge> 0" "b \<ge> 0"
  shows "a = b"
proof -
  have "sqrt a * sqrt a = a" using assms(2) sqrt_square_nonneg by simp
  have "sqrt b * sqrt b = b" using assms(3) sqrt_square_nonneg by simp
  then have "sqrt a * sqrt a = sqrt b * sqrt b" using assms(1) by simp
  then show ?thesis by (metis assms(1) real_sqrt_eq_iff)
qed