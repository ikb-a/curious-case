lemma mod_sum_property:
  fixes x y n :: nat
  assumes "n > 0" "x mod n = a" "y mod n = b"
  shows "(x + y) mod n = (a + b) mod n"
proof -
  have "(x + y) mod n = (x mod n + y mod n) mod n"
    using mod_add_left_eq by presburger
  also have "... = (a + b) mod n" using assms by auto
  finally show ?thesis by auto
qed