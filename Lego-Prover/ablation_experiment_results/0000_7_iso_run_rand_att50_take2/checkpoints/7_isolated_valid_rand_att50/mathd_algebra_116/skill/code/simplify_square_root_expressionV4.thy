lemma simplify_square_root_expression:
  fixes x :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "sqrt(x^2) = sqrt((if x \<ge> 0 then x^2 else (-x)^2))"
    by (simp add: abs_if)
  also have "... = abs x" 
    by auto
  finally show ?thesis .
qed