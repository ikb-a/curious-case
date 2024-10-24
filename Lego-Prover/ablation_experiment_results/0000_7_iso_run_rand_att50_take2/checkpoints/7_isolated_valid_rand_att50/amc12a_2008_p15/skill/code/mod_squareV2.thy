lemma mod_square:
  fixes a m x :: nat
  assumes "a mod m = x"
  shows "(a^2) mod m = (x^2) mod m"
proof -
  have "a mod m = x" by (simp add: assms)
  then have "(a^2) mod m = (a mod m)^2 mod m" by (metis power_mod)
  also have "... = x^2 mod m" by (simp add: assms)
  finally show ?thesis by simp
qed