lemma distribution_of_sum:
  fixes x y z :: "'a :: comm_ring"
  shows "(x + y) * z = x * z + y * z"
proof -
  have "(x + y) * z = x * z + y * z" 
    by (simp add: distrib_left distrib_right)
  thus ?thesis by simp
qed