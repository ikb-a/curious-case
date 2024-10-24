lemma linear_congruence_solution:
  fixes a b m :: nat
  assumes "m > 0"
  shows "\<exists>k. a + k * m = b \<Longrightarrow> a mod m = b mod m"
proof -
  assume "\<exists>k. a + k * m = b"
  then obtain k where eq: "a + k * m = b" by auto
  have "b = a + k * m" by (metis eq)
  hence "b mod m = (a + k * m) mod m" by simp
  also have "... = (a mod m + (k * m mod m)) mod m" by auto
  also have "... = (a mod m + 0) mod m" using assms by auto
  finally show "a mod m = b mod m" by simp
qed