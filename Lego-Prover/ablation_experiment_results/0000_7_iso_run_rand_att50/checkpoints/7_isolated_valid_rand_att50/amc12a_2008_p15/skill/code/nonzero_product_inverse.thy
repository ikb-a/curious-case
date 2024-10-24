lemma nonzero_product_inverse:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "(a * b) * (1 / (a * b)) = 1"
proof -
  have "1 / (a * b) = (1 / a) * (1 / b)"
    by (simp add: field_simps)
  then show ?thesis by (simp add: assms)
qed