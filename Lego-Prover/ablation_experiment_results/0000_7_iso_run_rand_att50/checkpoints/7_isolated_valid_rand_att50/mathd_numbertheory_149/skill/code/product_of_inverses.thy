lemma product_of_inverses:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(1 / a) * (1 / b) = 1 / (a * b)"
proof -
  have "(1 / a) * (1 / b) = 1 / (a * b)"
    using assms by (simp add: field_simps)
  then show ?thesis by (simp)
qed