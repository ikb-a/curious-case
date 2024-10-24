lemma real_arithmetic:
  fixes a b c :: real
  shows "a + b + c = (a + b) + c"
proof -
  have "a + b + c = (a + b) + c"
    by (simp add: ac_simps)
  thus ?thesis by simp
qed