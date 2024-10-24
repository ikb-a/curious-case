lemma generalized_linear_equation:
  fixes a b c d :: complex
  assumes h0 : "a + b = c"
    and h1 : "2 * a + b = d"
  shows "b = c - a \<and> a = (d - b) / 2"
proof -
  have b_eq: "b = c - a" using h0 by (simp add: field_simps)
  have substitution: "2 * a + (c - a) = d" using b_eq h1 by simp
  have simplified_eq: "a + c = d" using substitution by simp
  have a_value: "a = d - c" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel)
  show ?thesis using b_eq a_value by auto
qed