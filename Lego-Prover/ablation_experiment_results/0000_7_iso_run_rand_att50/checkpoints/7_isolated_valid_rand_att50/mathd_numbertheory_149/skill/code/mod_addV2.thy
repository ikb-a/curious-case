lemma mod_add:
  fixes x y n :: nat
  assumes "n > 0"
  shows "(x + y) mod n = ((x mod n) + (y mod n)) mod n"
proof -
  have "x + y = (x mod n) + (y mod n) + n * ((x div n) + (y div n))"
    by (auto simp: field_simps)
  then have "(x + y) mod n = (((x mod n) + (y mod n)) + n * ((x div n) + (y div n))) mod n"
    by simp
  also have "... = ((x mod n) + (y mod n)) mod n"
    using `n > 0` by auto
  finally show ?thesis by simp
qed