lemma congruence_mod:
  fixes N :: nat
  fixes m b :: nat
  assumes "N mod m = b"
  shows "\<exists>k. N = m * k + b"
proof -
  have "N = m * (N div m) + (N mod m)"
    by auto
  then have "N = m * (N div m) + b"
    using assms by simp
  then obtain k where "k = N div m"
    by auto
  thus "\<exists>k. N = m * k + b"
    by (metis \<open>N = m * (N div m) + b\<close>)
qed