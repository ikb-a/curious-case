lemma linear_system_solution:
  fixes x e :: complex
  assumes h0 : "x + e = c"  
    and h1 : "2 * x + e = d" 
  shows "e = c - x \<and> x = (d - c) / (2 - 1)" 
proof -
  have e_eq: "e = c - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (c - x) = d" using e_eq h1 by simp
  have simplified_eq: "x + c = d" using substitution by simp
  have x_value: "x = d - c" using simplified_eq by auto
  then have e_value: "e = c - (d - c)" using e_eq by simp
  show ?thesis using x_value e_value by auto
qed