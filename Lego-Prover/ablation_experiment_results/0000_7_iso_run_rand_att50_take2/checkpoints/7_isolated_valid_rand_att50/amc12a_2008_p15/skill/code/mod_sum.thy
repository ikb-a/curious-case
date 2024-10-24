lemma mod_sum:
  fixes x y n :: nat
  shows "(x + y) mod n = ((x mod n) + (y mod n)) mod n"
proof -
  have "x + y = (x mod n) + (y mod n) + (x div n + y div n) * n"
    by (auto simp: field_simps)
  then have "(x + y) mod n = ((x mod n) + (y mod n) + (x div n + y div n) * n) mod n"
    by simp
  also have "... = ((x mod n) + (y mod n)) mod n"
    by auto
  finally show ?thesis by simp
qed