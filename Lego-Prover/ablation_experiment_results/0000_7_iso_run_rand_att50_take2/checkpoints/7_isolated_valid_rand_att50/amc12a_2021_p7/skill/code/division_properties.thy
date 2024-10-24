lemma division_properties:
  fixes a b c :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "c / a = (c * b) / (a * b)"
proof -
  have "c / a = (c * b) / (a * b)" by (simp add: assms(1) assms(2) field_simps)
  thus ?thesis by simp
qed