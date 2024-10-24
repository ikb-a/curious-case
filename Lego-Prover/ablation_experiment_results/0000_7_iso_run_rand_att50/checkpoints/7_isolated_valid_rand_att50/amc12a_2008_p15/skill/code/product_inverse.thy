lemma product_inverse:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "(a * b) * (1 / (a * b)) = 1"
proof -
  have "a * b \<noteq> 0" using assms by simp
  then show ?thesis by (simp add: field_simps)
qed