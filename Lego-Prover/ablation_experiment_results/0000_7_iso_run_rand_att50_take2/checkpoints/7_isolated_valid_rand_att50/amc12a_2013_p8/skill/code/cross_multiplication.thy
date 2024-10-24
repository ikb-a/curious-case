lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0" 
    and "a/b = c/d"
  shows "a * d = b * c"
proof -
  have "a/b - c/d = 0" using assms by simp
  then have "a * d - b * c = 0" using field_simps by (metis assms(1) assms(2) assms(3) diff_self divide_inverse divide_inverse_commute field_class.field_divide_inverse frac_eq_eq real_scaleR_def)
  thus ?thesis by simp
qed