lemma mod_properties:
  fixes a b c d :: nat
  assumes "a mod d = b" "c mod d = 0"
  shows "(a + c) mod d = b"
proof -
  have "a = b + (a div d) * d" using assms(1) by auto
  moreover have "c = 0 + (c div d) * d" using assms(2) by auto
  ultimately have "a + c = (b + (a div d) * d) + ((c div d) * d)"
    by (simp add: add.commute)
  then have "(a + c) mod d = ((b + (a div d) * d + (c div d) * d) mod d)"
    by simp
  moreover have "((a div d) * d + (c div d) * d) mod d = 0"
    by auto
  ultimately have "(a + c) mod d = (b + 0) mod d"
    by simp
  thus ?thesis by (metis add_0_iff assms(1) assms(2) mod_0 mod_add_cong)
qed