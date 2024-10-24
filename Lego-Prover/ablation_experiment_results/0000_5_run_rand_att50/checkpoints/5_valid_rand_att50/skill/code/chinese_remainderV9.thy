theorem chinese_remainder:
  fixes a m1 m2 r1 r2 :: nat
  assumes "a mod m1 = r1" and "a mod m2 = r2"
  shows "\<exists>k. a = r1 + k * m1"
proof -
  let ?k = "a div m1"
  have "a = ?k * m1 + (a mod m1)" by auto
  then have "a = ?k * m1 + r1" using assms(1) by simp
  thus "\<exists>k. a = r1 + k * m1" 
    by (auto simp: field_simps)
qed