lemma distribution_of_sum_general:
  fixes x y z :: "'a :: comm_ring"
  assumes "x + y = a"
  shows "(a * z) = (x * z + y * z)"
proof -
  have "(x + y) * z = x * z + y * z" 
    by (simp add: distrib_left distrib_right)
  then show ?thesis using assms by simp
qed