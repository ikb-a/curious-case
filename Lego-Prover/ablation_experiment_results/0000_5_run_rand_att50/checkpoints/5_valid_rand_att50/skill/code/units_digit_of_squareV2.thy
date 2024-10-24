lemma units_digit_of_square:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "(k^2) mod 10 = 0"
proof -
  obtain m where "k = 10 * m" using assms by auto
  then have "k^2 = (10 * m)^2" by simp
  hence "k^2 = 100 * m^2" by (simp add: power2_eq_square)
  then have "(k^2) mod 10 = (100 * m^2) mod 10" by simp
  also have "... = 0" by (simp add: mod_mult_self2)
  finally show ?thesis by simp
qed