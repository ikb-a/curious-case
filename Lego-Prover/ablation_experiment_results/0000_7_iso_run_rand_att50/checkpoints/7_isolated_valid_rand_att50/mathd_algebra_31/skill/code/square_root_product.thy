lemma square_root_product:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
proof -
  have "sqrt (a * b) ^ 2 = a * b" by (smt (verit) assms(1) assms(2) real_sqrt_pow2_iff split_mult_pos_le)
  also have "... = (sqrt a) ^ 2 * (sqrt b) ^ 2" by (metis abs_if_raw assms(1) assms(2) real_sqrt_abs real_sqrt_abs2 real_sqrt_power verit_comp_simplify1(3))
  also have "... = (sqrt a * sqrt b) ^ 2" by (auto simp: field_simps)
  finally show ?thesis by (metis real_sqrt_mult)
qed