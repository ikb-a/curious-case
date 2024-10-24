lemma mod_pow:
  fixes a n k :: nat
  assumes "n > 0"
  shows "(a^k) mod n = (a mod n)^k mod n"
proof (induction k)
  case 0
  then show ?case by simp
next
  case (Suc k)
  then show ?case
  proof -
    have "a ^ Suc k = a * (a ^ k)" by simp
    then have "(a ^ Suc k) mod n = (a * (a ^ k)) mod n" by simp
    also have "... = ((a mod n) * (a ^ k)) mod n"
      using assms by (metis mod_mod_trivial mod_mult_left_eq)
    also have "... = ((a mod n) * ((a ^ k) mod n)) mod n"
      by (metis mod_mult_right_eq)
    also have "... = (a mod n) ^ Suc k mod n"
      by (metis Suc calculation power_mod)
    finally show ?case by simp
  qed
qed