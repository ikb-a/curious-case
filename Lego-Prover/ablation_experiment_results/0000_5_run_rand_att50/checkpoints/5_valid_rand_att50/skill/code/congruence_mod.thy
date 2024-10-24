lemma congruence_mod:
  fixes N m :: nat
  assumes "N mod m = r"
  shows "\<exists>k. N = m * k + r"
proof -
  have "N = m * (N div m) + (N mod m)"
    by auto
  then obtain k where "k = N div m" 
    by auto
  then have "N = m * k + r"
    using assms by auto
  thus "\<exists>k. N = m * k + r" 
    by auto
qed