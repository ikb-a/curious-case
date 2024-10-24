lemma non_negative_sum_of_squares:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" by (simp add: power2_eq_square)
  have "b^2 >= 0" by (simp add: power2_eq_square)
  show ?thesis using add_nonneg_nonneg[of "a^2" "b^2"]
    by (simp add: \<open>a^2 >= 0\<close> \<open>b^2 >= 0\<close>)
qed