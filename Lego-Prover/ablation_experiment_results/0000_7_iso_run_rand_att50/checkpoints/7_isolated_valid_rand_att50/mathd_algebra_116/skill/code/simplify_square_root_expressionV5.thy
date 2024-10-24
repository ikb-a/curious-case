lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
proof -
  have left: "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + (sqrt b)^2" 
    by (smt (verit) diff_add_eq power2_diff)
  have right: "(sqrt b)^2 = b" 
    using assms by (simp add: power2_eq_square)
  show ?thesis 
    using left right by simp
qed