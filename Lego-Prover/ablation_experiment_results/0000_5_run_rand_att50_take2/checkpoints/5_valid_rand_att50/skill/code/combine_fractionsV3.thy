lemma combine_fractions:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a / b) + (c / d) = (a * d + c * b) / (b * d)"
proof -
  have "a / b + c / d = (a * d) / (b * d) + (c * b) / (b * d)"
    by (simp add: assms(1) assms(2) field_simps)
  then have "a / b + c / d = ((a * d) + (c * b)) / (b * d)"
    by (metis add_frac_eq assms(1) assms(2))
  thus ?thesis
    by simp
qed