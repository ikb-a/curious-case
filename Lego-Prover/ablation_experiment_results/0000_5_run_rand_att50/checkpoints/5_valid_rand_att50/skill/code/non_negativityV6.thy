lemma non_negativity:
  fixes a b :: real
  shows "a^2 >= 0" "b^2 >= 0" "a^2 + b^2 >= 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  then have "a^2 >= 0"
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a \<noteq> 0" by simp
    then have "a > 0 \<or> a < 0" by auto
    thus ?thesis 
    proof (cases "a > 0")
      case True
      then show ?thesis by (simp add: mult_nonneg_nonneg)
    next
      case False
      then have "a < 0" by (metis \<open>a \<noteq> 0\<close> not_less_iff_gr_or_eq)
      hence "a * a = (-a) * (-a)" by (simp add: mult_neg_neg)
      thus ?thesis by (simp add: mult_nonneg_nonneg)
    qed
  qed
  have "b^2 = b * b" by (simp add: power2_eq_square)
  then have "b^2 >= 0"
  proof (cases "b = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "b \<noteq> 0" by simp
    then have "b > 0 \<or> b < 0" by auto
    thus ?thesis 
    proof (cases "b > 0")
      case True
      then show ?thesis by (simp add: mult_nonneg_nonneg)
    next
      case False
      then have "b < 0" by (metis \<open>b \<noteq> 0\<close> not_less_iff_gr_or_eq)
      hence "b * b = (-b) * (-b)" by (simp add: mult_neg_neg)
      thus ?thesis by (simp add: mult_nonneg_nonneg)
    qed
  qed
  have "a^2 + b^2 >= 0" 
    using `a^2 >= 0` `b^2 >= 0` by (simp add: add_nonneg_nonneg)
  thus "a^2 >= 0" "b^2 >= 0" "a^2 + b^2 >= 0" by auto
qed