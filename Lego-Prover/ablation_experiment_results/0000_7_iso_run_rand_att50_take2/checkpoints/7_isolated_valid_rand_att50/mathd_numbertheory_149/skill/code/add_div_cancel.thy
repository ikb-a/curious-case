lemma add_div_cancel:
  fixes a b c d :: real
  assumes "c > 0" "d > 0" "a + b / c = d"
  shows "a * c + b = d * c"
proof -
  have "c * (a + b / c) = d * c" using assms(3) by auto
  then have "c * a + c * (b / c) = d * c" by (simp add: distrib_left)
  then show ?thesis using assms(1) by (simp add: mult.commute)
qed