lemma linear_combination:
  fixes a b :: real
  assumes h0: "x + e = a"
    and h1: "2 * x + e = b"
  shows "e = a - x \<and> x = (b - e) / 2"
proof -
  have e_expr: "e = a - x" using h0 by (auto simp: field_simps)
  then have "2 * x + (a - x) = b" using h1 by simp
  then show ?thesis using e_expr by auto
qed