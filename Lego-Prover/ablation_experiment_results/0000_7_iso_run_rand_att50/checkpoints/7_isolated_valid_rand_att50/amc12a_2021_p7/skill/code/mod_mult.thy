lemma mod_mult:
  fixes x y n :: nat
  assumes "n > 0" "x mod n = a" "y mod n = b"
  shows "(x * y) mod n = (a * b) mod n"
proof -
  have "(x * y) mod n = ((x mod n) * (y mod n)) mod n"
    by (metis mod_mult_eq)
  also have "... = (a * b) mod n"
    using assms(2-3) by auto
  finally show ?thesis by auto
qed