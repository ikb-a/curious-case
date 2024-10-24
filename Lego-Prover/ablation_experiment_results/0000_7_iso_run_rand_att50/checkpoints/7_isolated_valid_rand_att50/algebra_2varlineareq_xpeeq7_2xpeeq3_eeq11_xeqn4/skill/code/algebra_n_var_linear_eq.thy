theorem algebra_n_var_linear_eq:
  fixes x1 x2 e1 e2 :: complex
  assumes h0 : "x1 + e1 = c1"
    and h1 : "x2 + e2 = c2"
    and h2 : "a * x1 + b * e1 = d"
    and h3 : "a * x2 + b * e2 = d"
  shows "e1 = c1 - x1 \<and> e2 = c2 - x2 \<and> (a * (c1 - e1) + b * e1 = d) \<and> (a * (c2 - e2) + b * e2 = d)"
proof -
  have eq1: "e1 = c1 - x1" using h0 by (auto simp: field_simps)
  have eq2: "e2 = c2 - x2" using h1 by (auto simp: field_simps)
  have eq3: "a * x1 + b * (c1 - x1) = d" using h2 eq1 by simp
  have eq4: "a * x2 + b * (c2 - x2) = d" using h3 eq2 by simp
  show "e1 = c1 - x1 \<and> e2 = c2 - x2 \<and> (a * (c1 - e1) + b * e1 = d) \<and> (a * (c2 - e2) + b * e2 = d)"
    using eq1 eq2 eq3 eq4 by auto
qed