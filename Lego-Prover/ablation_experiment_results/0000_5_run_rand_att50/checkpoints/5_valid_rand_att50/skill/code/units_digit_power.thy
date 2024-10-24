lemma units_digit_power:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "((a mod 10) ^ n) mod 10 = (a ^ n) mod 10"
proof (induction n)
  case 0
  then show ?case by (simp add: assms)
next
  case (Suc n)
  then show ?case
  proof -
    have "a^Suc n = a * (a^n)" by simp
    then have "a^Suc n mod 10 = (a mod 10) * (a^n mod 10) mod 10"
      using `a > 0` by (metis mod_mult_eq power_Suc)
    also have "... = (a mod 10) * ((a mod 10) ^ n) mod 10" 
      using Suc.IH by (metis calculation mod_mod_trivial mod_mult_cong mod_mult_left_eq power_Suc power_mod)
    finally have "a^Suc n mod 10 = (a mod 10) * ((a mod 10) ^ n) mod 10" .
    have "((a mod 10) ^ Suc n) mod 10 = ((a mod 10) * ((a mod 10) ^ n)) mod 10" by simp
    thus ?case using `a > 0` by (metis power_mod)
  qed
qed