lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "a + 1 \<le> b"
proof -
  have "a + 1 \<le> a + 1 + (b - a - 1)" using assms
    by auto
  also have "... \<le> b" using assms by simp
  finally show ?thesis by simp
qed