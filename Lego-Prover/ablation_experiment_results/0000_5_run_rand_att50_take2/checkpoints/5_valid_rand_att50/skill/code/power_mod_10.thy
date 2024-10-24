lemma power_mod_10:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "a^n mod 10 = (a mod 10)^n mod 10"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then show ?case
  proof -
    have "a^(Suc n) = a^n * a" by simp
    hence "a^(Suc n) mod 10 = (a^n * a) mod 10" by presburger
    also have "... = (a^n mod 10 * a mod 10) mod 10" by (metis mod_mod_trivial mod_mult_left_eq)
    also have "... = ((a mod 10)^n mod 10 * (a mod 10)) mod 10" using Suc.IH by (metis \<open>a ^ Suc n mod 10 = a ^ n * a mod 10\<close> \<open>a ^ n * a mod 10 = a ^ n mod 10 * a mod 10 mod 10\<close> mod_mod_trivial mod_mult_cong mod_mult_eq mult.commute power_Suc power_mod)
    finally show ?case by (metis power_mod)
  qed
qed