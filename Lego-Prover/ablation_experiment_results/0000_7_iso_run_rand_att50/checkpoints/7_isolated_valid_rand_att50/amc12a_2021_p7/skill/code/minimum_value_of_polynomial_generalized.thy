lemma minimum_value_of_polynomial_generalized:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a^2 + b^2 + (a * b)^2 >= 0"
proof -
  have "a^2 >= 0" using assms(1) by (simp add: power2_eq_square)
  have "b^2 >= 0" using assms(2) by (simp add: power2_eq_square)
  have "(a * b)^2 >= 0" by (simp add: power2_eq_square)
  then show ?thesis using add_nonneg_nonneg[of "a^2 + b^2" "(a * b)^2"]
  proof -
    have "a^2 + b^2 >= 0" by (simp add: add_nonneg_nonneg)
    then show "a^2 + b^2 + (a * b)^2 >= 0" 
      using add_nonneg_nonneg[of "a^2 + b^2" "(a * b)^2"] by auto
  qed
qed