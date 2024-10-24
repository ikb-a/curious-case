lemma mod_add:
  fixes a b m :: nat
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof (induction a)
  case 0
  then show ?case by simp
next
  case (Suc a)
  then have "((Suc a) + b) mod m = (a + b + 1) mod m" by simp
  also have "... = ((a + b) mod m + 1) mod m"
    by presburger
  also have "... = ((a mod m) + (b mod m) + 1) mod m"
    using Suc.IH by (metis Suc_eq_plus1_left \<open>(Suc a + b) mod m = (a + b + 1) mod m\<close> \<open>(a + b + 1) mod m = ((a + b) mod m + 1) mod m\<close> add.commute add_Suc_shift group_cancel.add1 group_cancel.add2 mod_Suc mod_add_left_eq mod_add_right_eq nat_arith.suc1)
  finally show ?case by (metis mod_add_eq)
qed