lemma units_digit_power:
  fixes a :: nat
  fixes n :: nat
  assumes "a > 0"
  shows "((a mod 10) ^ n) mod 10 = (a ^ n) mod 10"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then have "((a mod 10) ^ n) mod 10 = (a ^ n) mod 10" by auto
  then have "((a mod 10) ^ Suc n) mod 10 = ((a mod 10) * (a mod 10) ^ n) mod 10" by simp
  also have "... = ((a mod 10) * ((a ^ n) mod 10)) mod 10" using Suc.IH by (metis mod_mult_eq power_Suc power_mod)
  also have "... = ((a mod 10) * (a ^ n) mod 10) mod 10" by (metis mod_mod_trivial mod_mult_right_eq)
  finally show ?case using `a > 0` by (metis power_mod)
qed