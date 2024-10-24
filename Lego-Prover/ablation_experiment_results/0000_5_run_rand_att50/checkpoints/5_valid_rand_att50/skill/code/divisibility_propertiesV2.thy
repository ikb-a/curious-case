lemma divisibility_properties:
  fixes a b :: nat
  assumes "a mod b = 0"
  shows "\<exists>k. a = b * k" 
proof -
  obtain k where "a = b * k" and "a mod b = 0" using assms by auto
  then show ?thesis by auto
qed