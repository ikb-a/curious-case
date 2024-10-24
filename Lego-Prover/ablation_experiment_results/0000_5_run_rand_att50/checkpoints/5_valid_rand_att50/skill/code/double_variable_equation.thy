lemma double_variable_equation:
  fixes x y :: complex
  assumes h0: "x + y = a"
  and h1: "2 * x + y = b"
  shows "y = b - 2 * (a - y)"
proof -
  have "2 * x + y = b" using h1 by auto
  hence "2 * (a - y) + y = b" using h0 by auto
  then show ?thesis by (simp add: field_simps)
qed