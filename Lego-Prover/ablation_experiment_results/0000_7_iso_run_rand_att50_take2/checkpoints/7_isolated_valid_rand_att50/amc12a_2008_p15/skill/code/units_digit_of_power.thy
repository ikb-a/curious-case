lemma units_digit_of_power:
  fixes a :: nat
  assumes "a > 0"
  shows "a^n mod 10 = (a mod 10)^n mod 10"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then show ?case
  proof -
    have "a^(Suc n) = a * a^n" by simp
    then have "a^(Suc n) mod 10 = (a * a^n) mod 10"
      by auto
    also have "... = (a mod 10 * (a^n mod 10)) mod 10"
      by (metis mod_mult_eq)
    finally show ?case by (metis power_mod)
  qed
qed