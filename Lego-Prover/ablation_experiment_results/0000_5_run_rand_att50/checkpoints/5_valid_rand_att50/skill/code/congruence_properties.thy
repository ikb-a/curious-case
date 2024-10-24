lemma congruence_properties:
  fixes a b c d m :: nat
  assumes "a mod m = b" and "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"
proof -
  have "a = b + m * (a div m)" using assms(1) by (auto)
  have "c = d + m * (c div m)" using assms(2) by (auto)
  then have "a + c = (b + m * (a div m)) + (d + m * (c div m))"
    by (metis \<open>a = b + m * (a div m)\<close>)
  then have "a + c = (b + d) + m * ((a div m) + (c div m))" 
    by (simp add: algebra_simps)
  then have "(a + c) mod m = ((b + d) + m * ((a div m) + (c div m))) mod m"
    by simp
  also have "... = (b + d) mod m"
    by auto
  finally show ?thesis by simp
qed