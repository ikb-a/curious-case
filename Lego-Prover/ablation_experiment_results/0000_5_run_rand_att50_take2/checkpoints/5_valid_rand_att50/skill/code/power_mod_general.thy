lemma power_mod_general:
  fixes a :: nat and b :: nat and m :: nat
  assumes "m > 0"
  shows "a^b mod m = ((a mod m)^b) mod m"
proof (induction b)
  case 0
  then show ?case by simp
next
  case (Suc b)
  then show ?case 
  proof -
    have "a^(Suc b) = a * a^b" by simp
    then have "a^(Suc b) mod m = (a * a^b) mod m"
      by simp
    also have "... = (a mod m * a^b mod m) mod m" using assms by (metis mod_mod_trivial mod_mult_left_eq)
    also have "... = ((a mod m) * ((a mod m)^b) mod m) mod m" by (metis Suc \<open>a * a ^ b mod m = a mod m * a ^ b mod m mod m\<close> \<open>a ^ Suc b = a * a ^ b\<close> \<open>a ^ Suc b mod m = a * a ^ b mod m\<close> mod_mod_trivial mod_mult_cong mod_mult_left_eq)
    finally show ?case by simp
  qed
qed