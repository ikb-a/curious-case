lemma mod_simplification_generalized:
  fixes x y a :: nat
  assumes "y > 0"
  shows "\<exists>k. x = k * y + (x mod y)"
proof -
  let ?a = "x mod y"
  have "x = y * (x div y) + ?a" by auto
  then show ?thesis by (metis div_mod_decomp)
qed