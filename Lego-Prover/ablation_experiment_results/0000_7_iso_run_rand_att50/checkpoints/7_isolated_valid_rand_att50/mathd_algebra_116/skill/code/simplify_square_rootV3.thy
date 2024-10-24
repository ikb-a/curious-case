lemma simplify_square_root:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt(a) * sqrt(b) = sqrt(a * b)"
proof -
  have "sqrt(a) * sqrt(b) = sqrt(a * b)" if "a \<ge> 0" and "b \<ge> 0" for a b
  proof -
    have "sqrt(a) * sqrt(b) = sqrt(a * b)" 
      using that by (metis real_sqrt_mult)
    thus ?thesis .
  qed
  thus ?thesis using assms by simp
qed