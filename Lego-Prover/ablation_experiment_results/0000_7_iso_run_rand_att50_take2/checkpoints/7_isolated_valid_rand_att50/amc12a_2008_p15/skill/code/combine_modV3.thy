lemma combine_mod:
  fixes x y :: nat
  assumes "x mod 10 = a" "y mod 10 = b"
  shows "(x + y) mod 10 = (a + b) mod 10"
proof -
  have "x = (x div 10) * 10 + (x mod 10)" by (metis div_mult_mod_eq)
  moreover have "y = (y div 10) * 10 + (y mod 10)" by (metis div_mult_mod_eq)
  ultimately have "x + y = ((x div 10) + (y div 10)) * 10 + ((x mod 10) + (y mod 10))" 
    by auto
  then have "(x + y) mod 10 = (((x mod 10) + (y mod 10)) mod 10)" 
    using mod_add_eq by metis
  also have "... = (a + b) mod 10" 
    using assms by auto
  finally show ?thesis by simp
qed