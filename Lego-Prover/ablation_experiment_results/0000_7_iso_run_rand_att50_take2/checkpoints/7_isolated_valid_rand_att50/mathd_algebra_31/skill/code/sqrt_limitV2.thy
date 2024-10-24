lemma sqrt_limit:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x = 9 \<longleftrightarrow> x = 81"
proof
  show "sqrt x = 9 \<Longrightarrow> x = 81"
  proof -
    assume "sqrt x = 9"
    then have "9^2 = x" 
      by (metis assms real_sqrt_pow2)
    thus "x = 81"
      by simp
  qed
  show "x = 81 \<Longrightarrow> sqrt x = 9"
  proof -
    assume "x = 81"
    then have "sqrt x = sqrt 81" 
      by simp
    thus "sqrt x = 9"
      by simp
  qed
qed