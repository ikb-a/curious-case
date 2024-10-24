lemma k_definition_extended:
  fixes k :: nat and d :: nat
  assumes "k = 2008^2 + 2^2008" 
  shows "k mod d = (2008^2 mod d + 2^2008 mod d) mod d"
proof -
  have "k mod d = (2008^2 + 2^2008) mod d" by (simp add: assms)
  also have "... = ((2008^2 mod d) + (2^2008 mod d)) mod d"
    by presburger
  finally show ?thesis .
qed