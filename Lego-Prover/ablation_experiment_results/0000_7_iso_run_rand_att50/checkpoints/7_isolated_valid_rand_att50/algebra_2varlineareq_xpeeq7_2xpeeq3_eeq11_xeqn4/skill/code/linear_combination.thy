lemma linear_combination:
  fixes a b :: real
  assumes h0: "a + b = c"
  shows "b = c - a"
proof -
  show ?thesis using h0 by (simp add: field_simps)
qed