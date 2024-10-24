lemma mod_exponentiation_with_variable_base:
  fixes x n a b :: nat
  assumes "n > 0" "a mod n = b" "k > 0"
  shows "((a + x)^k) mod n = ((b + x)^k) mod n"
proof -
  have "((a + x)^k) mod n = (((a mod n) + (x mod n))^k) mod n" 
    using assms by (smt (verit) mod_add_left_eq mod_add_right_eq mod_exponentiation_general)
  also have "... = ((b + (x mod n))^k) mod n" using assms(2) by simp
  finally show ?thesis by (smt (verit) \<open>(a + x) ^ k mod n = (a mod n + x mod n) ^ k mod n\<close> assms(1) assms(2) assms(3) mod_add_right_eq mod_exponentiation_general)
qed