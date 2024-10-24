lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "\<exists> c. a + c < b"
proof -
  from assms obtain c where "c = b - a" by auto
  then have "a + c = a + (b - a)" by simp
  thus ?thesis by (metis assms dual_order.refl nat_le_iff_add)
qed