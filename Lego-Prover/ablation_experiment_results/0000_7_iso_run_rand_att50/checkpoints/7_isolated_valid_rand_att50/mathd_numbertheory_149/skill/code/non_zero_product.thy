lemma non_zero_product:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "(1 / a) * a = 1 \<and> (1 / b) * b = 1"
proof -
  have "1 / a * a = 1" using assms(1) by (simp)
  have "1 / b * b = 1" using assms(2) by (simp)
  then show ?thesis by (metis \<open>1 / a * a = 1\<close>)
qed