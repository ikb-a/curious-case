lemma mod_sum_of_powers:
  fixes x y n :: nat
  assumes "n > 0"
  shows "(x + y)^c mod n = ((x mod n) + (y mod n))^c mod n"
proof -
  have "(x + y) mod n = (x mod n + y mod n) mod n"
    by presburger
  then show ?thesis
    by (smt (verit) power_mod)
qed