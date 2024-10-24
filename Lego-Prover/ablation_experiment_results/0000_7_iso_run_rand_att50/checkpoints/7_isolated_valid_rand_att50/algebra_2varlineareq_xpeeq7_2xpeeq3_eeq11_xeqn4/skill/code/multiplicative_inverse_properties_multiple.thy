lemma multiplicative_inverse_properties_multiple:
  fixes a b c d :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0" and "c \<noteq> 0" and "d \<noteq> 0"
  shows "(1 / a) * (1 / b) * (1 / c) * (1 / d) = 1 / (a * b * c * d)"
proof -
  have "1 / a * 1 / b * 1 / c * 1 / d = (1 / a * 1 / b) * (1 / c * 1 / d)"
    by (simp add: field_simps)
  also have "... = (1 / (a * b)) * (1 / (c * d))" 
    using assms by (simp add: field_simps)
  also have "... = 1 / ((a * b) * (c * d))" by (simp add: field_simps)
  finally show ?thesis by simp
qed