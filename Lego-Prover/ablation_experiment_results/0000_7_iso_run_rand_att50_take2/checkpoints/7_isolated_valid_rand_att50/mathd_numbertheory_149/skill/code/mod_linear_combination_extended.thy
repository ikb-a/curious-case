lemma mod_linear_combination_extended:
  fixes a b c d e f m :: nat
  assumes "a mod m = b" "c mod m = d" "e mod m = f"
  shows "(a + c + e) mod m = (b + d + f) mod m"
proof -
  have "(a + c + e) mod m = ((a + c) mod m + e) mod m"
    by presburger
  also have "... = ((b + d) mod m + f) mod m"
    using assms by (smt (verit) mod_add_left_eq mod_add_right_eq)
  finally show ?thesis by presburger
qed