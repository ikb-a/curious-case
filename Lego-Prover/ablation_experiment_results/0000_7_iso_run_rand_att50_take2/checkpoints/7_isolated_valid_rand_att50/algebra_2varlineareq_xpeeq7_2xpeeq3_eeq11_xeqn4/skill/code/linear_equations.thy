lemma linear_equations:
  fixes x e :: complex
  assumes h0: "x + e = a"
    and h1: "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (a - x) = b" using e_eq h1 by simp
  then have "x + a = b" by simp
  then have x_value: "x = b - a" by (metis add.commute add_diff_cancel diff_add_eq)
  then have e_value: "e = a - (b - a)" using e_eq x_value by simp
  then show ?thesis using x_value e_value by auto
qed