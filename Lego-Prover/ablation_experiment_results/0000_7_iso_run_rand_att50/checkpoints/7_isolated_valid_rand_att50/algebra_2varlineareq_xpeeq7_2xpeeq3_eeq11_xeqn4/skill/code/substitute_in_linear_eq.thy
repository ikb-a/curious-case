lemma substitute_in_linear_eq:
  fixes x e :: real
  assumes h0: "x + e = a"
    and h1: "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have eq1: "e = a - x" using h0 by (simp add: field_simps)
  have eq2: "2 * x + (a - x) = b" using h1 eq1 by simp
  then have "x + a = b" by (simp add: field_simps)
  then show ?thesis using eq1 by auto
qed