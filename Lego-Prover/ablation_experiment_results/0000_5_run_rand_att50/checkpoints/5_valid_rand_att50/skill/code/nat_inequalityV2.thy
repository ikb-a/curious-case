lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "\<exists> c. a + c < b"
proof -
  obtain c where "c = b - a - 1" using assms by (metis diff_less)
  have "a + c < b" 
  proof -
    have "c + a + 1 = b" using `c = b - a - 1` by (smt (verit) One_nat_def Suc_eq_plus1 Suc_pred add_Suc assms le_add_diff_inverse2 nat_less_le zero_less_diff)
    then have "c + a < b" by simp
    thus ?thesis using `c = b - a - 1` by simp
  qed
  thus ?thesis by auto
qed