lemma mod_n_add:
  fixes a b d :: nat
  assumes "d > 0"
  shows "(a + b) mod d = (a mod d + b mod d) mod d"
proof -
  have "a mod d + b mod d < d + d" by (metis add_strict_mono assms mod_less_divisor)
  then show ?thesis 
    by presburger
qed