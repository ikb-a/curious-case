lemma units_digit_square:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "(k^2) mod 10 = 0"
proof -
  have "k = 10 * (k div 10)" using assms by auto  
  then have "k^2 = (10 * (k div 10))^2" by simp
  also have "... = 100 * (k div 10)^2" by (simp add: power2_eq_square)
  finally have "k^2 mod 10 = (100 * (k div 10)^2) mod 10" by simp
  then show "(k^2) mod 10 = 0" by auto
qed