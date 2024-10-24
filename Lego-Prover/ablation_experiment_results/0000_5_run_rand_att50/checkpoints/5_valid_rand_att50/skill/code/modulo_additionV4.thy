lemma modulo_addition:
  fixes a b :: nat
  shows "(a + b) mod 10 = (a mod 10 + b mod 10) mod 10"
proof -
  have "a = (a mod 10) + 10 * (a div 10)" by auto
  have "b = (b mod 10) + 10 * (b div 10)" by auto
  then have "a + b = ((a mod 10) + (b mod 10)) + 10 * ((a div 10) + (b div 10))" 
    by (simp add: algebra_simps)
  have "(a + b) mod 10 = (((a mod 10) + (b mod 10)) + 10 * ((a div 10) + (b div 10))) mod 10" 
    by presburger
  also have "... = (a mod 10 + b mod 10) mod 10" 
  proof -
    have "10 * ((a div 10) + (b div 10)) mod 10 = 0" 
      by (simp add: mod_0)
    thus ?thesis by fastforce
  qed
  finally show ?thesis by simp
qed