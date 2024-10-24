lemma integer_divisibility:
  fixes a b :: int
  assumes "b > 0" "a mod b = 0"
  shows "\<exists>k. a = k * b"
proof -
  have "a mod b = 0 \<Longrightarrow> \<exists>k. a = k * b" 
    by auto
  then obtain k where "a = k * b" using assms(2) by blast
  thus ?thesis by auto
qed