lemma units_digit_of_sum:
  fixes x y :: nat
  shows "(x mod 10 + y mod 10) mod 10 = (x + y) mod 10"
proof -
  have "x = (x mod 10) + 10 * (x div 10)" 
    by (simp add: nat_eq_iff)
  have "y = (y mod 10) + 10 * (y div 10)" 
    by (simp add: nat_eq_iff)
  then have "x + y = ((x mod 10) + (y mod 10)) + 10 * ((x div 10) + (y div 10))" 
    by simp
  then have "(x + y) mod 10 = (((x mod 10) + (y mod 10)) + 10 * ((x div 10) + (y div 10))) mod 10" 
    by presburger
  also have "... = ((x mod 10) + (y mod 10)) mod 10" 
    by presburger
  thus ?thesis 
    by presburger
qed