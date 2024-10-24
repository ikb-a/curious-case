lemma linear_equations_solve:
  fixes x e :: complex
  assumes h0: "x + e = c"  
    and h1: "2 * x + e = d" 
  shows "e = d - 2 * c + 2 * e"  
proof -
  have e_eq: "e = c - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (c - x) = d" using e_eq h1 by simp
  then have "x + c = d" by auto
  hence "x = d - c" by (metis add.commute add_diff_cancel)
  then show ?thesis using e_eq by simp
qed