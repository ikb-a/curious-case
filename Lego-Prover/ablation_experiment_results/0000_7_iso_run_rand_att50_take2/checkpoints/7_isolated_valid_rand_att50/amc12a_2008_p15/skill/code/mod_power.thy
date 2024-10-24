lemma mod_power:
  fixes a :: nat and n :: nat and m :: nat
  assumes "m > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof (induction n)
  case 0
  then show ?case by auto
next
  case (Suc n)
  then show ?case
  proof -
    have "a^Suc n = a * (a^n)" by simp
    then have "(a^Suc n) mod m = (a * (a^n)) mod m" by simp
    also have "... = ((a mod m) * (a^n mod m)) mod m" using assms by (metis mod_mult_eq)
    also have "... = ((a mod m) * ((a mod m)^n mod m)) mod m" by (metis Suc \<open>a * a ^ n mod m = a mod m * (a ^ n mod m) mod m\<close> \<open>a ^ Suc n = a * a ^ n\<close> \<open>a ^ Suc n mod m = a * a ^ n mod m\<close> mod_mult_cong mod_mult_eq)
    also have "... = ((a mod m)^(n + 1)) mod m" by (metis Suc_eq_plus1 calculation power_mod)
    finally show ?case by simp
  qed
qed