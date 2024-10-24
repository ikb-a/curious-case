lemma congruence_class_representation:
  fixes n m :: nat
  assumes "n mod m = r" and "0 \<le> r" and "r < m"
  shows "\<exists>k. n = m * k + r"
proof -
  from assms(1) have "n mod m = r" by simp
  then have "n = m * (n div m) + (n mod m)"
    by auto
  then have "n = m * (n div m) + r"
    using assms(1) by auto
  thus "\<exists>k. n = m * k + r" 
    by (rule exI[where x="n div m"])
qed