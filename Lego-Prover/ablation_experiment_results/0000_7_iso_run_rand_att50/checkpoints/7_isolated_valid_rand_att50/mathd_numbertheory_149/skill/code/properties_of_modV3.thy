lemma properties_of_mod:
  fixes a b m :: nat
  assumes "a mod m = b" "b < m"
  shows "\<exists>k. a = k * m + b"
proof -
  have "a = m * (a div m) + a mod m"
    by (auto)
  then have "a = m * (a div m) + b"
    using assms(1) by auto
  then show ?thesis
    by (auto simp: field_simps) 
qed