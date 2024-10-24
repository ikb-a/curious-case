lemma non_negativity_of_squares:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show ?thesis
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a > 0 \<or> a < 0" by auto
    then show ?thesis
    proof
      assume "a > 0"
      then have "a * a > 0" by (simp add: mult_pos_pos)
      thus ?thesis by simp
    next
      assume "a < 0"
      then have "a * a > 0" by (simp add: mult_neg_neg)
      thus ?thesis by simp
    qed
  qed
qed