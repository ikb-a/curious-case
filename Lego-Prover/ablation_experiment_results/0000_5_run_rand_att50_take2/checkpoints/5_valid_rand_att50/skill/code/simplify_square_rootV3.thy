lemma simplify_square_root:
  fixes x y :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "sqrt(x^2) = sqrt((abs x)^2)" by (simp add: abs_if)
  also have "... = abs x" by auto
  finally show ?thesis by simp
qed