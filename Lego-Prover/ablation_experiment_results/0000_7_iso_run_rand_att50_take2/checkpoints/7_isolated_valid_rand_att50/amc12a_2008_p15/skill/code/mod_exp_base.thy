lemma mod_exp_base:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "(a^n) mod 10 = (a mod 10)^n mod 10"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "a^(Suc n) = a * a^n" by simp
  then have "a^(Suc n) mod 10 = (a * a^n) mod 10"
    by simp
  also have "... = (a mod 10) * (a^n mod 10) mod 10" 
    using assms by (metis mod_mult_eq)
  also have "... = (a mod 10) * ((a mod 10)^n mod 10) mod 10" 
    using Suc.IH by auto
  also have "... = ((a mod 10)^(Suc n)) mod 10" 
    by (metis calculation power_mod)
  finally show ?case by simp
qed