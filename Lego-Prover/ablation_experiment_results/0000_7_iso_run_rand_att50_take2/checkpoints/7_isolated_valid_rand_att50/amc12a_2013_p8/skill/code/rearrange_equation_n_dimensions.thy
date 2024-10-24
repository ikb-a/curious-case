lemma rearrange_equation_n_dimensions:
  fixes x y :: "real list"
  assumes "length x = n" "length y = n"
    and "sum_list x + 2/sum_list x = sum_list y + 2/sum_list y"
  shows "sum_list x - sum_list y = (2/sum_list y - 2/sum_list x)"
proof -
  have "sum_list x + 2/sum_list x - (sum_list y + 2/sum_list y) = 0" using assms
    by (simp add: sum_list_def)
  then show ?thesis 
    by (simp add: sum_list_def field_simps)
qed