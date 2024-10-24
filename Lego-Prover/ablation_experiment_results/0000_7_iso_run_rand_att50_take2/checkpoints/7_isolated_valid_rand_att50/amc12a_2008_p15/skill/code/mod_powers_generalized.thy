lemma mod_powers_generalized:
  fixes a :: nat and n :: nat and p :: nat
  assumes "a > 0" and "p > 0"
  shows "a^n mod p = (a mod p)^n mod p"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "a^(Suc n) mod p = (a * a^n) mod p"
    by simp
  also have "... = ((a mod p) * (a^n mod p)) mod p"
    by (metis mod_mult_eq)
  also have "... = ((a mod p) * ((a mod p)^n mod p)) mod p"
    using Suc.IH by simp
  also have "... = (a mod p)^(Suc n) mod p"
    by (metis calculation power_mod)
  finally show ?case .
qed