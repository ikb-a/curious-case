lemma distribution_with_parameters_n_dimensions:
  fixes x y :: "'a :: comm_ring" and z :: "'a :: comm_ring list"
  shows "(x + y) * (sum_list z) = x * (sum_list z) + y * (sum_list z)"
proof -
  have "sum_list z = fold (+) z 0" by (metis add.commute add.left_commute add_right_imp_eq fold_plus_sum_list_rev sum_list_rev verit_sum_simplify)
  then show ?thesis by (auto simp: field_simps)
qed