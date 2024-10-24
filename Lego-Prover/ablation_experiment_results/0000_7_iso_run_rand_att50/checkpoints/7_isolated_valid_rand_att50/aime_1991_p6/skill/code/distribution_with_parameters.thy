lemma distribution_with_parameters:
  fixes x y z w :: "'a :: comm_ring"
  shows "(x + y) * (z + w) = x * z + y * z + x * w + y * w"
proof -
  have "(x + y) * (z + w) = x * z + y * z + x * w + y * w" by (simp add: distrib_left distrib_right)
  then show ?thesis by simp
qed