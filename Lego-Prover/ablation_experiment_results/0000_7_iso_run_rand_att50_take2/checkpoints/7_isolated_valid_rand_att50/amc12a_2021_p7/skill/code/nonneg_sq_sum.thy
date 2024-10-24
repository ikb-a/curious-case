lemma nonneg_sq_sum:
  fixes a b c :: real
  shows "c^2 = a^2 + b^2 \<Longrightarrow> c >= 0 \<Longrightarrow> a^2 + b^2 >= 0"
proof -
  assume "c^2 = a^2 + b^2" "c >= 0"
  hence "0 <= c^2" by (simp add: power2_eq_square)
  thus "a^2 + b^2 >= 0" using `c^2 = a^2 + b^2` by simp
qed