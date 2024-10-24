lemma real_distributive:
  fixes a b c :: real
  shows "a * (b + c) = a * b + a * c"
proof -
  have "a * (b + c) = a * b + a * c" by (simp add: distrib_left)
  thus ?thesis by simp
qed