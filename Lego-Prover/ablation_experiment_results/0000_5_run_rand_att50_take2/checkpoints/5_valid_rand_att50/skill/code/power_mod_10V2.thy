lemma power_mod_10:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "a ^ n mod 10 = (a mod 10) ^ n mod 10"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then have "a ^ Suc n = a * (a ^ n)" by simp
  also have "... mod 10 = (a * (a ^ n mod 10)) mod 10" by (metis mod_mult_right_eq)
  also have "... = (a mod 10 * (a ^ n mod 10)) mod 10" using `a > 0` by (metis mod_mult_left_eq)
  also have "... = ((a mod 10) * ((a mod 10) ^ n mod 10)) mod 10" using Suc.IH by simp
  finally show ?case by (metis power_mod)
qed