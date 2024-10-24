lemma mod_power_general:
  fixes a n m :: nat
  assumes "a > 0" "m > 0"
  shows "a^n mod m = (a mod m)^n mod m"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "a^(Suc n) mod m = (a * a^n) mod m"
    by (simp add: power_Suc)
  also have "... = ((a mod m) * (a^n mod m)) mod m"
    by (metis mod_mult_eq)
  also have "... = ((a mod m) * ((a mod m)^n mod m)) mod m"
    by (metis Suc \<open>a * a ^ n mod m = a mod m * (a ^ n mod m) mod m\<close> \<open>a ^ Suc n mod m = a * a ^ n mod m\<close> calculation mod_mod_trivial mod_mult_cong mod_mult_eq)
  also have "... = (a mod m)^(Suc n) mod m"
    by (metis calculation power_mod)
  finally show ?case .
qed