lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "\<exists>k. a mod n = k \<and> (k < n)"
proof -
  obtain k where "a mod n = k" by auto
  then have "k < n" using assms by auto
  then show ?thesis using `a mod n = k` by auto
qed