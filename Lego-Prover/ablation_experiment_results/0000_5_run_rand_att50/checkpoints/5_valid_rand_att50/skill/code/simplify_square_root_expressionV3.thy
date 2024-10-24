lemma simplify_square_root_expression:
  fixes a b c :: real
  assumes "c \<noteq> 0" "b \<ge> 0"
  shows "((a - sqrt b) / c)^2 = (a^2 - 2 * a * sqrt b + b) / (c^2)"
proof -
  have left_side: "((a - sqrt b) / c)^2 = (a - sqrt b)^2 / c^2"
    by (simp add: power_divide)
  also have "... = (a^2 - 2 * a * sqrt b + (sqrt b)^2) / c^2"
    by (metis diff_add_eq power2_diff power2_eq_square)
  also have "... = (a^2 - 2 * a * sqrt b + b) / c^2"
    by (smt (verit) assms(2) real_sqrt_pow2_iff)
  finally show ?thesis
    by (simp add: left_side)
qed