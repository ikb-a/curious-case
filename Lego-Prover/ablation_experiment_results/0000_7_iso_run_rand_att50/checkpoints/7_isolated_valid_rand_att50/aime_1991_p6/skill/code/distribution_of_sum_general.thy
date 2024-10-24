lemma distribution_of_sum_general:
  fixes x y z :: "'a :: comm_ring"
  assumes "x + y = a" and "z = b"
  shows "(x + y) * z = x * z + y * z"
proof -
  have "(x + y) * z = a * b" using assms by simp
  also have "... = x * z + y * z" by (metis assms(1) assms(2) mult.commute ring_class.ring_distribs(1))
  finally show ?thesis by simp
qed