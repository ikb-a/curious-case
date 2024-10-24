lemma common_denominator:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a / b) - (c / d) = (a * d - b * c) / (b * d)"
proof -
  have "a / b - c / d = (a * d) / (b * d) - (c * b) / (b * d)"
    by (simp add: assms(1) assms(2) field_simps)
  also have "... = (a * d - c * b) / (b * d)"
    by (simp add: field_simps)
  finally show ?thesis by simp
qed