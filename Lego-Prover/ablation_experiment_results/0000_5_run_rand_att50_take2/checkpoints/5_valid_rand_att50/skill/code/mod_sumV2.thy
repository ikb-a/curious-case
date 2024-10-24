lemma mod_sum:
  fixes x y :: nat
  shows "(x mod 10 + y mod 10) mod 10 = (x + y) mod 10"
proof -
  have "x = (x mod 10) + 10 * (x div 10)" by auto
  have "y = (y mod 10) + 10 * (y div 10)" by auto
  then have "x + y = ((x mod 10) + (y mod 10)) + 10 * ((x div 10) + (y div 10))" 
    using `x = (x mod 10) + 10 * (x div 10)` by (simp add: field_simps)
  then have "(x + y) mod 10 = (((x mod 10) + (y mod 10)) + 10 * ((x div 10) + (y div 10))) mod 10" 
    by presburger
  also have "... = (x mod 10 + y mod 10) mod 10" 
    using mod_add_eq by presburger
  finally show ?thesis by auto
qed