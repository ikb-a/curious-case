lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
proof -
  have "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + (sqrt b)^2" 
    by (smt (verit) diff_add_eq power2_diff)
  also have "... = a^2 - 2*a*sqrt b + b" 
    using `b > 0` by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed