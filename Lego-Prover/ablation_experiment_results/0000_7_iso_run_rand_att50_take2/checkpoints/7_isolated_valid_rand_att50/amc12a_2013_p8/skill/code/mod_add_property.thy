lemma mod_add_property:
  fixes x a b n :: nat
  assumes "n > 0" "b > 0" "x mod n = a"
  shows "((x + b) mod n) = ((a + b) mod n)"
proof -
  have "((x + b) mod n) = ((x mod n) + (b mod n)) mod n"
    by presburger
  also have "... = (a + (b mod n)) mod n"
    using assms(3) by auto
  also have "... = (a + b) mod n"
    by presburger
  finally show ?thesis by auto
qed