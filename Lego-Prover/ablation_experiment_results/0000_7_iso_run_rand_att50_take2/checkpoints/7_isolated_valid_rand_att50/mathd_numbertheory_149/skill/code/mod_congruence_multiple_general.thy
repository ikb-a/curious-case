lemma mod_congruence_multiple_general:
  fixes a b c m :: nat
  assumes "a mod m = b mod m" "c > 0"
  shows "(c * a) mod m = (c * b) mod m" 
proof -
  have "c * a mod m = (c * (a mod m) + c * (b mod m) - c * (b mod m)) mod m"
    using assms by (metis add_implies_diff mod_mult_right_eq)
  thus ?thesis using assms by (metis mod_mult_cong mult.commute)
qed