lemma non_negative_square_root:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a ^ 2 = a"
proof -
  have "sqrt a ^ 2 = a" using assms by (simp add: power2_eq_square)
  then show ?thesis by simp
qed