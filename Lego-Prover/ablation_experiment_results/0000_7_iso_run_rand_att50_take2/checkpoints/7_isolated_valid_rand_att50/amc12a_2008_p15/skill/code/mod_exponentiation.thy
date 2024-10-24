lemma mod_exponentiation:
  fixes x n a b :: nat
  assumes "n > 0" "x mod n = a" "b > 0"
  shows "(x^b) mod n = (a^b) mod n"
proof -
  have "(x^b) mod n = ((x mod n)^b) mod n" using assms by (metis power_mod)
  also have "... = (a^b) mod n" using assms(2) by auto
  finally show ?thesis by auto
qed