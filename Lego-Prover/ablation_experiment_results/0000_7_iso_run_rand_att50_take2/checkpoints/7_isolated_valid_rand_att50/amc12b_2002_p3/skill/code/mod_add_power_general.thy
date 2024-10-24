lemma mod_add_power_general:
  fixes x b c n a :: nat
  assumes "n > 0" "b > 0" "x mod n = a" "c > 0"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "((x + b)^c) mod n = (((x + b)^c mod n))" by presburger
  also have "... = (((x mod n) + b)^c) mod n" using assms(4) by (metis mod_add_left_eq power_mod)
  also have "... = ((a + b)^c) mod n" using assms(3) by auto
  finally show ?thesis by (metis \<open>(x + b) ^ c mod n = (x mod n + b) ^ c mod n\<close> add.commute assms(3))
qed