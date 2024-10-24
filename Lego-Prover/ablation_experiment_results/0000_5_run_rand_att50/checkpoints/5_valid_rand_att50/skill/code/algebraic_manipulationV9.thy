lemma algebraic_manipulation:
  fixes x y z :: nat
  assumes "x + y = z"
  shows "y = z - x"
proof -
  have "z - x = (x + y) - x" using assms by simp
  then show "y = z - x" by auto
qed