lemma sqrt_nonneg_and_pos:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0" 
  and "a > 0 \<longrightarrow> sqrt a > 0"
proof -
  show "sqrt a \<ge> 0" using assms by simp
  show "a > 0 \<longrightarrow> sqrt a > 0" 
    using assms by auto
qed