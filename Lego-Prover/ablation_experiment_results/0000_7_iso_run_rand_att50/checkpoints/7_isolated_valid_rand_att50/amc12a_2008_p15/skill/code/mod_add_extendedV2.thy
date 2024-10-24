lemma mod_add_extended:
  fixes a b c :: nat
  assumes "a < 100" "b < 100" "c < 10"
  shows "(a + b + c) mod 10 = (a mod 10 + b mod 10 + c) mod 10"
proof -
  have "(a + b) mod 10 = (a mod 10 + b mod 10) mod 10" using mod_add_with_bounds assms(1) assms(2) by blast
  then show ?thesis by (smt (verit) mod_add_cong)
qed