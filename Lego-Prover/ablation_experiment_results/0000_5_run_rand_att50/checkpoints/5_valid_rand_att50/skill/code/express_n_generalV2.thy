lemma express_N_general:
  fixes N :: nat and k :: nat and d :: nat
  assumes "d > 0" "N = d * k + (d - 3)" 
  shows "N mod d = (d - 3) mod d"
proof -
  have "N mod d = (d * k + (d - 3)) mod d" using assms by simp
  also have "... = (d * k mod d + (d - 3) mod d)" by auto
  also have "... = (0 + (d - 3) mod d)" by auto
  also have "... = (d - 3)" by (simp add: assms(1))
  finally show "N mod d = (d - 3) mod d" by (metis assms(2) mod_if mod_mult_self4 mult_eq_if one_add_one one_plus_numeral semiring_norm(3))
qed