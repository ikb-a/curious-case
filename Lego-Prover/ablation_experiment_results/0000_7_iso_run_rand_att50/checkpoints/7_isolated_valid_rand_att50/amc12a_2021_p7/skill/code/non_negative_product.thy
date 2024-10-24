lemma non_negative_product:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a * b >= 0"
proof -
  have "a * b = (0 + a) * (0 + b)" by auto
  then show ?thesis using assms by (metis mult_nonneg_nonneg)
qed