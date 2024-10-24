lemma express_N_mod_d:
  fixes N :: nat and k d :: nat
  assumes "d > 0" "N = d * k + (d - 3)"
  shows "N mod d = (d - 3) mod d"
proof -
  have "N mod d = (d * k + (d - 3)) mod d" using assms by simp
  also have "... = (d * k mod d + (d - 3) mod d)" by auto
  also have "... = (0 + (d - 3) mod d)" by auto
  also have "... = (d - 3) mod d" by simp
  finally show "N mod d = (d - 3) mod d" by simp
qed