lemma division_inequality:
  fixes x a b :: real
  assumes "x > 0" "a / x < b"
  shows "a < b * x"
proof -
  have "a < b * x" using assms by (simp add: field_simps)
  then show ?thesis by simp
qed