lemma integer_divisibility:
  fixes a b :: int
  assumes "b > 0" "a mod b = 0"
  shows "\<exists>k. a = k * b"
proof -
  obtain k where "a = k * b + a mod b" by (metis add_cancel_left_right assms(2) mult.commute zmod_eq_0D)
  then have "a = k * b + 0" using assms(2) by simp
  thus ?thesis by (metis add_0_right)
qed