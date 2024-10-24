lemma mod_k_of_power:
  fixes a n k :: nat
  assumes "a > 0" "k > 0"
  shows "a^n mod k = (a mod k)^n mod k"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then obtain r where "a^n mod k = (a mod k)^n mod k" by auto
  then have "a^Suc n mod k = (a^n * a) mod k" by (auto simp: field_simps)
  also have "... = ((a mod k)^n mod k * (a mod k)) mod k" 
    using `a^n mod k = (a mod k)^n mod k` by (metis calculation mod_mult_eq mult.commute power_Suc)
  also have "... = ((a mod k)^(Suc n)) mod k" by (metis calculation power_mod)
  finally show ?case by simp
qed