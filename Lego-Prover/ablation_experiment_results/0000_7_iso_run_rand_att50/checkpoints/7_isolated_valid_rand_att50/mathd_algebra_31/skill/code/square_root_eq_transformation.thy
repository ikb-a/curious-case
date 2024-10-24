lemma square_root_eq_transformation:
  fixes a b c :: real
  assumes "a = b" "0 \<le> a" "0 \<le> b" "c \<ge> 0"
  shows "sqrt (a * c) = sqrt (b * c)"
proof -
  have "a * c = b * c" using assms(1) by simp
  then show ?thesis using assms(3) by auto
qed