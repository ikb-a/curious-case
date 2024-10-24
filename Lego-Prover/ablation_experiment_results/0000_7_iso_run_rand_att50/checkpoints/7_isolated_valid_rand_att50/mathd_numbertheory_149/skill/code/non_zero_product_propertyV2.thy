lemma non_zero_product_property:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "(1 / a) * a = 1" and "(1 / b) * b = 1"
proof -
  show "(1 / a) * a = 1" using assms(1) by (simp add: field_simps)
  show "(1 / b) * b = 1" using assms(2) by (simp add: field_simps)
qed