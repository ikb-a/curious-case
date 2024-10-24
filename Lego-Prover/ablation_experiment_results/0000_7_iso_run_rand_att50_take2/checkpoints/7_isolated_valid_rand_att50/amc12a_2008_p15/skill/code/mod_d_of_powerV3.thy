lemma mod_d_of_power:
  fixes a n d :: nat
  assumes "a > 0" "d > 0"
  shows "a^n mod d = (a mod d)^n mod d"
proof -
  have "a^n mod d = (a mod d)^n mod d" for n :: nat
  proof (induction n)
    case 0
    then show ?case by simp
  next
    case (Suc n)
    then show ?case
    proof -
      have "a^(Suc n) = a * a^n" by simp
      hence "a^(Suc n) mod d = (a * a^n) mod d" by simp
      also have "... = (a mod d * (a^n mod d)) mod d" using assms by (metis mod_mult_eq)
      finally show ?thesis using `a^n mod d = (a mod d)^n mod d` by (metis power_mod)
    qed
  qed
  then show ?thesis by simp
qed