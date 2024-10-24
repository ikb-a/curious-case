lemma logarithm_inequality:
  fixes a b :: real
  assumes "a > 0" "b > 0" "a < b"
  shows "ln a < ln b"
proof -
  have "ln b - ln a = ln (b / a)" by (metis assms(1) assms(2) ln_div)
  also have "... > 0" using assms by auto
  finally show ?thesis by simp
qed