lemma square_root_mult:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
proof -
  have "sqrt (a * b) = sqrt a * sqrt b"
    using assms by (metis real_sqrt_mult)
  thus ?thesis by simp
qed