lemma mod_addition:
  fixes a b m :: nat
  assumes "a mod m = x" "b mod m = y"
  shows "(a + b) mod m = (x + y) mod m"
proof -
  let ?q1 = "a div m"
  let ?q2 = "b div m"
  have "a = x + ?q1 * m" using assms(1) by auto
  have "b = y + ?q2 * m" using assms(2) by auto
  then have "a + b = (x + ?q1 * m) + (y + ?q2 * m)"
    by (metis \<open>a = x + a div m * m\<close>)
  also have "... = (x + y) + (?q1 + ?q2) * m" by (simp add: distrib_right)
  finally have "a + b = (x + y) + (?q1 + ?q2) * m" .
  then show ?thesis
    by (simp)
qed