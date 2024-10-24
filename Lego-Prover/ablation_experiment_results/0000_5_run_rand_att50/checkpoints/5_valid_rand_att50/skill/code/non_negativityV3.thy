lemma non_negativity:
  fixes a b :: real
  shows "a^2 >= 0" "b^2 >= 0" "a^2 + b^2 >= 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  then show "a^2 >= 0" 
  proof (cases "a >= 0")
    case True
    then show ?thesis by (simp add: mult_nonneg_nonneg)
  next
    case False
    then have "a < 0" by simp
    hence "a^2 = (-a) * (-a)" by sos
    thus ?thesis by (simp add: mult_nonneg_nonneg)
  qed
  have "b^2 = b * b" by (simp add: power2_eq_square)
  then show "b^2 >= 0" 
  proof (cases "b >= 0")
    case True
    then show ?thesis by (simp add: mult_nonneg_nonneg)
  next
    case False
    then have "b < 0" by simp
    hence "b^2 = (-b) * (-b)" by sos
    thus ?thesis by (simp add: mult_nonneg_nonneg)
  qed
  have "a^2 >= 0" and "b^2 >= 0" by (simp_all add: \<open>a^2 >= 0\<close> \<open>b^2 >= 0\<close>)
  thus "a^2 + b^2 >= 0" by (simp add: add_nonneg_nonneg)
qed