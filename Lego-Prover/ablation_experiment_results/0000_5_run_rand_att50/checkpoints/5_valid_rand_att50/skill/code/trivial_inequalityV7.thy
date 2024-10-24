lemma trivial_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  have "0 <= a" using assms(1) by auto
  have "0 <= b" using assms(2) by auto
  thus ?thesis 
    by (metis add_nonneg_nonneg assms(1))
qed