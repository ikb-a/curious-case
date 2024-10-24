lemma units_digit_square:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "(k^2) mod 10 = 0"
proof -
  have "k mod 10 = 0" using assms by simp
  then have "k = 10 * (k div 10)" by auto
  then have "k^2 = (10 * (k div 10))^2" by simp
  also have "... = 100 * (k div 10)^2" by (simp add: power2_eq_square)
  finally have "k^2 = 100 * (k div 10)^2" .
  then have "k^2 mod 10 = (100 * (k div 10)^2) mod 10" by simp
  also have "... = 0" by (simp add: mod_0) 
  thus "(k^2) mod 10 = 0" by (metis assms mod_mult_cong mod_mult_self2_is_0 mod_self power2_eq_square)
qed