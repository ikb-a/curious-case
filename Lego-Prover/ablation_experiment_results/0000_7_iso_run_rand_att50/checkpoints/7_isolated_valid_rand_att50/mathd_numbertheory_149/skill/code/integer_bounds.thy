lemma integer_bounds:
  fixes a b :: nat
  assumes "a < b"
  shows "\<exists> k. a + k < b"
proof -
  have "b > a" using assms by simp
  hence "b - a > 0" by auto
  then obtain k where "k = b - a - 1" and "k \<ge> 0" by auto
  have "a + k < b" using `k = b - a - 1`
    by (smt (verit) One_nat_def Suc_pred \<open>0 < b - a\<close> add_Suc_right assms lessI less_le_not_le ordered_cancel_comm_monoid_diff_class.add_diff_inverse)
  thus ?thesis using `k = b - a - 1` by auto
qed