theorem chinese_remainder:
  fixes a r1 r2 m1 m2 :: nat
  assumes "a mod m1 = r1" and "a mod m2 = r2"
  shows "\<exists>k. a = r1 + k * m1"
proof -
  let ?k = "a div m1"  
  have "a = r1 + (a div m1) * m1"
    using assms(1) by auto
  show "\<exists>k. a = r1 + k * m1" 
    by (metis \<open>a = r1 + a div m1 * m1\<close>)
qed