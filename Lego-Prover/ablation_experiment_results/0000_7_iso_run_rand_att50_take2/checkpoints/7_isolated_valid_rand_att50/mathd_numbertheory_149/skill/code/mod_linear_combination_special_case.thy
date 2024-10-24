lemma mod_linear_combination_special_case:
  fixes a b c m :: nat
  assumes "a mod m = b" "c mod m = 0"
  shows "(a + c) mod m = b mod m"
proof -
  have "(a + c) mod m = (a mod m + c mod m) mod m" 
    by presburger
  also have "... = (b + 0) mod m" 
    using assms by simp
  finally show ?thesis by simp
qed