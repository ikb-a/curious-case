lemma add_and_multiply:
  fixes x y z :: real
  assumes "x > 0" "y > 0" "z > 0"
  shows "x * (y + z) = x * y + x * z"
proof -
  have "x * (y + z) = x * y + x * z" by (simp add: distrib_left)
  thus ?thesis by simp
qed