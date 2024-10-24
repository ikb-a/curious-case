lemma combine_mod:
  fixes x y :: nat
  assumes "x mod 10 = a" "y mod 10 = b"
  shows "(x + y) mod 10 = (a + b) mod 10"
proof -
  have "x = (x div 10) * 10 + (x mod 10)" by (metis div_mult_mod_eq)
  moreover have "y = (y div 10) * 10 + (y mod 10)" by (metis div_mult_mod_eq)
  ultimately have "x + y = ((x div 10) + (y div 10)) * 10 + ((x mod 10) + (y mod 10))"
    by auto
  have "((x mod 10) + (y mod 10)) mod 10 = (a + b) mod 10"
    using assms by simp
  then have "(x + y) mod 10 = (((x div 10) + (y div 10)) * 10 + ((x mod 10) + (y mod 10))) mod 10"
    by (auto simp: field_simps)
  also have "... = (((x div 10) + (y div 10)) * 10) mod 10 + ((x mod 10) + (y mod 10)) mod 10"
    by (metis add.commute add_cancel_right_right calculation mod_add_eq mod_mult_self2_is_0)
  also have "... = 0 + (a + b) mod 10"
    by (metis \<open>(x mod 10 + y mod 10) mod 10 = (a + b) mod 10\<close> add_0 add_cancel_left_left mod_mult_self2_is_0)
  finally show ?thesis by simp
qed