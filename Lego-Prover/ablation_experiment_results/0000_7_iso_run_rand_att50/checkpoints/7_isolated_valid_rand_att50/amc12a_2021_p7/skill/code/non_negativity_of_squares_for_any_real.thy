lemma non_negativity_of_squares_for_any_real:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" and "b^2 >= 0"
    using non_negativity_of_squares_generalized by auto
  then show ?thesis 
    by (simp add: add_nonneg_nonneg)
qed