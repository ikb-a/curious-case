lemma multiplicative_inverse_property:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
proof -
  have "1 / a * a = 1" using assms by auto
  then show ?thesis by (simp add: assms)
qed