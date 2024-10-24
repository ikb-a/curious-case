lemma mod_square:
  fixes a m x :: nat
  assumes "a mod m = x"
  shows "(a^2) mod m = (x^2) mod m"
proof -
  have "(a^2) mod m = ((a mod m) ^ 2) mod m" using assms by (metis power_mod)
  also have "... = (x^2) mod m" using assms by auto
  finally show ?thesis by auto
qed