lemma nonneg_sum_of_squares:
  fixes a b c :: real
  shows "(a^2 + b^2) + c^2 >= 0"
proof -
  have "a^2 >= 0" by auto
  have "b^2 >= 0" by auto
  have "c^2 >= 0" by auto
  then show ?thesis by (simp add: add_nonneg_nonneg)
qed