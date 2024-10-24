lemma mod_exponentiation_multi_generalized:
  fixes x n a b k :: nat
  assumes "n > 0" "x mod n = a" "b > 0" "k > 0"
  shows "(x^(b*k)) mod n = (a^k)^b mod n"
proof -
  have "(x^(b*k)) mod n = ((x mod n)^(b*k)) mod n" using assms by (metis power_mod)
  also have "... = (a^(b*k)) mod n" using assms(2) by auto
  finally show ?thesis by (metis \<open>x ^ (b * k) mod n = (x mod n) ^ (b * k) mod n\<close> assms(2) mod_exp_def mult.commute mult_delta_right power_mult)
qed