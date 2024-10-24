lemma multiply_divide:
  fixes x a b c :: real
  assumes "x > 0" "a * x = c * x - b"
  shows "a = c - b / x"
proof -
  have "a * x = c * x - b" using assms(2) by simp
  then have "a = (c * x - b) / x" using assms(1) by (simp add: divide_simps)
  then show ?thesis by (smt (verit) assms(1) diff_divide_eq_iff)
qed