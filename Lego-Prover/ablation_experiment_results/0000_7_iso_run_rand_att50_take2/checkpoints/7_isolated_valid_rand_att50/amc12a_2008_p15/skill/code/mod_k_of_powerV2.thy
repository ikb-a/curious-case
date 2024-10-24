lemma mod_k_of_power:
  fixes a n k :: nat
  assumes "a > 0" and "k > 0"
  shows "a^n mod k = (a mod k)^n mod k"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then show ?case 
  proof -
    have "a^(Suc n) mod k = (a * a^n) mod k"
      by simp
    also have "... = ((a mod k) * (a^n mod k)) mod k" 
      using `a > 0` by (metis mod_mult_eq mod_eq_0_iff_dvd)
    also have "... = ((a mod k) * ((a mod k)^n mod k)) mod k" 
      using `k > 0` by (metis Suc \<open>a * a ^ n mod k = a mod k * (a ^ n mod k) mod k\<close> \<open>a ^ Suc n mod k = a * a ^ n mod k\<close> calculation mod_mod_trivial mod_mult_cong mod_mult_eq)
    finally show ?case by (metis power_mod)
  qed
qed