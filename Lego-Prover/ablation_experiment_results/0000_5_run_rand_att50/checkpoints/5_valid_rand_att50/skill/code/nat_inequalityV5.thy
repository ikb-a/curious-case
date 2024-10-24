lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "\<exists> c. a + c < b"
proof -
  obtain c where "c = b - a" using assms by (metis diff_less)
  then show ?thesis by (metis assms le_refl nat_le_iff_add)
qed