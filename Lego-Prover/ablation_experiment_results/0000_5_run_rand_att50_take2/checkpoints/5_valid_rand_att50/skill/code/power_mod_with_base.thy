lemma power_mod_with_base:
  fixes a b c m :: nat
  assumes "m > 0"
  shows "((a + c)^b) mod m = (((a mod m) + (c mod m))^b) mod m"
proof (induction b)
  case 0
  then show ?case by simp
next
  case (Suc b)
  have "((a + c)^(Suc b)) mod m = ((a + c)*(a + c)^b) mod m" by simp
  also have "... = ((a + c) mod m * (a + c)^b mod m) mod m"
    by (metis mod_mod_trivial mod_mult_left_eq)
  also have "... = (((a mod m) + (c mod m)) * ((a + c)^b mod m)) mod m"
    using Suc.IH by (metis \<open>(a + c) * (a + c) ^ b mod m = (a + c) mod m * (a + c) ^ b mod m mod m\<close> \<open>(a + c) ^ Suc b mod m = (a + c) * (a + c) ^ b mod m\<close> mod_add_eq mod_mult_cong mod_mult_right_eq mult.commute power_commutes)
  also have "... = (((a mod m) + (c mod m)) * (((a mod m) + (c mod m))^b) mod m) mod m"
    by (smt (verit) Suc \<open>(a + c) * (a + c) ^ b mod m = (a + c) mod m * (a + c) ^ b mod m mod m\<close> \<open>(a + c) mod m * (a + c) ^ b mod m mod m = (a mod m + c mod m) * ((a + c) ^ b mod m) mod m\<close> assms mod_add_eq mod_less mod_less_divisor mod_mult_eq)
  finally show ?case by simp
qed