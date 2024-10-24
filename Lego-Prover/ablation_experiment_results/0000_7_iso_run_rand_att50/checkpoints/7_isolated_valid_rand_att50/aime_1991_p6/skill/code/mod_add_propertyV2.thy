lemma mod_add_property:
  fixes x a b n :: nat
  assumes "n > 0" "b > 0" "x mod n = a"
  shows "(x + b) mod n = (a + b) mod n"
proof -
  have "(x + b) mod n = (x mod n + b) mod n" 
    using assms(3) by (smt (verit) mod_add_left_eq)
  also have "... = (a + b) mod n" 
    using assms(3) by auto
  finally show ?thesis by simp
qed