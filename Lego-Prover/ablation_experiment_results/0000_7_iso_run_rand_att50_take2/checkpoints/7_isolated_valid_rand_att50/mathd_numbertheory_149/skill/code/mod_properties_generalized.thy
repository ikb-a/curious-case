lemma mod_properties_generalized:
  fixes a b c d :: nat
  assumes "a mod d = b" "c mod d = 0"
  shows "(a + c) mod d = b"
proof -
  have "c mod d = 0" using assms(2) by simp
  then have "(a + c) mod d = (b + 0) mod d" using assms(1) by auto
  then show ?thesis by (metis add_0_iff assms(1) assms(2) mod_0 mod_add_cong)
qed