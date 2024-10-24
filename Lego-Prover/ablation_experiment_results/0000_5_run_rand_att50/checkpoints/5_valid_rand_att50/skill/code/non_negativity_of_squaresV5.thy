lemma non_negativity_of_squares:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show "a^2 >= 0"
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a > 0 \<or> a < 0" by auto
    thus ?thesis 
    proof
      assume "a > 0"
      then show ?thesis by (simp add: mult_nonneg_nonneg)
    next
      assume "a < 0"
      then show ?thesis by (simp add: mult_nonpos_nonpos)
    qed
  qed
qed