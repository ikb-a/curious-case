lemma sum_of_odd_even:
  fixes a b :: nat
  assumes "odd a" and "even b"
  shows "odd (a + b) \<and> even (a + b + 1)"
proof -
  have "odd (a + b)" using odd_even_sum assms by auto
  have "a + b + 1 = (a + b) + 1" by simp
  then have "even (a + b + 1)" using assms(2) by (metis \<open>odd (a + b)\<close> add.commute odd_even_add odd_one)
  thus ?thesis by auto
qed