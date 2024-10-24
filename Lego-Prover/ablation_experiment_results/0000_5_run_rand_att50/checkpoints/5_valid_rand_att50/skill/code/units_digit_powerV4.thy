lemma units_digit_power:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "((a mod 10) ^ n) mod 10 = (a ^ n) mod 10"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then show ?case
  proof -
    have "a ^ Suc n = a * (a ^ n)" by simp
    then have "(a ^ Suc n) mod 10 = (a * (a ^ n)) mod 10" by simp
    also have "... = ((a mod 10) * (a ^ n)) mod 10"
      by (metis assms mod_mult_left_eq)
    also have "... = ((a mod 10) * ((a ^ n) mod 10)) mod 10"
      by (metis mod_mult_right_eq)
    also have "... = (a mod 10) ^ Suc n mod 10"
      by (metis calculation power_mod)
    finally show ?case by simp
  qed
qed