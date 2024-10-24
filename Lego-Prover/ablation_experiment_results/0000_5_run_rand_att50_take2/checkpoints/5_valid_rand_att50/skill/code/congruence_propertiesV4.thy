lemma congruence_properties:
  fixes a b c d m :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis assms(1) assms(2) mod_by_0)
next
  case False
  then have "m > 0" by simp
  have "a = b + (a div m) * m" and "c = d + (c div m) * m"
    using assms by auto
  have "a + c = (b + (a div m) * m) + (d + (c div m) * m)"
    by (metis \<open>a = b + (a div m) * m\<close> \<open>c = d + (c div m) * m\<close>)
  then have "a + c = (b + d) + ((a div m) + (c div m)) * m"
    by (simp add: algebra_simps)
  have "(a + c) mod m = (((b + d) + ((a div m) + (c div m)) * m) mod m)"
    by (metis \<open>a + c = b + d + (a div m + c div m) * m\<close>)
  also have "... = (b + d) mod m"
    by auto
  finally show ?thesis
    by auto
qed