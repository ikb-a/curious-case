lemma trivial_inequality:
  fixes a b :: real
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "a^2 \<ge> 0" by auto
  have "b^2 \<ge> 0" by auto
  then have "a^2 + b^2 \<ge> 0 + 0" by (simp add: add_nonneg_nonneg)
  thus ?thesis by simp
qed