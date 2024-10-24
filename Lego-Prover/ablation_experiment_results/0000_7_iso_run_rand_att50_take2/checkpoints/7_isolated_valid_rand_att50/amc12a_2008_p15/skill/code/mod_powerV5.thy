lemma mod_power:
  fixes a :: nat and n :: nat and m :: nat
  assumes "m > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof (induction n)
  case 0
  then show ?case
    by simp
next
  case (Suc n)
  assume IH: "(a^n) mod m = (a mod m)^n mod m"
  have "a^(Suc n) = a * (a^n)" by simp
  thus ?case
  proof -
    have "(a^(Suc n)) mod m = (a * (a^n)) mod m" by simp
    also have "... = (a * ((a mod m)^n mod m)) mod m" using IH by (metis mod_mult_right_eq)
    also have "... = ((a mod m) * ((a mod m)^n mod m)) mod m" by (metis mod_mult_left_eq)
    also have "... = ((a mod m)^(Suc n)) mod m" by (metis calculation power_mod)
    finally show ?thesis by simp
  qed
qed