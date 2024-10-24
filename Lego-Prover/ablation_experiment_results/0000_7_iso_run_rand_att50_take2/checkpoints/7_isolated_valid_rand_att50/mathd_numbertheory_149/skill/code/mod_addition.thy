lemma mod_addition:
  fixes a b m :: nat
  assumes "a mod m = b" "b < m"
  shows "(a + b) mod m = (b + b) mod m"
proof -
  have "a = b + (a div m) * m" using assms(1) by auto
  then have "a + b = (b + (a div m) * m) + b" by simp
  also have "... = (b + b) + (a div m) * m" by (simp add: algebra_simps)
  finally have "a + b = (b + b) + (a div m) * m" .
  then have "(a + b) mod m = ((b + b) + (a div m) * m) mod m" by presburger
  also have "... = (b + b) mod m" by auto
  finally show ?thesis using assms(1) by auto
qed