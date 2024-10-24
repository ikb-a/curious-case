lemma mod_linear_combination_general:
  fixes a b c d m :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"
proof -
  have "(a + c) mod m = ((a mod m) + (c mod m)) mod m"
    by presburger
  also have "... = (b + d) mod m"
    using assms by auto
  finally show ?thesis by simp
qed