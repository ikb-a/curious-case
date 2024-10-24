lemma mod_simplification_extended:
  fixes x y a k :: nat
  assumes "x mod y = a" "y > 0"
  shows "x = k * y + a \<longleftrightarrow> k = x div y"
proof -
  have "x = y * (x div y) + x mod y" by auto
  then have "x = y * (x div y) + a" using assms(1) by auto
  thus "x = k * y + a \<longleftrightarrow> k = x div y" 
    by (metis Suc_le_D \<open>x = y * (x div y) + x mod y\<close> add_0_iff assms(1) assms(2) div_mult_self3 mod_eq_self_iff_div_eq_0 mod_less_divisor mod_mult_self3 mult.commute nat.distinct(1) not_less_eq_eq verit_comp_simplify1(3))
qed