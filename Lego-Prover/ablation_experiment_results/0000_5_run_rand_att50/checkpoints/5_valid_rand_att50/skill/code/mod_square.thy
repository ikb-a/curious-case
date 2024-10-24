lemma mod_square:
  fixes a :: nat and m :: nat
  assumes "m > 0"
  shows "(a^2) mod m = ((a mod m)^2) mod m"
proof -
  have "a^2 = a * a" by (metis power2_eq_square)
  then have "(a^2) mod m = (a * a) mod m" by simp
  also have "... = (a mod m * a mod m) mod m" using assms 
    by (metis mod_mod_trivial mod_mult_left_eq)
  also have "... = (a mod m)^2 mod m" by (metis calculation power_mod)
  finally show ?thesis by simp
qed