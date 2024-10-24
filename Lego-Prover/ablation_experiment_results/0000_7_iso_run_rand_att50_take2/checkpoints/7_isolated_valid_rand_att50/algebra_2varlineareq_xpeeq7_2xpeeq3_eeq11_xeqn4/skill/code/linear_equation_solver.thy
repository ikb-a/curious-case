lemma linear_equation_solver:
  fixes x e :: complex
  assumes h0 : "x + e = c"  
    and h1 : "2 * x + e = d"  
  shows "e = c - x \<and> x = (d - c) / 1"  
proof -
  have e_eq: "e = c - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (c - x) = d" using e_eq h1 by simp
  have simplified_eq: "x + c = d" using substitution by simp
  have x_value: "x = d - c" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel)
  then have x_result: "x = (d - c) / 1" by simp  
  have e_value: "e = c - ((d - c) / 1)" using e_eq x_result by simp
  show ?thesis using x_result e_value by auto
qed