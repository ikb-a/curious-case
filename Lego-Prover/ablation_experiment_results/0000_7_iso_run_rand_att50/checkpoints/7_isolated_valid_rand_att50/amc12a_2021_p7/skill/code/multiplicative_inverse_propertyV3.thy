lemma multiplicative_inverse_property:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b = 1 / a"
  shows "a * b = 1"
proof -
  have "a * (1 / a) = 1" using assms by simp
  then show ?thesis by (simp add: assms(2))
qed