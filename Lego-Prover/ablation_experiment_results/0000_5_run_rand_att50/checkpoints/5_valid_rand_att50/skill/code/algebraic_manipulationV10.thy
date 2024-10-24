lemma algebraic_manipulation:
  fixes x y z :: nat
  assumes "x + y = z"
  shows "y = z - x"
proof -
  have "y = z - x" using assms by auto
  thus ?thesis by simp
qed