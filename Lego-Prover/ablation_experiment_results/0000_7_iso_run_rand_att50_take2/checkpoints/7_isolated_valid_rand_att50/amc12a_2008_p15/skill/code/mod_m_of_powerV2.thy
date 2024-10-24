lemma mod_m_of_power:
  fixes a :: nat and n :: nat and m :: nat
  assumes "a > 0" and "m > 1"
  shows "a^n mod m = (a mod m)^n mod m"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "(a mod m)^Suc n = (a mod m) * ((a mod m)^n)"
    by simp
  also have "... mod m = ((a mod m) * (a^n mod m)) mod m"
    by (metis calculation mod_mult_eq power_Suc power_mod)
  finally show ?case using Suc.IH by (metis power_mod)
qed