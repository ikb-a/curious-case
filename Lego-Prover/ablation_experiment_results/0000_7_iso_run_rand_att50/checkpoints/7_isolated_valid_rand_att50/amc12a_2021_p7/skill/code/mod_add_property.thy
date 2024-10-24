lemma mod_add_property:
  fixes a b c d :: nat
  assumes "a mod d = b mod d"
  shows "(a + c) mod d = (b + c) mod d"
proof -
  have "(a + c) mod d = (b + c) mod d"
    using assms by (metis mod_add_cong)
  then show ?thesis by simp
qed