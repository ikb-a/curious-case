lemma mod_add_power_general:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a"
  shows "((x + b) mod n)^c = ((a + b) mod n)^c"
proof -
  have "(x + b) mod n = ((x mod n) + b) mod n"
    by (simp add: mod_add_left_eq)
  then have "((x + b) mod n)^c = ((a + b) mod n)^c"
    using assms(4) by (simp add: power_mod)
  thus ?thesis by auto
qed