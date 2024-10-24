lemma mod_k_of_power:
  fixes a n k :: nat
  assumes "a > 0" "k > 0"
  shows "a^n mod k = (a mod k)^n mod k"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "a^(Suc n) mod k = (a * a^n) mod k"
    by simp
  also have "... = ((a mod k) * (a^n mod k)) mod k"
    by (metis Suc.IH mod_mult_eq mod_eq_0_iff_dvd)
  also have "... = ((a mod k) * ((a mod k)^n mod k)) mod k"
    by (metis Suc.IH)
  thus ?case by (metis power_mod)
qed