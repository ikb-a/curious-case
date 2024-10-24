lemma mod_congruence_multiple_additive:
  fixes a b c m :: nat
  assumes "a mod m = b mod m"
  shows "((a + c) mod m) = ((b + c) mod m)"
proof -
  have "a mod m = b mod m" 
    using assms by auto
  then have "(a + c) mod m = (b + c) mod m" 
    using assms by (metis mod_add_cong)
  thus ?thesis by auto
qed