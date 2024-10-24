lemma power_mod_general:
  fixes a :: nat and b :: nat and m :: nat
  assumes "m > 0"
  shows "a^b mod m = ((a mod m)^b) mod m"
proof (induction b)
  case 0
  then show ?case by simp
next
  case (Suc b)
  then have "a^(Suc b) = a * a^b" by simp
  then show ?case 
    by (metis power_mod)
qed