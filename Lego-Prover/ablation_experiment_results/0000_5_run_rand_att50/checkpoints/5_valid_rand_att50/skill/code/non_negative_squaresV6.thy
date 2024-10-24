lemma non_negative_squares:
  fixes a b :: real
  shows "0 \<le> a^2" and "0 \<le> b^2"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  have "b^2 = b * b" by (simp add: power2_eq_square)
  have "0 \<le> a^2" 
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a \<noteq> 0" by simp
    then have "a > 0 \<or> a < 0" by auto
    thus ?thesis 
    proof
      assume "a > 0"
      then show ?thesis using mult_nonneg_nonneg[of a a] by auto
    next
      assume "a < 0"
      then show ?thesis using mult_nonpos_nonpos[of a a] by auto
    qed
  qed
  moreover have "0 \<le> b^2"
  proof (cases "b = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "b \<noteq> 0" by simp
    then have "b > 0 \<or> b < 0" by auto
    thus ?thesis 
    proof
      assume "b > 0"
      then show ?thesis using mult_nonneg_nonneg[of b b] by auto
    next
      assume "b < 0"
      then show ?thesis using mult_nonpos_nonpos[of b b] by auto
    qed
  qed
  ultimately show "0 \<le> a^2" and "0 \<le> b^2" by blast+
qed