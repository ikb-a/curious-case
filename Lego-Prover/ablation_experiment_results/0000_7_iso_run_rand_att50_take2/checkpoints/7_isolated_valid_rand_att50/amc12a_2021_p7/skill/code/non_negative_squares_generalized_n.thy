lemma non_negative_squares_generalized_n:
  fixes a :: "real list"
  assumes "sum_list (map (\<lambda>x. x^2) a) >= 0"
  shows "\<forall>x\<in>set a. x^2 >= 0"
proof -
  have "sum_list (map (\<lambda>x. x^2) a) = sum_list (map (\<lambda>x. x * x) a)" by (metis power2_eq_square)
  thus ?thesis
    by (induction a) (auto simp: sum_list_def)
qed