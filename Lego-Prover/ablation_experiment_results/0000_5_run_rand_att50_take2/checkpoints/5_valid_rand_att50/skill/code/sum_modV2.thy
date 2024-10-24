lemma sum_mod:
  fixes a b :: nat
  shows "(a mod 10 + b mod 10) mod 10 = (a + b) mod 10"
proof -
  have "a mod 10 = a - (a div 10) * 10" by presburger
  then have "a = (a mod 10) + (a div 10) * 10" by (simp add: algebra_simps)
  have "b mod 10 = b - (b div 10) * 10" by presburger
  then have "b = (b mod 10) + (b div 10) * 10" by (simp add: algebra_simps)
  then have "a + b = ((a mod 10) + (b mod 10)) + ((a div 10) + (b div 10)) * 10" 
    using `a = (a mod 10) + (a div 10) * 10` by (simp add: algebra_simps)
  then have "(a + b) mod 10 = (((a mod 10) + (b mod 10)) + ((a div 10) + (b div 10)) * 10) mod 10" 
    by (simp add: algebra_simps)
  also have "... = ((a mod 10) + (b mod 10)) mod 10" 
    by presburger
  finally show ?thesis by auto
qed