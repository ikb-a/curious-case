lemma power_mod_generalized:
  fixes a b m :: nat
  assumes "m > 0" "a > 0" "b > 0"
  shows "a^b mod m = ((a mod m)^b) mod m"
proof (induction b)
  case 0
  then show ?case by simp
next
  case (Suc b)
  then show ?case by (metis power_mod)
qed