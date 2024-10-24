lemma integer_divisibility:
  fixes a b :: int
  assumes "b > 0" "a mod b = 0"
  shows "\<exists>k. a = k * b"
proof -
  obtain k where "a = k * b + (a mod b)" 
    by (metis add_cancel_left_right assms(2) mult.commute zmod_eq_0D)
  then have "a mod b = 0" by (metis assms(2))
  hence "a = k * b" using assms(2) by (metis \<open>a = k * b + a mod b\<close> add.commute add.left_commute add_cancel_right_right add_left_imp_eq add_right_imp_eq mult.commute)
  thus ?thesis by (metis assms(2) mod_eq_0_iff_dvd)
qed