lemma product_of_nonzero_terms:
  fixes x y :: real
  assumes "x \<noteq> 0" and "y \<noteq> 0"
  shows "x * y \<noteq> 0"
proof -
  from assms show ?thesis by simp
qed