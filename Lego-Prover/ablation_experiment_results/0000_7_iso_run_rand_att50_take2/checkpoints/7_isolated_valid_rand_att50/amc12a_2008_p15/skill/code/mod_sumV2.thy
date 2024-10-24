lemma mod_sum:
  fixes x y n :: nat
  shows "(x + y) mod n = ((x mod n) + (y mod n)) mod n"
proof (cases "n = 0")
  case True
  then show ?thesis
    by simp
next
  case False
  then have "n > 0" by simp
  have "x mod n < n" and "y mod n < n" using False by auto
  hence "((x mod n) + (y mod n)) < 2 * n" by arith
  have "x + y = (x mod n) + (y mod n) + (x div n + y div n) * n"
    by (auto simp: field_simps)
  then have "(x + y) mod n = (((x mod n) + (y mod n)) + (x div n + y div n) * n) mod n"
    by simp
  also have "... = ((x mod n) + (y mod n)) mod n"
  proof -
    have "((x mod n) + (y mod n) + (x div n + y div n) * n) mod n = ((x mod n) + (y mod n)) mod n"
      using `((x mod n) + (y mod n)) < 2 * n` by auto
    thus ?thesis by simp
  qed
  finally show ?thesis by simp
qed