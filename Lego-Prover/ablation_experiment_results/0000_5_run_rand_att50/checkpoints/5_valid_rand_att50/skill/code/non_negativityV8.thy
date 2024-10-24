lemma non_negativity:
  fixes a b :: real
  shows "a^2 >= 0" "b^2 >= 0" "a^2 + b^2 >= 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  then show "a^2 >= 0" 
    using mult_nonneg_nonneg[of a a] 
    by auto
  have "b^2 = b * b" by (simp add: power2_eq_square)
  then show "b^2 >= 0" 
    using mult_nonneg_nonneg[of b b] 
    by auto
  show "a^2 + b^2 >= 0" 
    by auto
qed