lemma divisibility_properties:
  fixes a b m :: nat
  assumes "a mod m = b" "b < m"
  shows "\<exists>k. a = k * m + b"
proof -
  from assms(1) have "a mod m = b" by simp
  then have "a = m * (a div m) + (a mod m)"
    by auto
  then show "\<exists>k. a = k * m + b" 
    using assms(1) by (metis div_mult_mod_eq)
qed