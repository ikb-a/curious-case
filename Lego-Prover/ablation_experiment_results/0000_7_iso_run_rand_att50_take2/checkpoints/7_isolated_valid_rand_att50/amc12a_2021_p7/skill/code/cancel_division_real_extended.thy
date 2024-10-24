lemma cancel_division_real_extended:
  fixes x a b c d :: real
  assumes "x \<noteq> 0" "a + b / x = c" "c + d = e"
  shows "a * x + b = e * x - d * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then have "x * a + b = c * x" using assms(1) by (simp add: distrib_left)
  then have "b = c * x - a * x" by sos
  then have "b = (e - d) * x - a * x" using assms(3) by (simp add: distrib_left)
  thus ?thesis by sos
qed