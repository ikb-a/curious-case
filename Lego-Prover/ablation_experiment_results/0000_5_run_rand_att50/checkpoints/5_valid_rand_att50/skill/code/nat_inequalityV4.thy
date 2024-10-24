lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "\<exists> c. a + c < b"
proof -
  obtain c :: nat where "b = a + Suc c"
    using assms by (metis add_Suc_right less_iff_Suc_add)
  have "a + c < a + Suc c" by simp
  then show "\<exists>c. a + c < b" using `b = a + Suc c` by auto
qed