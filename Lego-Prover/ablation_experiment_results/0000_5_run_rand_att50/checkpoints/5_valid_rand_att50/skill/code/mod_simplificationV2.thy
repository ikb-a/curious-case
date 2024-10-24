lemma mod_simplification:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(a + c) mod m = (b + c) mod m"
proof -
  have "a = b + m * (a div m)" 
    using assms by auto
  have "(a + c) mod m = (b + m * (a div m) + c) mod m"
    by (metis \<open>a = b + m * (a div m)\<close> add.commute add.left_commute mod_add_cong)
  also have "... = (b + c + m * (a div m)) mod m"
    by (simp add: algebra_simps)
  also have "... = (b + c) mod m" 
    by auto
  finally show ?thesis by simp
qed