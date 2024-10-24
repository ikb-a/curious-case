lemma fraction_combination:
  fixes a b c d :: real
  assumes "d \<noteq> 0" "b \<noteq> 0"
  shows "(a / b) - (c / d) = (a * d - b * c) / (b * d)"
proof -
  have "a / b - c / d = (a * d) / (b * d) - (c * b) / (b * d)"
    by (simp add: assms(1) assms(2) field_simps)
  then show ?thesis by (smt (verit) assms(1) assms(2) diff_frac_eq mult.commute)
qed