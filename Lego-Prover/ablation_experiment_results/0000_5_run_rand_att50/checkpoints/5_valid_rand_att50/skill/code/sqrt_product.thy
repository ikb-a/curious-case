lemma sqrt_product:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
proof -
  have "sqrt (a * b) * sqrt (a * b) = a * b" using assms by auto
  then show ?thesis using assms by (metis real_sqrt_mult)
qed