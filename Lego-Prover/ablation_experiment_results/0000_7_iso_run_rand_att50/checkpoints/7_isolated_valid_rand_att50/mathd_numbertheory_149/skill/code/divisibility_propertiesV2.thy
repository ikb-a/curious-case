lemma divisibility_properties:
  fixes a b d :: nat
  assumes "a mod d = 0" and "b mod d = 0"
  shows "(a + b) mod d = 0"
proof -
  have "a mod d = 0" using assms(1) by simp
  hence "a = d * (a div d)" by auto
  have "b mod d = 0" using assms(2) by simp
  hence "b = d * (b div d)" by auto
  have "a + b = d * (a div d) + d * (b div d)"
    using `a = d * (a div d)` `b = d * (b div d)` by simp
  then have "a + b = d * ((a div d) + (b div d))" by (simp add: algebra_simps)
  thus ?thesis
    by auto
qed