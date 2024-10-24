lemma linear_substitution:
  fixes x e :: real
  assumes h0: "x + e = c"
    and h1: "m * x + e = d"
  shows "e = c - x \<and> (m - 1) * x = d - c"
proof -
  have e_eq: "e = c - x" using h0 by (auto simp: field_simps)
  have substitution: "m * x + (c - x) = d" using e_eq h1 by simp
  then have "(m - 1) * x = d - c" by (simp add: algebra_simps)
  thus ?thesis using e_eq by auto
qed