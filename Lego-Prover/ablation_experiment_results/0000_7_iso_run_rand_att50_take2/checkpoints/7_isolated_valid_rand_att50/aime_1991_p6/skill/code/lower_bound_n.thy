lemma lower_bound_n:
  fixes n :: int
  shows "73 * n - 473 \<ge> 0 \<longleftrightarrow> n \<ge> 7"
proof -
  have "73 * n - 473 \<ge> 0 \<longleftrightarrow> 73 * n \<ge> 473" by simp
  also have "73 * n \<ge> 473 \<longleftrightarrow> n \<ge> 473 / 73" by auto
  finally show ?thesis by auto
qed