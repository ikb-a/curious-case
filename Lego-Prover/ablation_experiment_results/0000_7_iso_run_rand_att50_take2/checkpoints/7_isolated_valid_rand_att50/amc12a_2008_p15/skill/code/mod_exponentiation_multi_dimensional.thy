lemma mod_exponentiation_multi_dimensional:
  fixes x n a b d :: nat
  assumes "n > 0" "x mod n = a" "b > 0" "d > 0"
  shows "(\<Prod>(i::nat) = 1..d. (x^b) mod n) = (\<Prod>(i::nat) = 1..d. (a^b) mod n)"
proof -
  have "(\<Prod>(i::nat) = 1..d. (x^b) mod n) = (\<Prod>(i::nat) = 1..d. ((x mod n)^b) mod n)" using assms(1) by (metis power_mod)
  also have "... = (\<Prod>(i::nat) = 1..d. (a^b) mod n)" using assms(2) by auto
  finally show ?thesis by auto
qed