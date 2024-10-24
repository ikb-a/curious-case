lemma linear_system_solution:
  fixes x e :: complex
  assumes h0 : "x + e = a"  
    and h1 : "2 * x + e = b"
  shows "e = b - 2 * (a - e) \<and> x = (b - e) / 2"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (a - x) = b" using e_eq h1 by simp
  have simplified_eq: "x + a = b" using substitution by auto
  then have x_value: "x = b - a" by auto
  then have e_value: "e = a - (b - a)" using e_eq x_value by simp
  then show ?thesis using e_value x_value by auto
qed