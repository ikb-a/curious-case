lemma logarithmic_relationship:
  fixes x y :: real
  assumes "x > 0" "y > 0"
  shows "ln(x) + ln(y) = ln(x * y)"
proof -
  have "ln(x * y) = ln(x) + ln(y)" using assms by (simp add: ln_mult)
  thus ?thesis by simp
qed