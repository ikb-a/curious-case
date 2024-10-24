lemma mod_power_cyclic:
  fixes a n m :: nat
  assumes "a > 0" "m > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "a^(Suc n) mod m = (a * a^n) mod m" by simp
  also have "... = (a mod m * a^n mod m) mod m" using Suc.IH by (metis mod_mod_trivial mod_mult_left_eq)
  also have "... = (a mod m)^(Suc n) mod m" by (metis calculation power_mod)
  finally show ?case .
qed