lemma multiplicative_inverse:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "1 / a * a = 1"
proof -
  have "1 / a * a = 1" using assms by (simp add: field_simps)
  then show ?thesis by simp
qed