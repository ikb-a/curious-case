lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
proof -
  have "a - sqrt b = a - (sqrt b)" by simp
  then have "(a - sqrt b)^2 = (a - sqrt b) * (a - sqrt b)" by (metis power2_eq_square)
  also have "... = a^2 - 2*a*(sqrt b) + (sqrt b)^2" 
    using square_difference by (metis calculation)
  also have "... = a^2 - 2*a*sqrt b + b" 
    using assms by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed