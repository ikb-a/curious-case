lemma product_of_nonzero_reals:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(a * b) * (1 / (a * b)) = 1"
proof -
  have "a * b \<noteq> 0" using assms by auto
  thus ?thesis by (simp add: field_simps)
qed