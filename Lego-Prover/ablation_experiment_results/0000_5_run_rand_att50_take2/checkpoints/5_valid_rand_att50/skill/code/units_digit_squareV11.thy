lemma units_digit_square:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "(k^2) mod 10 = 0"
proof -
  obtain n where "k = 10 * n" using assms by auto
  then have "k^2 = (10 * n)^2" by simp
  also have "... = 100 * n^2" by (simp add: power2_eq_square)
  finally have "k^2 = 100 * n^2" .
  then show "(k^2) mod 10 = 0" 
    using mod_mult_self2[of 100 "n^2"] by simp
qed