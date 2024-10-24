lemma power_mod_general:
  fixes a b m :: nat
  assumes "m > 0" "b > 0"
  shows "a^b mod m = ((a mod m)^b) mod m"
proof (induction b)
  case 0
  then show ?case by simp
next
  case (Suc b)
  then show ?case 
  proof -
    have "a^(Suc b) mod m = (a * (a^b)) mod m"
      by simp
    also have "... = (a * ((a mod m)^b) mod m) mod m"
      using Suc.IH by (metis calculation mod_mod_trivial mod_mult_cong)
    also have "... = ((a mod m) * ((a mod m)^b) mod m) mod m"
      by (metis mod_mod_trivial mod_mult_left_eq)
    also have "... = ((a mod m)^(Suc b)) mod m"
      by simp
    finally show ?thesis by simp
  qed
qed