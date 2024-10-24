lemma power_mod:
  fixes a :: nat and b :: nat and m :: nat
  assumes "m > 0"
  shows "a^b mod m = ((a mod m)^b) mod m"
proof (induction b)
  case 0
  then show ?case by simp
next
  case (Suc b)
  then show ?case by (metis mod_mult_left_eq power_mod)
qed