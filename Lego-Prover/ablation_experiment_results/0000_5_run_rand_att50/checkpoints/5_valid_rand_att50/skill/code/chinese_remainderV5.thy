lemma chinese_remainder:
  fixes a b c m n :: nat
  assumes "m > 0" "n > 0" "a mod m = b" "a mod n = c"
  shows "\<exists>k. a = b + m * k \<and> a mod n = c"
proof -
  let ?k = "a div m"
  have "a = ?k * m + (a mod m)"
    by (metis add.commute add.right_neutral div_mult_mod_eq)
  then have "a = ?k * m + b" using assms(3) by simp
  hence "a mod n = (b + m * ?k) mod n" 
    by (auto simp: field_simps)
  have "a mod n = c" by (simp add: assms(4))
  thus "\<exists>k. a = b + m * k \<and> a mod n = c" 
    by (metis \<open>a = a div m * m + b\<close> add.commute add_leE assms(3) div_less le_iff_add le_refl less_numeral_extra(3) mod_add_self1 mod_eq_nat1E mod_mod_trivial mult.commute mult_eq_0_iff mult_zero_right verit_comp_simplify1(3) zero_less_iff_neq_zero)
qed