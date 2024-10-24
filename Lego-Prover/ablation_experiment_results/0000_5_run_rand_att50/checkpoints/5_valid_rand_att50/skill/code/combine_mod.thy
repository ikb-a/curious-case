lemma combine_mod:
  fixes a b :: nat
  assumes "a mod 10 = x" "b mod 10 = y"
  shows "(a + b) mod 10 = (x + y) mod 10"
proof -
  have "a = x + 10 * (a div 10)" using assms(1) by auto
  have "b = y + 10 * (b div 10)" using assms(2) by auto
  then have "a + b = (x + 10 * (a div 10)) + (y + 10 * (b div 10))" 
    by (metis \<open>a = x + 10 * (a div 10)\<close>)
  then have "a + b = (x + y) + 10 * ((a div 10) + (b div 10))" 
    by (simp add: algebra_simps)
  then have "(a + b) mod 10 = ((x + y) + 10 * ((a div 10) + (b div 10))) mod 10" 
    by presburger
  also have "... = (x + y) mod 10" 
    by presburger
  finally show ?thesis by simp
qed