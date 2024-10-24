lemma logarithm_product:
  fixes a b :: real
  assumes "a > 0" and "b > 0" and "a \<noteq> 1"
  shows "log a (a * b) = log a a + log a b"
proof -
  have "log a (a * b) = log a a + log a b" 
    using assms by (simp add: log_mult)
  thus ?thesis by simp
qed