lemma mod_arithmetic:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(c * a) mod m = (c * b) mod m"
proof -
  have "a = b + m * (a div m)" 
    using assms by auto
  then have "c * a = c * (b + m * (a div m))" 
    by simp
  also have "... = c * b + c * m * (a div m)" 
    by (simp add: algebra_simps)
  finally have "c * a = c * b + c * m * (a div m)" by simp
  then have "(c * a) mod m = (c * b + c * m * (a div m)) mod m" 
    by simp
  also have "... = (c * b) mod m" 
  proof (cases "c = 0")
    case True
    then have "c * b = 0" by simp
    then show ?thesis 
      by auto
  next
    case False
    then have "c * m * (a div m) mod m = 0" 
      by auto
    thus ?thesis 
      by (metis ab_semigroup_mult_class.mult_ac(1) add_0_iff mod_add_cong mod_mult_right_eq mod_mult_self1_is_0 mult.commute mult_delta_right)
  qed
  finally show ?thesis by simp
qed