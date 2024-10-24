lemma mod_10_add_extended:
  fixes a b c :: nat
  assumes "a mod 10 = x" "b mod 10 = y" "c mod 10 = z"
  shows "(a + b + c) mod 10 = (x + y + z) mod 10"
proof -
  have "((a + b) + c) mod 10 = ((a mod 10 + b mod 10) mod 10 + c) mod 10"
    using assms by (metis add.commute group_cancel.add1 group_cancel.add2 mod_add_eq mod_add_right_eq)
  also have "... = ((x + y) mod 10 + z) mod 10"
    by (smt (verit) assms(1) assms(2) assms(3) mod_add_right_eq)
  finally show ?thesis by presburger
qed