lemma divisibility_properties:
  fixes a b :: nat
  assumes "a mod b = 0"
  shows "\<exists>k. a = b * k" 
proof -
  obtain q where "a = b * q" "a mod b = 0" using assms by auto
  then show ?thesis by auto
qed