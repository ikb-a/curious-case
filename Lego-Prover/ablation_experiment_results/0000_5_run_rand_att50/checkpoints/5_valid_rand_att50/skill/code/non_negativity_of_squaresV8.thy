lemma non_negativity_of_squares:
  fixes x y :: real
  shows "x^2 >= 0" and "y^2 >= 0" and "x^2 * y^2 >= 0"
proof -
  have "x^2 = x * x" by sos
  moreover have "y^2 = y * y" by sos
  then have "x^2 >= 0" 
  proof (cases "x = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "x \<noteq> 0" by simp
    then have "x > 0 \<or> x < 0" by auto
    thus ?thesis 
    proof
      assume "x > 0"
      then show ?thesis by (simp add: mult_nonneg_nonneg)
    next
      assume "x < 0"
      then show ?thesis by (simp add: mult_nonpos_nonpos)
    qed
  qed
  moreover have "y^2 >= 0"
  proof (cases "y = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "y \<noteq> 0" by simp
    then have "y > 0 \<or> y < 0" by auto
    thus ?thesis 
    proof
      assume "y > 0"
      then show ?thesis by (simp add: mult_nonneg_nonneg)
    next
      assume "y < 0"
      then show ?thesis by (simp add: mult_nonpos_nonpos)
    qed
  qed
  ultimately show "x^2 >= 0" and "y^2 >= 0" by blast+
  have "x^2 * y^2 >= 0"
  proof (cases "x^2 = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "x^2 > 0" by simp
    then have "y^2 = 0 \<or> y^2 > 0" by (cases "y^2 = 0") auto
    thus ?thesis
    proof
      assume "y^2 > 0"
      then show ?thesis by (simp add: mult_nonneg_nonneg)
    next
      assume "y^2 = 0"
      then show ?thesis by simp
    qed
  qed
  thus "x^2 * y^2 >= 0" by simp
qed