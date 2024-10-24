lemma sqrt_limit_generalized:
  fixes x y :: real
  assumes "x >= 0" "y >= 0" "y = sqrt(x + y)"
  shows "x = y^2 - y"
proof -
  have "y^2 = x + y" using assms(3) by (smt (verit) add_mono assms(1) assms(2) real_sqrt_pow2_iff)
  thus ?thesis by (simp add: add_diff_cancel)
qed