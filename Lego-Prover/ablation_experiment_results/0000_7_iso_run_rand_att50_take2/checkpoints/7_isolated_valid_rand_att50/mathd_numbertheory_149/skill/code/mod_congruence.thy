lemma mod_congruence:
  fixes a b m c :: nat
  assumes "a mod m = b"
  shows "((c * a) mod m) = ((c * b) mod m)"
proof -
  have "c * a = c * (b + m * (a div m))"
    using assms by auto
  then have "c * a mod m = (c * b + c * m * (a div m)) mod m"
    by (auto simp: field_simps)
  also have "... = (c * b) mod m"
    using mod_mult_right_eq by (metis add_cancel_left_right mod_add_cong mod_mult_self1_is_0 mult.assoc mult.commute mult_delta_right)
  finally show ?thesis by simp
qed