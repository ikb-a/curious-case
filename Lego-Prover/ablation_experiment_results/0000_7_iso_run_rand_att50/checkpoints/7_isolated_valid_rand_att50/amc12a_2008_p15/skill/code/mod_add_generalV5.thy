lemma mod_add_general:
  fixes a b d :: nat
  assumes "d > 0"
  shows "(a + b) mod d = (a mod d + b mod d) mod d"
proof -
  have "a mod d < d" by (rule mod_less_divisor[OF assms(1)])
  have "b mod d < d" by (rule mod_less_divisor[OF assms(1)])
  have "(a + b) mod d = ((a mod d) + (b mod d)) mod d"
    by presburger
  then show ?thesis by simp
qed