lemma multiplication_by_zero:
  fixes a :: real
  shows "a * 0 = 0"
proof -
  have "a * 0 = 0" by (simp add: algebra_simps)
  then show ?thesis by simp
qed