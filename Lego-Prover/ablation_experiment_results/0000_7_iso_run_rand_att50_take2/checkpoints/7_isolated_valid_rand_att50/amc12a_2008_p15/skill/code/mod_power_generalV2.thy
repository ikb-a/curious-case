lemma mod_power_general:
  fixes a :: nat and n :: nat and d :: nat
  assumes "a > 0" and "d > 0"
  shows "a^n mod d = (a mod d)^n mod d"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  have "a^(Suc n) = a * a^n" by simp
  then show ?case 
  proof -
    have "a^(Suc n) mod d = (a * a^n) mod d"
      by simp
    also have "... = ((a mod d) * (a^n mod d)) mod d"
      by (metis mod_mult_eq)
    also have "... = ((a mod d) * ((a mod d)^n)) mod d"
      using Suc.IH by (metis \<open>a * a ^ n mod d = a mod d * (a ^ n mod d) mod d\<close> \<open>a ^ Suc n = a * a ^ n\<close> \<open>a ^ Suc n mod d = a * a ^ n mod d\<close> mod_mult_cong mod_mult_left_eq)
    finally show ?case by auto
  qed
qed