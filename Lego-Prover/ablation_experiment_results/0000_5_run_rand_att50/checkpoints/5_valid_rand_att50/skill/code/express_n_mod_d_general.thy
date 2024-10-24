lemma express_N_mod_d_general:
  fixes N :: nat and k d r :: nat
  assumes "d > 0" "N = d * k + r" "r < d"
  shows "N mod d = r"
proof -
  have "N mod d = (d * k + r) mod d" using assms by simp
  also have "... = (d * k mod d + r mod d)" by auto
  also have "... = (0 + r)" by (metis add_0 add_cancel_left_left assms(3) mod_less mod_mult_self1_is_0)
  finally show "N mod d = r" by simp
qed