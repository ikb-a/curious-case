lemma simplify_square_root:
  fixes x :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "x^2 \<ge> 0" by auto
  then have "sqrt(x^2) = sqrt(abs x^2)" 
    by auto
  also have "sqrt(abs x^2) = abs x" 
    by auto
  finally show ?thesis by simp
qed