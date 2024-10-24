lemma square_eq_n_dimensions:
  fixes x y :: "real list"
  assumes "length x = length y" "x = y"
  shows "sum_list (map (\<lambda>i. x ! i ^ 2) [0..<length x]) = sum_list (map (\<lambda>i. y ! i ^ 2) [0..<length y])"
proof -
  have "map (\<lambda>i. x ! i ^ 2) [0..<length x] = map (\<lambda>i. y ! i ^ 2) [0..<length y]"
    by (metis assms(2) nth_equalityI)
  thus ?thesis by simp
qed