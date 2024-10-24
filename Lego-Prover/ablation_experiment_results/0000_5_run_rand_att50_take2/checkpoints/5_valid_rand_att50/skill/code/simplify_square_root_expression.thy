lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
proof -
  have "sqrt b * sqrt b = b" using assms by auto
  have "a - sqrt b = a + (- sqrt b)" by (simp add: algebra_simps)
  then have "(a - sqrt b)^2 = (a + (-sqrt b))^2" by simp
  also have "... = a^2 + 2 * a * (-sqrt b) + (-sqrt b)^2" by (smt (verit) power2_sum)
  also have "... = a^2 - 2*a*sqrt b + b" using `sqrt b * sqrt b = b` by simp
  finally show ?thesis by simp
qed