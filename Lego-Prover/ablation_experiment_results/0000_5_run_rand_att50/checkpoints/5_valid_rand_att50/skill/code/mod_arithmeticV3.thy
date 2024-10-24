lemma mod_arithmetic:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(c * a) mod m = (c * b) mod m"
proof -
  have "a = b + m * (a div m)" 
    using assms by auto
  have "c * a = c * (b + m * (a div m))"
    by (metis \<open>a = b + m * (a div m)\<close> add.commute)
  then have "c * a = c * b + c * m * (a div m)"
    by (simp add: algebra_simps)
  then have "(c * a) mod m = (c * b + c * m * (a div m)) mod m"
    by simp
  also have "... = (c * b) mod m" 
  proof (cases "c = 0")
    case True
    then have "c * b = 0" by simp
    thus ?thesis by auto
  next
    case False
    then have "c * m * (a div m) mod m = 0" 
      using mod_mult_div_eq[of "c * m" "m"] by simp
    also have "c * b mod m = (c * b + 0) mod m" by simp
    finally show ?thesis by presburger
  qed
  finally show ?thesis by simp
qed