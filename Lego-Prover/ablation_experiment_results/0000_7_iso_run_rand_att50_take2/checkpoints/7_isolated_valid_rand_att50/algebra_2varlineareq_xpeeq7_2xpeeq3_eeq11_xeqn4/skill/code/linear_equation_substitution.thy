lemma linear_equation_substitution:
  fixes x e :: complex
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (a - x) = b" using e_eq h1 by simp
  then have "x + a = b" by simp
  then have "x = b - a" by (metis add.commute add_diff_cancel)
  show ?thesis using e_eq by (metis \<open>x = b - a\<close> div_by_1)
qed