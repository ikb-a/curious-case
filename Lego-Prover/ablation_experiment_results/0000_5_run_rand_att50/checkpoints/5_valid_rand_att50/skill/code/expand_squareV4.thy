lemma expand_square:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have left_side: "(a - b)^2 = (a - b) * (a - b)" by sos
  also have "... = a * a - 2 * a * b + b * b" 
  proof -
    have "a * a - 2 * a * b + b * b = a^2 - 2 * a * b + b^2" by sos
    thus ?thesis by (simp add: algebra_simps)
  qed
  finally show ?thesis by sos
qed