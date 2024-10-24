lemma division_properties_nonzero:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) = 1" 
    and "b * (1 / b) = 1"
proof -
  have "a * (1 / a) = 1" using assms(1) by (simp add: field_simps)
  moreover have "b * (1 / b) = 1" using assms(2) by (simp add: field_simps)
  ultimately show "a * (1 / a) = 1" and "b * (1 / b) = 1" by auto
qed