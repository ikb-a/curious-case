lemma basic_arithmetic_mod:
  fixes a b :: int
  assumes "m > 0"
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof -
  have "a mod m = a - (a div m) * m" by (auto simp: field_simps)
  have "b mod m = b - (b div m) * m" by (auto simp: field_simps)
  have "((a mod m) + (b mod m)) mod m = (a - (a div m) * m + b - (b div m) * m) mod m"
    by (metis diff_add_eq diff_diff_eq diff_diff_eq2 group_cancel.sub1 int_distrib(1) int_distrib(2) minus_div_mult_eq_mod minus_mult_div_eq_mod mult.commute)
  also have "... = (a + b - ((a div m) + (b div m)) * m) mod m"
    by (simp add: algebra_simps)
  finally have "((a mod m) + (b mod m)) mod m = (a + b - ((a div m) + (b div m)) * m) mod m" .
  have "(a + b) mod m = (a + b - (a div m + b div m) * m) mod m"
    by (smt (verit) \<open>(a mod m + b mod m) mod m = (a + b - (a div m + b div m) * m) mod m\<close> mod_add_eq)
  thus ?thesis
    using `((a mod m) + (b mod m)) mod m = (a + b - ((a div m) + (b div m)) * m) mod m`
    by auto
qed