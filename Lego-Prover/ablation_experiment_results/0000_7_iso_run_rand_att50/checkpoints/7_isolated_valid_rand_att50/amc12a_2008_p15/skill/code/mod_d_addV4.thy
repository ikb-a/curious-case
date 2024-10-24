lemma mod_d_add:
  fixes a b d :: nat
  assumes "d > 0"
  shows "(a + b) mod d = (a mod d + b mod d) mod d"
proof -
  have "a mod d < d" by (rule mod_less_divisor[OF assms(1)])
  have "b mod d < d" by (rule mod_less_divisor[OF assms(1)])
  have "(a mod d + b mod d) mod d < 2 * d" 
    by (metis add_strict_increasing2 assms less_eq_nat.simps(1) mod_add_left_eq mod_add_right_eq mod_less_divisor mult.commute mult_2_right)
  hence "(a + b) mod d = ((a mod d + b mod d) + (a - a mod d) + (b - b mod d)) mod d"
    by (simp add: mod_add_eq)
  thus ?thesis 
    by (simp add: mod_add_eq)
qed