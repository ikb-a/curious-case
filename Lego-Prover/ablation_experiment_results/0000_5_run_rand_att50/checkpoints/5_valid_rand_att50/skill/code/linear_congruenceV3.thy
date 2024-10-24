lemma linear_congruence:
  fixes a b m :: nat
  assumes "m > 0" "a mod m = b"
  shows "\<exists>k. a = k * m + b"
proof -
  have b_less_m: "b < m" using assms(2) by (metis assms(1) mod_less_divisor)
  let ?k = "a div m"  
  have "a = ?k * m + (a mod m)" by auto
  then show "\<exists>k. a = k * m + b" 
    using b_less_m by (metis assms(2) mult.commute mult_div_mod_eq)
qed