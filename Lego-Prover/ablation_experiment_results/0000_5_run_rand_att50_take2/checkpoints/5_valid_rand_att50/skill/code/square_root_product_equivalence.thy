lemma square_root_product_equivalence:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
proof -
  have "sqrt (a * b) ^ 2 = a * b" using assms(1) assms(2) by auto
  also have "... = (sqrt a * sqrt b) ^ 2" using assms(1) assms(2) by (auto simp: field_simps)
  finally show ?thesis by (metis real_sqrt_mult)
qed