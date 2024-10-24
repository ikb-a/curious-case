lemma power_mod_10:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "a ^ n mod 10 = (a mod 10) ^ n mod 10"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then have "a ^ Suc n = a * a ^ n" by simp
  also have "... mod 10 = (a * a ^ n) mod 10" by simp
  finally have "a ^ Suc n mod 10 = (a mod 10 * a ^ n mod 10) mod 10" 
    by (metis mod_mod_trivial mod_mult_left_eq power_Suc)
  also have "... = ((a mod 10) * (a ^ n mod 10)) mod 10" by (metis \<open>a ^ Suc n = a * a ^ n\<close> calculation mod_mult_eq)
  finally have "a ^ Suc n mod 10 = ((a mod 10) * (a ^ n mod 10)) mod 10" .
  have "a ^ n mod 10 = (a mod 10) ^ n mod 10" by (rule Suc.IH)
  then show ?case using `a ^ Suc n mod 10 = ((a mod 10) * (a ^ n mod 10)) mod 10` by (metis power_mod)
qed