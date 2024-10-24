lemma common_denominator:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a / b) - (c / d) = (a * d - b * c) / (b * d)"
proof -
  have "a / b - c / d = (a * d) / (b * d) - (c * b) / (b * d)"
    using assms by (simp add: field_simps)
  then have "... = (a * d - c * b) / (b * d)"
    by (simp add: field_simps)
  thus ?thesis by (metis \<open>a / b - c / d = a * d / (b * d) - c * b / (b * d)\<close> add_divide_eq_if_simps(4) mult.commute mult_delta_right)
qed