lemma linear_combination:
  fixes a b c :: real
  assumes h0: "a + b = c"
    and h1: "2 * a + b = d"
  shows "b = c - a \<and> a = (d - b) / 2"
proof -
  have b_eq: "b = c - a" using h0 by simp
  have a_eq: "a = (d - (c - a)) / 2" using h1 b_eq by simp
  thus ?thesis using b_eq a_eq by auto
qed