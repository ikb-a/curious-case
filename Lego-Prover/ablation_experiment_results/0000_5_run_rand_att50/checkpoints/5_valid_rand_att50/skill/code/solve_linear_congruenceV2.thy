lemma solve_linear_congruence:
  fixes a b m :: nat
  assumes "m > 0" "a mod m = b"
  shows "(\<exists> k. a = b + k * m)"
proof -
  let ?k = "a div m"
  have "a = ?k * m + (a mod m)" by auto
  then have "a = ?k * m + b" using assms(2) by (metis mod_less)
  hence "a = b + (?k * m)" by (simp add: algebra_simps)
  thus ?thesis by (metis)
qed