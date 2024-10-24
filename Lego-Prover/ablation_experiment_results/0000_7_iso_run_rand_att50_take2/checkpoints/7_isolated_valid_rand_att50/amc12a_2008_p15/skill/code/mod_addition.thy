lemma mod_addition:
  fixes x y n :: nat
  assumes "n > 0"
  shows "(x + y) mod n = ((x mod n) + (y mod n)) mod n"
proof -
  have "x mod n + y mod n < 2 * n" using assms by (metis add_mono_thms_linordered_field(5) mod_less_divisor mult.commute mult_2_right)
  then show ?thesis
    by presburger
qed