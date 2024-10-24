lemma mod_power_property:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "a^(Suc n) = a * a^n" by simp
  then have "(a^(Suc n)) mod m = (a * a^n) mod m" by simp
  also have "... = ((a mod m) * (a^n mod m)) mod m" by (metis mod_mult_eq)
  also have "... = ((a mod m) * ((a mod m)^n mod m)) mod m" using Suc.IH by simp
  also have "... = (a mod m)^(Suc n) mod m" by (metis calculation power_mod)
  finally show ?case by simp
qed