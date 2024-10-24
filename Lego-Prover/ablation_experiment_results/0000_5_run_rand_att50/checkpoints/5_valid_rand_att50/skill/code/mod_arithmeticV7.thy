lemma mod_arithmetic:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(c * a) mod m = (c * b) mod m"
proof -
  have "a = b + m * (a div m)" 
    using assms by auto
  then have "c * a = c * (b + m * (a div m))" 
    by (simp add: algebra_simps)
  also have "... = c * b + c * (m * (a div m))" 
    by (simp add: algebra_simps)
  also have "... = c * b + (c * m) * (a div m)" 
    by auto
  finally have "c * a = c * b + (c * m) * (a div m)" 
    by simp
  then have "(c * a) mod m = (c * b + (c * m) * (a div m)) mod m" 
    by simp
  also have "... = (c * b) mod m" 
    by (metis ab_semigroup_mult_class.mult_ac(1) add_cancel_left_right mod_add_cong mod_mult_right_eq mod_mult_self1_is_0 mult.commute mult_delta_right)
  finally show ?thesis by simp
qed