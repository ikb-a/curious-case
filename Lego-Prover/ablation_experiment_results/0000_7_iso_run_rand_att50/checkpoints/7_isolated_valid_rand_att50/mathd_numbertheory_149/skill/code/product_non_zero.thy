lemma product_non_zero:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "a * b \<noteq> 0"
proof -
  from assms show ?thesis by auto
qed