theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e :: complex
  assumes h0 : "x + e = c"
    and h1 : "2 * x + e = d"
  shows "e = c - x \<and> x = (d - c)/(2 - 1)"
proof -
  have eq1: "e = c - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + (c - x) = d" using h1 eq1 by simp
  have eq3: "x + c = d" using eq2 by simp
  then have "x = d - c" by (metis add.commute add_diff_cancel)
  from eq1 have "e = c - (d - c)" by (metis \<open>x = d - c\<close>)
  then have "e = 2*c - d" by simp
  thus "e = c - x \<and> x = (d - c)/(2 - 1)" by (metis \<open>x = d - c\<close> div_by_1 eq1 eq_diff_eq one_add_one)
qed