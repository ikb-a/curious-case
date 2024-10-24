lemma log_natural_power_property:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "n > 0"
  shows "ln (a^n) = n * ln a"
proof -
  have "ln (a^n) = n * ln a" 
    by (metis assms(1) ln_realpow)
  thus ?thesis by simp
qed