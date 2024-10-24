lemma floor_distribution:
  fixes n :: nat and r :: real
  assumes "n = floor r" "n + 1 = floor (r + 1)"
  shows "n + 1 - n = 1"
proof -
  from assms(1) have "n \<le> r" by arith
  from assms(2) have "n + 1 \<le> r + 1" by arith
  from assms(2) have "r + 1 < floor (r + 1) + 1" by arith
  hence "r + 1 < (n + 1) + 1" using assms(2) by (simp add: floor_eq_iff)
  then have "r < n + 1" using `n + 1 \<le> r + 1` by linarith
  have "n < n + 1" by simp
  thus ?thesis by auto
qed