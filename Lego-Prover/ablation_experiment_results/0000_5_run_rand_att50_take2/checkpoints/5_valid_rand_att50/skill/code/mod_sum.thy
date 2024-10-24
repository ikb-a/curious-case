lemma mod_sum:
  fixes x y :: nat
  shows "(x mod 10 + y mod 10) mod 10 = (x + y) mod 10"
proof -
  have "x mod 10 = x - (x div 10) * 10" by presburger
  hence "x = (x mod 10) + (x div 10) * 10" by (simp add: algebra_simps)
  have "y mod 10 = y - (y div 10) * 10" by presburger
  hence "y = (y mod 10) + (y div 10) * 10" by (simp add: algebra_simps)
  then have "x + y = ((x mod 10) + (y mod 10)) + ((x div 10) + (y div 10)) * 10" 
    using `x = (x mod 10) + (x div 10) * 10` by (simp add: algebra_simps)
  then have "(x + y) mod 10 = (((x mod 10) + (y mod 10)) + ((x div 10) + (y div 10)) * 10) mod 10" 
    by (simp add: algebra_simps)
  also have "... = ((x mod 10) + (y mod 10)) mod 10" 
    by presburger
  thus ?thesis by presburger
qed