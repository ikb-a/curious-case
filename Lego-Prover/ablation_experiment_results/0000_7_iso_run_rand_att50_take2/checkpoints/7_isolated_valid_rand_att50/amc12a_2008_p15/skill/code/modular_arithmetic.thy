lemma modular_arithmetic:
  fixes a b :: nat
  assumes "a mod 10 = 0" "b mod 10 = 6"
  shows "(a + b) mod 10 = 6"
proof -
  have "a = (a div 10) * 10" using assms(1) by auto 
  have "b = (b div 10) * 10 + 6" using assms(2) by presburger
  then have "a + b = (a div 10) * 10 + ((b div 10) * 10 + 6)" 
    by (metis \<open>a = a div 10 * 10\<close>)
  then have "a + b = ((a div 10) + (b div 10)) * 10 + 6" by (simp add: algebra_simps)
  then have "(a + b) mod 10 = (((a div 10) + (b div 10)) * 10 + 6) mod 10" 
    by simp
  also have "... = 6 mod 10" 
    by presburger
  finally show ?thesis by simp
qed