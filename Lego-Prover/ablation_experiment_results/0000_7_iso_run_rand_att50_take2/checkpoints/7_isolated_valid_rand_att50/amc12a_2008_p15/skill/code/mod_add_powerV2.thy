lemma mod_add_power:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "(x + b) mod n = (x mod n + b mod n) mod n"
    using assms(1) by presburger
  then have "(x + b) mod n = (a + b) mod n"
    using assms(4) by presburger
  thus ?thesis
    by (metis (full_types) power_mod)
qed