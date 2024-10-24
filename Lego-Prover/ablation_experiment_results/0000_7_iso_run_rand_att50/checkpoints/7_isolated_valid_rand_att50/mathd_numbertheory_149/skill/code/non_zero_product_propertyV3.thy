lemma non_zero_product_property:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "1 = (1 / a) * a" and "1 = (1 / b) * b"
proof -
  show "1 = (1 / a) * a" using assms by (simp add: field_simps)
  show "1 = (1 / b) * b" using assms by (simp add: field_simps)
qed