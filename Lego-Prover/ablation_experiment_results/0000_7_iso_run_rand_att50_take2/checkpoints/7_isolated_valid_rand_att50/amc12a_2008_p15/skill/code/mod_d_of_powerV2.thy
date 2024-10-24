lemma mod_d_of_power:
  fixes a d n :: nat
  assumes "a > 0" and "d > 0"
  shows "a^n mod d = (a mod d)^n mod d"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "a^(Suc n) mod d = (a * a^n) mod d"
    by (simp)
  also have "... = ((a mod d) * (a^n mod d)) mod d"
    by (metis mod_mult_eq)
  also have "... = ((a mod d) * ((a mod d)^n mod d)) mod d"
    by (metis Suc \<open>a * a ^ n mod d = a mod d * (a ^ n mod d) mod d\<close> \<open>a ^ Suc n mod d = a * a ^ n mod d\<close> calculation mod_mod_trivial mod_mult_cong mod_mult_eq)
  finally show ?case by (metis power_mod)
qed