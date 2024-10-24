lemma non_negative_minimum:
  fixes a b c :: real
  assumes "a >= 0" "b >= 0" "c >= 0"
  shows "a + b + c + 1 >= 1"
proof -
  have "a + b + c >= 0 + 0 + 0" 
    using assms by (simp add: add_nonneg_nonneg)
  then have "a + b + c + 1 >= 0 + 1" by (simp add: add_nonneg_nonneg)
  thus ?thesis by simp
qed