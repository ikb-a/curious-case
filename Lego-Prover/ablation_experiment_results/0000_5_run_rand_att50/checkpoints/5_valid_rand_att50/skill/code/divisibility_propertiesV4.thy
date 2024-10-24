lemma divisibility_properties:
  fixes a b :: nat
  assumes "a mod b = 0"
  shows "\<exists>k. a = b * k" 
proof -
  obtain k where "a = b * k + a mod b" 
    using assms by auto
  then have "a = b * k + 0" 
    using assms by simp
  then show ?thesis 
    by (metis add_0_right)
qed