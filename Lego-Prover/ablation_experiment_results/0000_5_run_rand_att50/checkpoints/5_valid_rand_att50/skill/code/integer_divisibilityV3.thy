lemma integer_divisibility:
  fixes a b :: int
  assumes "b > 0" "a mod b = 0"
  shows "\<exists>k. a = k * b"
proof -
  let ?k = "a div b"  
  have "a = ?k * b + (a mod b)" by (metis div_mult_mod_eq)
  from assms(2) have "a mod b = 0" by simp
  then have "a = ?k * b + 0" by auto
  thus ?thesis by auto  
qed