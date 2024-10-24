lemma non_negative_minimum:
  fixes a b c :: real
  assumes "a >= 0" "b >= 0" "c >= 0"
  shows "a + b + c + 1 >= 1"
proof -
  have "a >= 0" using assms(1) by assumption
  have "b >= 0" using assms(2) by assumption
  have "c >= 0" using assms(3) by assumption
  have "a + b + c >= 0" 
    using add_nonneg_nonneg[of a b] 
    using add_nonneg_nonneg[of _ c] 
    by (metis assms)
  then have "a + b + c + 1 >= 0 + 1" by auto
  thus ?thesis by simp
qed