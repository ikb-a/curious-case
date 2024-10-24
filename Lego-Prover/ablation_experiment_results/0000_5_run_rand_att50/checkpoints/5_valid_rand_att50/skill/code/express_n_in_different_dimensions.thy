lemma express_N_in_different_dimensions:
  fixes N :: nat and k :: nat and d :: nat
  assumes "N = d * k + (d - 1)"
  shows "N mod d = (d - 1)"
proof -
  have "N mod d = (d * k + (d - 1)) mod d" using assms by simp
  also have "... = (d * k mod d + (d - 1) mod d)" by auto
  also have "... = (0 + (d - 1)) mod d" by auto
  also have "... = (d - 1)" by (metis add_cancel_right_left diff_less less_numeral_extra(1) mod_by_0 mod_less zero_less_iff_neq_zero)
  finally show "N mod d = (d - 1)" by simp
qed