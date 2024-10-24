lemma simplify_square_root:
  fixes x :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "sqrt(x^2) = sqrt((if x \<ge> 0 then x^2 else x^2))" by auto
  also have "sqrt((if x \<ge> 0 then x^2 else x^2)) = (if x \<ge> 0 then x else -x)" 
    by auto
  also have "(if x \<ge> 0 then x else -x) = abs x" by auto
  finally show ?thesis by auto
qed