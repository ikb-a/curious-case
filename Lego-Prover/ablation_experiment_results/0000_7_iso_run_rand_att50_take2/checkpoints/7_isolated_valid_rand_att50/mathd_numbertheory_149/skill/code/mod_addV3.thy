lemma mod_add:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(a + c) mod m = (b + c) mod m"
proof -
  have "a = (a div m) * m + (a mod m)" 
    by auto
  then have "a = (a div m) * m + b" 
    using assms by auto
  hence "a + c = (a div m) * m + b + c" 
    by auto
  then have "(a + c) mod m = ((a div m) * m + b + c) mod m" 
    by auto
  also have "... = (b + c) mod m" 
  proof -
    have "(a div m) * m mod m = 0" 
      by auto
    thus ?thesis 
      by (metis \<open>a + c = a div m * m + b + c\<close> calculation mod_add_cong mod_mult_self3)
  qed
  finally show ?thesis by auto
qed