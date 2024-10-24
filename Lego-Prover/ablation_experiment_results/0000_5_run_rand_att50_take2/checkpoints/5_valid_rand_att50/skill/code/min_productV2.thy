lemma min_product:
  fixes a b :: real
  assumes "a \<ge> 1" "b \<ge> 1"
  shows "a * b \<ge> 1"
proof -
  have "a * b \<ge> 1 * 1" using assms(1) assms(2) by sos
  thus ?thesis by simp
qed