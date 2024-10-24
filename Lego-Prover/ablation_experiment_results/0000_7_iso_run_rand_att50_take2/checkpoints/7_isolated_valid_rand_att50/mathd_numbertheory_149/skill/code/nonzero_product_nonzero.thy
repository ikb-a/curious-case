lemma nonzero_product_nonzero:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * b \<noteq> 0"
proof -
  have "a * b \<noteq> 0" using assms by (simp add: field_simps)
  thus ?thesis .
qed