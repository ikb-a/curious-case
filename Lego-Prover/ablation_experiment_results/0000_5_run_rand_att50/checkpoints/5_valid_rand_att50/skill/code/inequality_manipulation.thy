lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"
proof -
  have "a * c < b * c"
  proof -
    from assms(1) have "b - a > 0" by (simp add: less_diff_conv)
    moreover from assms(2) have "c > 0" by assumption
    ultimately have "b - a > 0" and "c > 0" by simp_all
    then show ?thesis 
      using mult_strict_mono by auto
  qed
  thus ?thesis by simp
qed