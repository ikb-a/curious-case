lemma divisibility_properties:
  fixes a b d :: nat
  assumes "a mod d = 0" and "b mod d = 0"
  shows "(a + b) mod d = 0"
proof -
  have "a = d * (a div d)" using assms(1) by auto
  have "b = d * (b div d)" using assms(2) by auto
  then have "a + b = d * (a div d + b div d)" by (metis \<open>a = d * (a div d)\<close> add.commute add_left_imp_eq add_mult_distrib2)
  then have "(a + b) mod d = (d * (a div d + b div d)) mod d"
    by simp
  also have "... = 0" by (simp add: mod_mult_self2)
  finally show ?thesis by simp
qed