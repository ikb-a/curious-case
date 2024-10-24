lemma mod_exponentiation_with_variable_base:
  fixes x n b :: nat
  assumes "n > 0" "b > 0" "x mod n = a" 
  shows "(x^b) mod n = (a^b) mod n"
  using mod_exponentiation_general[of x n a b] assms by (metis mod_exp_def power_mod)