lemma simplify_square_root:
  fixes a b :: real
  assumes "a = 13" "b = sqrt 131"
  shows "(2 * (a - b)^2) = (2 * a^2 - 4 * a * b + 2 * b^2)"
proof -
  have "(a - b)^2 = a^2 - 2 * a * b + b^2"
    by (simp add: power2_diff)
  then have "2 * (a - b)^2 = 2 * (a^2 - 2 * a * b + b^2)"
    by (simp add: algebra_simps)
  also have "... = 2 * a^2 - 4 * a * b + 2 * b^2"
    by (simp add: algebra_simps)
  finally show ?thesis
    by simp
qed