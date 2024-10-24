lemma mod_m_of_power:
  fixes a n m :: nat
  assumes "a > 0" and "m > 0"
  shows "a^n mod m = (a mod m)^n mod m"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then show ?case
  proof -
    have "a^(Suc n) mod m = (a * a^n) mod m" by simp
    also have "... = (a mod m * a^n mod m) mod m" using assms by (metis mod_mod_trivial mod_mult_left_eq)
    also have "... = ((a mod m) * (a^n mod m)) mod m" by (metis \<open>a * a ^ n mod m = a mod m * a ^ n mod m mod m\<close> mod_mult_eq)
    also have "... = ((a mod m) * ((a mod m)^n mod m)) mod m" using Suc.IH by simp
    finally show ?case by (metis power_mod)
  qed
qed