lemma logarithm_properties_for_x:
  fixes a b c x :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0" and "x > 0"
  shows "log a (x * b / c) = log a x + log a (b / c)"
proof -
  have "log a (x * b / c) = log a (x) + log a (b / c)" using assms
    by (smt (verit) divide_pos_pos log_add_eq_powr powr_log_cancel times_divide_eq_right)
  also have "log a (b / c) = log a b - log a c" using logarithm_properties_generalized[of a b c] assms
    by simp
  finally show ?thesis by (metis \<open>log a (x * b / c) = log a x + log a (b / c)\<close>)
qed