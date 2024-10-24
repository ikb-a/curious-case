lemma mod_bound:
  fixes n :: nat
  assumes "n < k" "n mod m = r"
  shows "\<exists>x. x < k \<and> x mod m = r"
proof -
  from assms(2) have "n mod m = r" by simp
  then have "n = m * (n div m) + r" by auto
  let ?x = "n"
  have "?x mod m = r" by (metis assms(2))
  moreover have "?x < k" using assms(1) by simp
  ultimately show "\<exists>x. x < k \<and> x mod m = r" 
    by auto
qed