lemma power_mod_10:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "a^n mod 10 = (a mod 10)^n mod 10"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then have "a^(Suc n) = a * a^n" by simp
  then have "a^(Suc n) mod 10 = (a * a^n) mod 10" by simp
  also have "... = (a mod 10 * a^n mod 10) mod 10" 
    by (metis mod_mod_trivial mod_mult_left_eq)
  also have "... = (a mod 10) * (a^n mod 10) mod 10" by (metis \<open>a * a ^ n mod 10 = a mod 10 * a ^ n mod 10 mod 10\<close> mod_mult_eq)
  finally show ?case using Suc.IH by (metis power_mod)
qed