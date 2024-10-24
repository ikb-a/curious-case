lemma mod_addition_general:
  fixes a b m :: nat
  assumes "m > 0"
  shows "(a + b) mod m = (a mod m + b mod m) mod m"
proof -
  have "a mod m + b mod m < 2 * m" using assms by (metis add_mono_thms_linordered_field(5) mod_less_divisor mult.commute mult_2_right)
  hence "(a + b) mod m = (a mod m + b mod m) mod m" 
    by presburger
  thus ?thesis by simp
qed