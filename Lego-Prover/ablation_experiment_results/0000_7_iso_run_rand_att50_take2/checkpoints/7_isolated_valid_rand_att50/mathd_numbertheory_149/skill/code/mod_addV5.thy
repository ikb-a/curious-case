lemma mod_add:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(a + c) mod m = (b + c) mod m"
proof -
  have "a mod m = b" 
    using assms by auto
  have "(a + c) mod m = (b + c + (a div m) * m) mod m"
    using `a mod m = b` by fastforce
  also have "... = (b + c) mod m"
    by auto
  finally show ?thesis by auto
qed