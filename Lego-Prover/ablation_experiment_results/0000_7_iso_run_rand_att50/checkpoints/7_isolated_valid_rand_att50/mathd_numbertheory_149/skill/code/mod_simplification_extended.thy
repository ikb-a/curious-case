lemma mod_simplification_extended:
  fixes x y a d :: nat
  assumes "y > 0" and "x mod y = a" and "x mod d = a"
  shows "\<exists>k. x = k * y + a" and "\<exists>m. x = m * d + a"
proof -
  have "x = y * (x div y) + x mod y"
    by auto
  then have "x = y * (x div y) + a"
    using assms(2) by auto
  have "x = d * (x div d) + x mod d"
    by auto
  then have "x = d * (x div d) + a"
    using assms(3) by auto
  show "\<exists>k. x = k * y + a" 
    by (metis \<open>x = y * (x div y) + a\<close> mult.commute)
  show "\<exists>m. x = m * d + a" 
    by (metis \<open>x = d * (x div d) + a\<close> mult.commute)
qed