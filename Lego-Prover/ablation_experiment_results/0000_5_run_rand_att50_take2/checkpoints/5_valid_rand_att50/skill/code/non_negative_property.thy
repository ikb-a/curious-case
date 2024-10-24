lemma non_negative_property:
  fixes a b :: real
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "0 \<le> a^2" by (simp add: power2_eq_square)
  have "0 \<le> b^2" by (simp add: power2_eq_square)
  then show "a^2 + b^2 \<ge> 0" 
    using `0 \<le> a^2` `0 \<le> b^2` by (simp add: add_nonneg_nonneg)
qed