lemma mod_add_generalized:
  fixes a b c m :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"
proof -
  have "c mod m = d" by (simp add: assms(2))
  have "(a + c) mod m = (a mod m + c mod m) mod m"
    by presburger
  also have "... = (b + d) mod m"
    using assms by (simp add: field_simps)
  finally show ?thesis by simp
qed