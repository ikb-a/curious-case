lemma mod_d_add:
  fixes a b d :: nat
  assumes "d > 0"
  shows "(a + b) mod d = (a mod d + b mod d) mod d"
proof -
  have "a + b mod d = (a mod d + b mod d) + (a div d) * d + (b div d) * d mod d" 
    by (simp add: mod_add_eq)
  then show ?thesis
    by (simp add: mod_add_eq)
qed