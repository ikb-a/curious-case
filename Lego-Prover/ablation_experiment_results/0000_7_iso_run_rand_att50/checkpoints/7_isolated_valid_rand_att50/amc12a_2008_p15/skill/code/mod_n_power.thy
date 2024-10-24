lemma mod_n_power:
  fixes a n k :: nat
  assumes "n > 0" "k > 0"
  shows "(a ^ k) mod n = (a mod n) ^ k mod n"
proof (induction k)
  case 0
  then show ?case by simp
next
  case (Suc k)
  then have "a ^ Suc k = a * (a ^ k)" by simp
  also have "(a * (a ^ k)) mod n = (a mod n * (a ^ k mod n)) mod n" using assms by (metis mod_mult_eq)
  also have "... = (a mod n * (a mod n) ^ k) mod n" by (metis Suc \<open>a * a ^ k mod n = a mod n * (a ^ k mod n) mod n\<close> \<open>a ^ Suc k = a * a ^ k\<close> mod_mult_cong mod_mult_left_eq power_Suc)
  also have "... = ((a mod n) ^ Suc k) mod n" by (simp add: mod_n_mult)
  finally show ?case by simp
qed