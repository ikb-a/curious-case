lemma congruence_mod:
  fixes N m :: nat
  assumes "N mod m = r"
  shows "\<exists>k. N = m * k + r"
proof -
  have "N = m * (N div m) + (N mod m)"
    by auto
  then obtain k where "k = N div m"
    by auto
  then show "\<exists>k. N = m * k + r"
    using assms by (metis mult.commute mult_div_mod_eq)
qed