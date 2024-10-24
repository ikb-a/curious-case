lemma nonzero_product_nonzero_nat:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "a * b > 0"
proof -
  have "a * b > 0" using assms by auto
  thus ?thesis .
qed