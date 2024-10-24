lemma linear_congruence:
  fixes a b m :: nat
  assumes "m > 0"
  shows "(\<exists> x. x mod m = a) \<longleftrightarrow> (a < m)"
proof
  assume "\<exists> x. x mod m = a"
  then obtain x where "x mod m = a" by auto
  hence "a < m" using assms by auto
  thus "a < m" by simp
next
  assume "a < m"
  then have "a mod m = a" by (metis mod_less)
  thus "\<exists> x. x mod m = a" by (metis)
qed