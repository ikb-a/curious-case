lemma mod_10_power:
  fixes a :: nat
  assumes "a > 0"
  shows "(a ^ n) mod 10 = (a mod 10) ^ n mod 10"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "a ^ Suc n = a * (a ^ n)" by simp
  then show ?case 
    using Suc.IH by (metis power_mod)
qed