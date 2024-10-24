lemma nat_successor_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "\<exists> c. a + c < b"
proof -
  obtain c where "b = a + Suc c" using assms by (metis add_Suc_right less_iff_Suc_add)
  then show ?thesis by auto
qed