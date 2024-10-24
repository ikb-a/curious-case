lemma mod_power_generalized:
  fixes a b n :: nat
  assumes "n > 0" "b > 0"
  shows "(a^b mod n) = ((a mod n)^b) mod n"
proof -
  have "(a^b mod n) = ((a mod n)^b) mod n" using assms by (metis power_mod)
  thus ?thesis by auto
qed