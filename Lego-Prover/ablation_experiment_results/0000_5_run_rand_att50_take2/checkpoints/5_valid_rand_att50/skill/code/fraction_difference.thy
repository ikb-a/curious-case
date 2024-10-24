lemma fraction_difference:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a / b) - (c / d) = (a * d - c * b) / (b * d)"
proof -
  have "a / b - c / d = a / b + - (c / d)" by simp
  then have "a / b + - (c / d) = (a * d) / (b * d) + (-c * b) / (b * d)"
    using assms by (simp add: field_simps)
  then show ?thesis by (smt (verit) assms(1) assms(2) diff_frac_eq)
qed