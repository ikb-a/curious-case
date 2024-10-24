lemma mod_add_generalized:
  fixes a b m d :: nat
  assumes "d > 0"
  shows "(a + b) mod d = ((a mod d) + (b mod d)) mod d"
proof -
  have "(a + b) mod d = ((a mod d) + (b mod d) + (a div d + b div d) * d) mod d"
    by presburger
  also have "... = ((a mod d) + (b mod d)) mod d"
    by auto
  finally show ?thesis by auto
qed