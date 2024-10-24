lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"
proof -
  have "a * c < b * c" 
  proof -
    from assms(1) have "b - a > 0" by (simp add: less_diff_conv)
    then have "b - a = (b - a) * 1" by (simp)
    moreover from assms(2) have "c > 0" by assumption
    ultimately show ?thesis 
      using mult_strict_mono by (metis assms(1) mult_less_cancel_right_disj)
  qed
  thus ?thesis by auto
qed