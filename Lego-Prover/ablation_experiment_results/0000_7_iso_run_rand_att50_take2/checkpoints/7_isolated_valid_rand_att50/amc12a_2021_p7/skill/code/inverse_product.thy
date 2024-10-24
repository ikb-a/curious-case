lemma inverse_product:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "1 / (a * b) = (1 / a) * (1 / b)"
proof -
  have "a * b \<noteq> 0" using assms by auto
  then show ?thesis by (simp add: field_simps)
qed