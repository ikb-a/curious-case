lemma cross_multiply_inequality:
  fixes x y z :: real
  assumes h1: "x > 0" and h2: "y > 0"
  shows "x * y > 0"
proof -
  have "x * y > 0" using h1 h2 by (simp add: field_simps)
  thus ?thesis by simp
qed