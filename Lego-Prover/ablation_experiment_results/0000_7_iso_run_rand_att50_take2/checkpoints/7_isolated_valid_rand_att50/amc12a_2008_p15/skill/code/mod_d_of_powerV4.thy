lemma mod_d_of_power:
  fixes a n d :: nat
  assumes "a > 0" and "d > 0"
  shows "a^n mod d = (a mod d)^n mod d"
proof -
  have "a^n mod d = (a mod d)^n mod d"
  proof (induction n)
    case 0
    then show ?case by simp
  next
    case (Suc n)
    then show ?case 
      by (metis power_mod)
  qed
  thus ?thesis by simp
qed