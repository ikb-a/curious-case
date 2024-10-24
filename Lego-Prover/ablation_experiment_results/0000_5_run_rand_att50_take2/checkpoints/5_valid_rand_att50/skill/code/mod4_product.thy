lemma mod4_product:
  fixes a b :: int
  shows "(a mod 4 * b mod 4) mod 4 = (a * b) mod 4"
proof -
  have "a mod 4 = (a + 0) mod 4" and "b mod 4 = (0 + b) mod 4" by simp_all
  then have "(a mod 4 * b mod 4) mod 4 = ((a + 0) * (0 + b)) mod 4" by (metis add_cancel_left_left add_cancel_right_right mod_mod_trivial mod_mult_left_eq mult.commute)
  thus ?thesis by auto
qed