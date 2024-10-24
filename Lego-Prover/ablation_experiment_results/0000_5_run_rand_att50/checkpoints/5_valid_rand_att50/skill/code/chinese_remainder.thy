theorem chinese_remainder:
  fixes a m1 m2 r1 r2 :: nat
  assumes "a mod m1 = r1" and "a mod m2 = r2"
  shows "\<exists>k. a = r1 + k * m1"
proof -
  obtain k1 where "a = r1 + k1 * m1" 
    using assms(1) by (metis mod_div_mult_eq)
  thus "\<exists>k. a = r1 + k * m1" 
    by (rule exI[where x=k1])
qed