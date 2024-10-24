lemma sqrt_difference_formula:
  fixes a b c :: real
  assumes "a \<ge> 0" "b \<ge> 0" "c = sqrt (a + b)"
  shows "c^2 = a + b"
proof -
  have "c^2 = (sqrt (a + b))^2" using assms by simp
  thus ?thesis by (smt (verit) add_mono assms(1) assms(2) real_sqrt_pow2_iff)
qed