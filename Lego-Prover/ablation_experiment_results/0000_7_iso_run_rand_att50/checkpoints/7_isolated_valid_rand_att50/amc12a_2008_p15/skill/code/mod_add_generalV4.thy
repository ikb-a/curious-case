lemma mod_add_general:
  fixes a b d :: nat
  assumes "d > 0"
  shows "(a + b) mod d = (a mod d + b mod d) mod d"
proof -
  have "a mod d < d" by (rule mod_less_divisor[OF assms(1)])
  have "b mod d < d" by (rule mod_less_divisor[OF assms(1)])
  then have "a mod d + b mod d < 2 * d" by (metis \<open>a mod d < d\<close> add_mono_thms_linordered_field(5) mult.commute mult_2_right)
  then show ?thesis
    using assms(1) by (metis mod_add_eq)
qed