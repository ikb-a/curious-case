lemma mod_add_extended:
  fixes a b d :: nat
  assumes "d > 0"
  shows "(a + b) mod d = (a mod d + b mod d) mod d"
proof -
  have "a + b = (a mod d) + (b mod d) + d * ((a div d) + (b div d))" 
    by (auto simp: field_simps)
  then show ?thesis 
    by auto
qed