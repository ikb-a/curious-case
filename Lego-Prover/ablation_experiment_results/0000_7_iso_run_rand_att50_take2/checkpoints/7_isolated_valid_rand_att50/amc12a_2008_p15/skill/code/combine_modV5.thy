lemma combine_mod:
  fixes x y :: nat
  assumes "x mod 10 = a" "y mod 10 = b"
  shows "(x + y) mod 10 = (a + b) mod 10"
proof -
  have "x = (x div 10) * 10 + (x mod 10)" by (metis div_mult_mod_eq)
  moreover have "y = (y div 10) * 10 + (y mod 10)" by (metis div_mult_mod_eq)
  ultimately have "x + y = ((x div 10) + (y div 10)) * 10 + ((x mod 10) + (y mod 10))"
    by auto
  have "(x + y) mod 10 = (((x div 10) + (y div 10)) * 10 + (x mod 10 + y mod 10)) mod 10"
    by (auto simp: field_simps)
  also have "... = ((x mod 10) + (y mod 10)) mod 10"
    by (metis mod_mult_self3)
  moreover have "x mod 10 = a" using assms(1) by simp
  moreover have "y mod 10 = b" using assms(2) by simp
  ultimately have "(x + y) mod 10 = (a + b) mod 10"
    by simp
  thus ?thesis by simp
qed