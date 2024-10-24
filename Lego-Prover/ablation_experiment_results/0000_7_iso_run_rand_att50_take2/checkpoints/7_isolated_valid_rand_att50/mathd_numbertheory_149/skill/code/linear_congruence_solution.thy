lemma linear_congruence_solution:
  fixes a b c :: nat
  assumes "c > 0" and "a mod c = b"
  shows "\<exists>k. a = b + k * c"
proof -
  obtain k where "a = b + k * c" 
    using assms(2) by (metis mod_div_mult_eq)
  thus "\<exists>k. a = b + k * c" by auto
qed