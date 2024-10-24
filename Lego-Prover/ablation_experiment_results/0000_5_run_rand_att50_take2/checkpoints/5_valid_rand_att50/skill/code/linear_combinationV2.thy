lemma linear_combination:
  fixes a b x e :: real
  assumes h0: "x + e = a"
    and h1: "2 * x + e = b"
  shows "e = a - x \<and> x = (b - e) / 2"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using h1 e_eq by simp
  have simplified_eq: "x + a = b" using eq2_substituted by simp
  have x_value: "x = (b - a) / 1" using simplified_eq by auto
  then show ?thesis using e_eq x_value by simp
qed