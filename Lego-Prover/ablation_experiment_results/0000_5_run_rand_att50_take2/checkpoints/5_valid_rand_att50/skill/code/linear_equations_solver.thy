theorem linear_equations_solver:
  fixes x e :: complex
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using h1 e_eq by simp
  then have simplified_eq: "x + a = b" by simp
  have x_value: "x = b - a" using simplified_eq by auto
  then show ?thesis using e_eq by simp
qed