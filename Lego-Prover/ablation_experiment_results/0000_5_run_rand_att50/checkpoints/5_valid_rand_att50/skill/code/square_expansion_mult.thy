lemma square_expansion_mult:
  fixes a b c :: real
  shows "(c * (a - b))^2 = c^2 * (a^2 - 2 * a * b + b^2)"
proof -
  have "(c * (a - b))^2 = (c * (a - b)) * (c * (a - b))"
    by sos
  also have "... = c^2 * ((a - b) * (a - b))" by sos
  also have "... = c^2 * (a^2 - 2 * a * b + b^2)" by sos
  finally show ?thesis .
qed