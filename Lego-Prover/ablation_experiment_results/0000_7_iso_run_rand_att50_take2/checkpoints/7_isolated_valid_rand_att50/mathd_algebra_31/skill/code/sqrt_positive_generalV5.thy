lemma sqrt_positive_general:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
proof -
  have "sqrt a ^ 2 = a" by (metis assms nle_le real_sqrt_pow2 verit_comp_simplify1(3))
  then have "sqrt a > 0" using assms by auto
  then show ?thesis by simp
qed