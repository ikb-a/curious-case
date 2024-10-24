lemma non_negativity:
  fixes a b :: real
  shows "a^2 >= 0" "b^2 >= 0" "a^2 + b^2 >= 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  hence "a^2 >= 0" 
    by auto
  have "b^2 = b * b" by (simp add: power2_eq_square)
  hence "b^2 >= 0" 
    by auto
  have "a^2 + b^2 >= 0"
  proof -
    have "0 <= a^2" by (simp add: `a^2 >= 0`)
    moreover have "0 <= b^2" by (simp add: `b^2 >= 0`)
    ultimately show "a^2 + b^2 >= 0" 
      by (metis add_nonneg_nonneg)
  qed
  thus "a^2 >= 0" "b^2 >= 0" "a^2 + b^2 >= 0" 
    by auto
qed