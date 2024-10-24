lemma non_negative_squares:
  fixes a b :: real
  shows "0 \<le> a^2" and "0 \<le> b^2"
proof -
  have "a^2 = a * a" by sos
  then show "0 \<le> a^2"
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a \<noteq> 0" by simp
    then show ?thesis 
    proof (cases "a > 0")
      case True
      then show ?thesis by (simp add: mult_nonneg_nonneg)
    next
      case False
      then have "a < 0" by (metis \<open>a \<noteq> 0\<close> not_less_iff_gr_or_eq)
      hence "a * a = (-a) * (-a)" by (simp add: mult_neg_neg)
      also have "... >= 0" by (simp add: mult_nonneg_nonneg)
      finally show ?thesis by simp
    qed
  qed
next
  have "b^2 = b * b" by sos
  then show "0 \<le> b^2"
  proof (cases "b = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "b \<noteq> 0" by simp
    then show ?thesis 
    proof (cases "b > 0")
      case True
      then show ?thesis by (simp add: mult_nonneg_nonneg)
    next
      case False
      then have "b < 0" by (metis \<open>b \<noteq> 0\<close> not_less_iff_gr_or_eq)
      hence "b * b = (-b) * (-b)" by (simp add: mult_neg_neg)
      also have "... >= 0" by (simp add: mult_nonneg_nonneg)
      finally show ?thesis by simp
    qed
  qed
qed