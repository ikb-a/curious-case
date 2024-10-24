lemma mod_property:
  fixes a b c d :: nat
  assumes "a mod d = b mod d"
  shows "(a + c) mod d = (b + c) mod d"
proof -
  have "a mod d = b mod d" using assms by simp
  then have "(a + c) mod d = (b + c) mod d" using mod_add_cong by blast
  thus ?thesis by simp
qed