lemma solve_linear_congruence:
  fixes a b m :: nat
  assumes "m > 0" "a mod m = b"
  shows "(\<exists> k. a = b + k * m)"
proof -
  have b_less_m: "b < m" using assms(2) by (metis assms(1) mod_less_divisor)
  let ?k = "a div m"  
  have "a = ?k * m + (a mod m)" by auto
  then have "a = ?k * m + b" using assms(2) by simp
  then show "\<exists>k. a = b + k * m" by (auto simp: field_simps)
qed