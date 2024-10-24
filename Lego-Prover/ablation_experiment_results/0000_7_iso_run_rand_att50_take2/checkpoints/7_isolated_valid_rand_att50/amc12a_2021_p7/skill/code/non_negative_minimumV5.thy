lemma non_negative_minimum:
  fixes a b c :: real
  assumes "a >= 0" "b >= 0" "c >= 0"
  shows "a + b + c + 1 >= 1"
proof -
  have "a >= 0" using assms(1) by assumption
  have "b >= 0" using assms(2) by assumption
  have "c >= 0" using assms(3) by assumption
  have "a + b >= 0" using add_nonneg_nonneg[of a b] 
    by (simp add: assms(1) assms(2))
  have "a + b + c >= 0" using add_nonneg_nonneg[of "a + b" c] 
    using `a + b >= 0` `c >= 0` 
    by simp
  have "a + b + c + 1 >= 0 + 1" by (simp add: `a + b + c >= 0`)
  thus ?thesis by simp
qed