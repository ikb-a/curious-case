lemma simplify_square_root:
  fixes x :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "sqrt(x^2) = sqrt((if x \<ge> 0 then x^2 else x^2))"
    by auto
  then have "sqrt(x^2) = (if x \<ge> 0 then x else -x)"
    by auto
  moreover have "abs x = (if x \<ge> 0 then x else -x)"
    by auto
  ultimately show ?thesis
    by auto
qed