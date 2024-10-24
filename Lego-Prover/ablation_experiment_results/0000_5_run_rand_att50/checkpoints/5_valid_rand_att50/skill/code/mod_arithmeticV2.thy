lemma mod_arithmetic:
  fixes a b c :: nat
  assumes "a mod b = c"
  shows "\<exists>k. a = b * k + c"
proof -
  obtain k where "a = b * k + c + (a div b) * b" 
    using assms by fastforce
  then show ?thesis 
    by (metis assms div_mult_mod_eq mult.commute)
qed