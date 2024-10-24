lemma add_and_multiply:
  fixes x y z :: real
  assumes "x > 0" "y > 0"
  shows "z + (x * y) = z + x * y"
proof -
  have "z + (x * y) = z + x * y" by simp
  thus ?thesis by simp
qed