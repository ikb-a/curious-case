lemma additive_inverses:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a + (-a) = 0"
proof -
  have "a + (-a) = 0" using assms by (simp add: field_simps)
  thus ?thesis by auto
qed