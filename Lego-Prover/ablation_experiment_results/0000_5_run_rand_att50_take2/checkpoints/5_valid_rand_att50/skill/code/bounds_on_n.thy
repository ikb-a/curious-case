lemma bounds_on_N:
  fixes m :: nat
  assumes "N = 24 * m + 21" "N < 50"
  shows "m < 2"
proof -
  from assms(2) have "N < 50" by simp
  hence "24 * m + 21 < 50" using assms(1) by simp
  thus ?thesis
  proof -
    have "24 * m < 50 - 21" by (smt (verit) \<open>24 * m + 21 < 50\<close> less_diff_conv)
    hence "24 * m < 29" by simp
    then show "m < 2" by auto
  qed
qed