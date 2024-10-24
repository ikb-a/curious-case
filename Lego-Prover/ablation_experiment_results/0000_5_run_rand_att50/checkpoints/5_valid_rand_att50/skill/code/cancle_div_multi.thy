lemma cancle_div_multi:
  fixes x a b c d:: real
  assumes "x > 0" "d > 0" "a + b / x = c" "e + f / x = g"
  shows "(a * x + b) + (e * x + f) = (c + g) * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by (metis assms(3) mult.commute)
  have "x * (e + f / x) = g * x" using assms(4) by auto
  then have "x * (a + b / x) + x * (e + f / x) = c * x + g * x"
    by (metis \<open>x * (a + b / x) = c * x\<close> comm_semiring_class.distrib mult.commute ring_class.ring_distribs(2))
  then show ?thesis
    using assms(1) by sos
qed