lemma multiplicative_inverse:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
proof -
  have "1 = (1 / a) * a" using assms by (simp add: field_simps)
  then show ?thesis by simp
qed