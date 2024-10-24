lemma distinct_nonzero:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y"
  shows "x * y \<noteq> 0"
proof -
  from assms(1) and assms(2) have "x \<noteq> 0" and "y \<noteq> 0" by auto
  thus ?thesis
    by auto
qed