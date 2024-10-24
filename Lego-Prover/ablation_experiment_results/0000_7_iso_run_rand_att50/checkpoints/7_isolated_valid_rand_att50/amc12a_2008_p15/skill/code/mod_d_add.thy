lemma mod_d_add:
  fixes a b d :: nat
  assumes "d > 0"
  shows "(a + b) mod d = (a mod d + b mod d) mod d"
proof -
  have "a mod d < d" by (rule mod_less_divisor[OF assms])
  have "b mod d < d" by (rule mod_less_divisor[OF assms])
  show ?thesis 
  proof (cases "a + b < d")
    case True
    then have "(a + b) mod d = a + b" by simp
    then show ?thesis by presburger
  next
    case False
    then have "(a + b) mod d = (a mod d + b mod d) mod d"
      by presburger
    thus ?thesis by simp
  qed
qed