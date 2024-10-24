lemma simplify_square_root:
  fixes x :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "sqrt(x^2) = sqrt((if x \<ge> 0 then x^2 else x^2))"
    by (metis abs_if)
  moreover have "if x \<ge> 0 then sqrt(x^2) = x else sqrt(x^2) = -x"
    by auto
  ultimately show ?thesis
    by (auto simp add: abs_if)
qed