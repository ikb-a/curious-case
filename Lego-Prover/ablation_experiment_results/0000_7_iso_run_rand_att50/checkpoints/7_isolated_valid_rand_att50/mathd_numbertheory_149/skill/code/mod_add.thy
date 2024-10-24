lemma mod_add:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(a + c) mod m = (b + c) mod m"
proof -
  have "(a + c) mod m = (a mod m + c) mod m"
    by (metis mod_add_left_eq)
  also have "... = (b + c) mod m"
    using assms by auto
  finally show ?thesis by simp
qed