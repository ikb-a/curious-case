lemma mod_of_power_congruent_to_mod_of_base:
  fixes a n :: nat
  assumes "a > 0" "n > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof (cases "n = 1")
  case True
  then show ?thesis
    by simp
next
  case False
  then have "n \<ge> 2"
    using assms
    by simp
  show ?thesis
  proof (induction n)
    case 0
    then show ?case
      by simp
  next
    case (Suc n)
    assume IH: "(a^n) mod m = (a mod m)^n mod m"
    have "(a^(Suc n)) mod m = (a * (a^n)) mod m"
      by simp
    also have "... = (a * ((a mod m)^n mod m)) mod m"
      using IH
      by (metis mod_mult_right_eq)
    also have "... = ((a mod m) * (a mod m)^n) mod m"
      by (metis mod_mult_left_eq mod_mult_right_eq)
    also have "... = ((a mod m)^(Suc n)) mod m"
      by simp
    finally show ?case
      by simp
  qed
qed