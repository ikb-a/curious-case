lemma properties_of_mod:
  fixes a b m :: nat
  assumes "a mod m = b" "b < m"
  shows "\<exists>k. a = k * m + b"
proof -
  have "a = (a div m) * m + a mod m"
    by (metis div_mult_mod_eq)
  then show ?thesis
    using assms by auto
qed