lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "a + 1 \<le> b"
proof -
  have "a + 1 \<le> b" using assms
  proof -
    have "a + 1 \<le> a + 1 + (b - a - 1)" 
      using assms by simp
    also have "... = b" by (metis Suc_eq_plus1 Suc_eq_plus1_left Suc_leI assms cancel_ab_semigroup_add_class.diff_right_commute diff_diff_left le_add_diff_inverse)
    ultimately show ?thesis by simp
  qed
  thus ?thesis by simp
qed