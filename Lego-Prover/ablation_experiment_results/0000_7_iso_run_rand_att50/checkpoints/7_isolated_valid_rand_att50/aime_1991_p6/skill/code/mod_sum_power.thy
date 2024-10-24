lemma mod_sum_power:
  fixes x y n a b c :: nat
  assumes "n > 0" "x mod n = a" "y mod n = b" "c > 0"
  shows "(x + y) ^ c mod n = (a + b) ^ c mod n"
proof -
  have "(x + y) mod n = (a + b) mod n"
    by (metis assms(2) assms(3) mod_add_cong mod_add_eq)
  then show ?thesis
    by (metis mod_add_left_eq power_mod)
qed