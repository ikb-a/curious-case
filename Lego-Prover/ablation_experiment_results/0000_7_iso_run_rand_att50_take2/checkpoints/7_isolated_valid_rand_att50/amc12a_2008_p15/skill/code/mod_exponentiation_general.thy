lemma mod_exponentiation_general:
  fixes x n a b c :: nat
  assumes "n > 0" "x mod n = a" "b > 0" "c > 0"
  shows "(x^(b + c)) mod n = ((a^b) * (a^c)) mod n"
proof -
  have "(x^(b + c)) mod n = ((x mod n)^(b + c)) mod n" using assms by (metis power_mod)
  also have "... = ((a^(b + c)) mod n)" using assms(2) by auto
  also have "... = ((a^b * a^c) mod n)" by (metis power_add)
  finally show ?thesis by auto
qed