lemma valid_n_values:
  fixes n :: nat
  assumes "73 * n + x = 546"
  shows "x \<ge> 0 \<Longrightarrow> n \<le> 7"
proof -
  assume "x \<ge> 0"
  from assms have "x = 546 - 73 * n" by simp
  then have "546 - 73 * n \<ge> 0" using `x \<ge> 0` by simp
  thus "n \<le> 7" 
  proof -
    have "546 - x = 73 * n" using assms by simp
    have "73 * n \<le> 546" by (metis assms le_add1)
    from `73 * n \<le> 546` show "n \<le> 7" by auto
  qed
qed