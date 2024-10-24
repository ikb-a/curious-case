lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt(a) * sqrt(b) = sqrt(a * b)"
proof -
  have "sqrt (a) * sqrt (b) * sqrt (a) * sqrt (b) = (sqrt (a) * sqrt (b))^2"
    by (simp add: power2_eq_square)
  also have "... = sqrt (a) * sqrt (a) * sqrt (b) * sqrt (b)"
    by (metis mult.assoc mult.commute mult.left_commute power2_eq_square real_sqrt_mult real_sqrt_power)
  also have "... = a * b"
    by (metis \<open>(sqrt a * sqrt b)\<^sup>2 = sqrt a * sqrt a * sqrt b * sqrt b\<close> \<open>sqrt a * sqrt b * sqrt a * sqrt b = (sqrt a * sqrt b)\<^sup>2\<close> ab_semigroup_mult_class.mult_ac(1) abs_mult abs_of_nonneg assms(1) assms(2) mult.commute mult.left_commute real_sqrt_abs2 real_sqrt_mult real_sqrt_mult_self)
  finally have "sqrt (a) * sqrt (b) * sqrt (a) * sqrt (b) = a * b" .
  then have "sqrt (a) * sqrt (b) = sqrt (a * b)"
    by (metis real_sqrt_mult)
  thus ?thesis
    by (simp add: real_sqrt_mult)
qed