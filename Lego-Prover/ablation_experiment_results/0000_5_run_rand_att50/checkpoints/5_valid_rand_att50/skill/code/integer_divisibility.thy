lemma integer_divisibility:
  fixes a b :: int
  assumes "b > 0" "a mod b = 0"
  shows "\<exists>k. a = k * b"
proof -
  obtain k where "a = k * b + 0" 
    using assms(2) by fastforce
  then have "a = k * b" by (simp add: add_0)
  thus ?thesis by auto
qed