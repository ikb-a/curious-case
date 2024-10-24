lemma linear_substitution:
  fixes x e :: complex
  assumes h0: "x + e = a"
    and h1: "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (a - x) = b" using e_eq h1 by simp
  have simplified_eq: "x + a = b" using substitution by simp
  then have x_value: "x = b - a" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel)
  then show ?thesis using e_eq x_value by auto
qed