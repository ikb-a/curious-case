lemma non_zero_times_inverse_for_any:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<exists>b. b = 1/a"
proof -
  let ?b = "1/a"
  have "?b * a = 1" using assms by auto
  thus ?thesis by auto
qed