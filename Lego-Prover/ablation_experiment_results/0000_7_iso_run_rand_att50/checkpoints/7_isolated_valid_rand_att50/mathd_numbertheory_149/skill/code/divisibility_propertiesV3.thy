lemma divisibility_properties:
  fixes a b d :: nat
  assumes "a mod d = 0" and "b mod d = 0"
  shows "(a + b) mod d = 0"
proof -
  obtain k1 where "a = d * k1" 
    using assms(1) by auto
  obtain k2 where "b = d * k2" 
    using assms(2) by auto
  have "a + b = (d * k1) + (d * k2)"
    by (metis `a = d * k1` `b = d * k2` algebra_simps)
  then have "a + b = d * (k1 + k2)"
    by (simp add: algebra_simps)
  then have "(a + b) mod d = (d * (k1 + k2)) mod d"
    by simp
  also have "... = 0"
    by auto
  finally show ?thesis by simp
qed