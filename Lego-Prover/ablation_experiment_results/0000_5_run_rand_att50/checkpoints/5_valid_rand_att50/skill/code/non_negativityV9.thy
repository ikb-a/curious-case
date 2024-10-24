lemma non_negativity:
  fixes a b :: real
  shows "a^2 >= 0" "b^2 >= 0" "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" and "b^2 >= 0" 
    by (simp_all add: power2_eq_square)
  have "a^2 + b^2 >= 0"
    using `a^2 >= 0` `b^2 >= 0` 
    by (simp add: add_nonneg_nonneg)
  thus "a^2 >= 0" "b^2 >= 0" "a^2 + b^2 >= 0"
    by auto
qed