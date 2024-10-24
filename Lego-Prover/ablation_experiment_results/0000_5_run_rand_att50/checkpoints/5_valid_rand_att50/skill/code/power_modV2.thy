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
  then have "(a^(Suc n)) mod m = (a^n * a) mod m" by presburger
  also have "... = ((a^n mod m) * (a mod m)) mod m" 
    using assms by (metis mod_mult_eq)
  also have "... = ((a mod m)^n * (a mod m)) mod m"
    by (metis Suc \<open>a ^ Suc n = a ^ n * a\<close> \<open>a ^ Suc n mod m = a ^ n * a mod m\<close> mod_mult_cong mod_mult_eq mod_mult_right_eq mult.commute)
  finally show ?case by (auto simp: field_simps)
qed