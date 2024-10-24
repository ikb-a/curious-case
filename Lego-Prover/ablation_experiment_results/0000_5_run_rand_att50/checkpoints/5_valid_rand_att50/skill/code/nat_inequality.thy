lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "\<exists> c. a + c < b"
proof -
  obtain c where "c = b - a - 1" using assms by (metis nat_less_le)
  have "c \<ge> 0" 
  proof -
    have "b - a - 1 \<ge> 0" using assms by (simp add: nat_le_iff_add)
    thus ?thesis by simp
  qed
  then have "a + c < b" 
    using `c = b - a - 1` by (metis add.commute assms diff_0_eq_0 diff_is_0_eq diff_is_0_eq' diff_less gr_zeroI less_diff_conv less_one verit_sum_simplify)
  thus ?thesis by (metis)
qed