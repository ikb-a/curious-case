lemma nonzero_times_inverse:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
proof -
  have "a * (1 / a) = (a / a)" using assms by (simp add: field_simps)
  then show ?thesis by (metis assms divide_self)
qed