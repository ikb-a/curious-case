lemma power_mod:
  fixes a :: nat and n :: nat and m :: nat
  assumes "m > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then have "a^(Suc n) = a^n * a" by simp
  also have "(a^(Suc n)) mod m = (a^n * a) mod m" by (auto simp: field_simps)
  finally show ?case 
  proof -
    have "(a^n * a) mod m = ((a^n mod m) * (a mod m)) mod m"
      using assms by (metis mod_mult_eq)
    thus ?thesis using Suc.IH by (metis power_mod)
  qed
qed