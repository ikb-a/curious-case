lemma linear_congruence:
  fixes a b m :: nat
  assumes "m > 0" "a mod m = b"
  shows "\<exists>k. a = k * m + b"
proof -
  let ?k = "a div m"
  have "a = ?k * m + (a mod m)" by auto
  then show "\<exists>k. a = k * m + b" 
    using assms(2) by (metis mod_less)
qed