lemma trivial_inequality:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "0 \<le> a^2" using non_negative_power[of a] by simp
  have "0 \<le> b^2" using non_negative_power[of b] by simp
  then show ?thesis using `0 \<le> a^2` by (simp add: add_nonneg_nonneg)
qed